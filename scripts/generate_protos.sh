#!/bin/bash
set -euo pipefail

# ============================================================================
# Protobuf Code Generation Script
# ============================================================================

# Source common utilities
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/common.sh"

# ============================================================================
# Configuration
# ============================================================================

# Ensure pub-cache bin is in PATH early (needed for protoc-gen-dart)
if [[ ":$PATH:" != *":${HOME}/.pub-cache/bin:"* ]]; then
  export PATH="${PATH}:${HOME}/.pub-cache/bin"
fi

store_original_dir
change_to_git_root
ROOT_DIR="$PWD"

PROTO_DIR="${ROOT_DIR}/protos"
DART_OUT="${ROOT_DIR}/shared_packages/models/lib/src"
TS_OUT="${ROOT_DIR}/backend/src"
PROTOC_VERSION="34.1"
PROTOC_PLUGIN_VERSION="24.0.0"
TS_PROTO_VERSION="2.11.0"
STAGING_DIR=""
INSTALL_DIR=""
PRESERVE_INSTALL_DIR=false

cleanup_staging() {
  if [ -n "${STAGING_DIR}" ] && [ -d "${STAGING_DIR}" ]; then
    rm -rf -- "${STAGING_DIR}"
  fi
  if [ -n "${INSTALL_DIR}" ] && [ -d "${INSTALL_DIR}" ] && \
     [ "${PRESERVE_INSTALL_DIR}" = false ]; then
    rm -rf -- "${INSTALL_DIR}"
  fi
}

# Automatically discover all proto files
discover_proto_files() {
  print_step "3" "Discovering proto files"
  local proto_files_array=()
  
  # Find all .proto files in the PROTO_DIR
  while IFS= read -r -d '' file; do
    proto_files_array+=("${file}")
    print_item "$(basename "${file}")"
  done < <(find "${PROTO_DIR}" -name "*.proto" -type f -print0 | sort -z)
  
  if [ ${#proto_files_array[@]} -eq 0 ]; then
    print_error "No proto files found in ${PROTO_DIR}"
    exit 1
  fi
  
  # Use global variable to return array (bash limitation workaround)
  PROTO_FILES=("${proto_files_array[@]}")
  print_success "Found ${#PROTO_FILES[@]} proto file(s)"
}

# ============================================================================
# Functions
# ============================================================================

check_protoc() {
  print_step "1" "Checking protoc installation"
  if ! check_command protoc; then
    print_error "protoc is required but not found in PATH."
    print_info "Install protoc: https://grpc.io/docs/protoc-installation/"
    exit 1
  fi

  local installed_version
  installed_version=$(protoc --version | awk '{print $2}')
  if [ "${installed_version}" != "${PROTOC_VERSION}" ]; then
    print_error "Expected protoc ${PROTOC_VERSION}, found ${installed_version}."
    print_info "Install the pinned compiler used by contracts CI."
    exit 1
  fi
  print_success "protoc found"
}

check_protoc_gen_dart() {
  print_step "2" "Checking protoc-gen-dart"
  
  # Ensure pub-cache bin is in PATH
  if [[ ":$PATH:" != *":${HOME}/.pub-cache/bin:"* ]]; then
    export PATH="${PATH}:${HOME}/.pub-cache/bin"
  fi
  
  if ! command -v protoc-gen-dart >/dev/null 2>&1; then
    print_error "protoc-gen-dart is required for Dart code generation."
    print_info "Install the pinned version: dart pub global activate protoc_plugin ${PROTOC_PLUGIN_VERSION}"
    exit 1
  fi

  local installed_version
  installed_version=$(dart pub global list | awk '$1 == "protoc_plugin" { print $2; exit }')
  if [ "${installed_version}" != "${PROTOC_PLUGIN_VERSION}" ]; then
    print_error "Expected protoc_plugin ${PROTOC_PLUGIN_VERSION}, found ${installed_version:-unknown}."
    print_info "Restore the pinned plugin with: dart pub global activate protoc_plugin ${PROTOC_PLUGIN_VERSION}"
    exit 1
  fi

  print_success "protoc-gen-dart found"
}

check_protoc_gen_ts() {
  print_step "2.5" "Checking ts-proto"
  
  # Check if ts-proto is installed in backend/node_modules
  local ts_proto_path="${ROOT_DIR}/backend/node_modules/.bin/protoc-gen-ts_proto"
  
  if [ ! -f "${ts_proto_path}" ]; then
    print_error "ts-proto is required for TypeScript code generation."
    print_info "Install the lockfile-pinned dependencies: npm ci --prefix backend"
    exit 1
  fi

  local installed_version
  installed_version=$(node -p "require('${ROOT_DIR}/backend/node_modules/ts-proto/package.json').version")
  if [ "${installed_version}" != "${TS_PROTO_VERSION}" ]; then
    print_error "Expected ts-proto ${TS_PROTO_VERSION}, found ${installed_version}."
    print_info "Restore the pinned dependency with: npm ci --prefix backend"
    exit 1
  fi
  
  print_success "ts-proto found"
}

prepare_output_directories() {
  print_step "4" "Preparing output directories"
  STAGING_DIR=$(mktemp -d "${TMPDIR:-/tmp}/calorify-protos.XXXXXX")
  DART_STAGE="${STAGING_DIR}/dart"
  TS_STAGE="${STAGING_DIR}/typescript"
  mkdir -p "${DART_STAGE}" "${TS_STAGE}"
  print_success "Output directories ready"
  print_item "Staging: ${STAGING_DIR}"
}

build_include_flags() {
  local include_flags=()
  local include_dirs=(
    "${ROOT_DIR}"
    "${PROTO_DIR}"
    "/usr/local/include"
    "/opt/homebrew/include"
  )
  
  for include_dir in "${include_dirs[@]}"; do
    if [ -d "${include_dir}" ]; then
      include_flags+=("-I=${include_dir}")
    fi
  done
  
  # Use global variable to return array (bash limitation workaround)
  INCLUDE_FLAGS=("${include_flags[@]}")
}

verify_proto_files() {
  print_step "5" "Verifying proto files"
  local missing_files=()

  for proto_file in "${PROTO_FILES[@]}"; do
    if [ ! -f "${proto_file}" ]; then
      missing_files+=("${proto_file}")
    fi
  done

  if [ ${#missing_files[@]} -gt 0 ]; then
    print_error "Missing proto files:"
    for file in "${missing_files[@]}"; do
      print_subitem "${file}"
    done
    exit 1
  fi
  print_success "All proto files verified"
}

generate_dart_code() {
  print_step "6" "Generating Dart code"
  build_include_flags
  
  # Run protoc and filter out dependency resolution messages that appear in stdout
  # when the snapshot is being regenerated
  local protoc_output
  local protoc_exit=0
  protoc_output=$(protoc "${INCLUDE_FLAGS[@]}" --dart_out="${DART_STAGE}" "${PROTO_FILES[@]}" 2>&1) || protoc_exit=$?
  
  # Filter out known dependency messages that appear in the output
  local filtered_output=$(echo "${protoc_output}" | grep -v -E "^(Resolving dependencies|Downloading packages|No dependencies would change|Writing.*to text file|MSG.*Logs written)" || true)
  
  if [ ${protoc_exit} -eq 0 ]; then
    # Check if there are any real errors in the filtered output
    if echo "${filtered_output}" | grep -q "error\|Error\|ERROR\|Failed\|failed"; then
      echo "${filtered_output}" >&2
      print_error "Failed to generate Dart code"
      exit 1
    fi
    print_success "Dart code generated"
  else
    # Show filtered errors if protoc failed
    if [ -n "${filtered_output}" ]; then
      echo "${filtered_output}" >&2
    fi
    print_error "Failed to generate Dart code"
    exit 1
  fi
}

generate_typescript_code() {
  print_step "7" "Generating TypeScript code"
  build_include_flags
  
  local ts_proto_path="${ROOT_DIR}/backend/node_modules/.bin/protoc-gen-ts_proto"
  
  if [ ! -f "${ts_proto_path}" ]; then
    print_error "ts-proto plugin not found at ${ts_proto_path}"
    exit 1
  fi
  
  # ts-proto options for strict TypeScript
  local ts_proto_opts="esModuleInterop=true,outputEncodeMethods=false,outputJsonMethods=false,outputClientImpl=false,outputServices=false,useOptionals=messages,stringEnums=true,enumsAsLiterals=true"
  
  if protoc "${INCLUDE_FLAGS[@]}" \
    --plugin="protoc-gen-ts_proto=${ts_proto_path}" \
    --ts_proto_out="${TS_STAGE}" \
    --ts_proto_opt="${ts_proto_opts}" \
    "${PROTO_FILES[@]}" 2>&1; then
    print_success "TypeScript code generated"
  else
    print_error "Failed to generate TypeScript code"
    exit 1
  fi
}

install_generated_code() {
  print_step "8" "Installing generated code"

  local staged_dart="${DART_STAGE}/protos"
  local staged_typescript="${TS_STAGE}/protos"
  local target_dart="${DART_OUT}/protos"
  local target_typescript="${TS_OUT}/protos"

  if [ ! -d "${staged_dart}" ] || [ ! -d "${staged_typescript}" ]; then
    print_error "Generation did not produce all expected proto trees."
    exit 1
  fi

  # Copy all candidates onto the repository filesystem before touching tracked
  # outputs. Same-filesystem renames then make each swap atomic, while retained
  # old trees let us roll the complete install back on any error.
  INSTALL_DIR=$(mktemp -d "${ROOT_DIR}/.proto-install.XXXXXX")
  mkdir -p "${INSTALL_DIR}/new" "${INSTALL_DIR}/old" "${INSTALL_DIR}/failed"
  if ! cp -R "${staged_dart}" "${INSTALL_DIR}/new/dart" || \
     ! cp -R "${staged_typescript}" "${INSTALL_DIR}/new/typescript"; then
    print_error "Failed to stage generated outputs on the repository filesystem."
    exit 1
  fi

  local targets=("${target_dart}" "${target_typescript}")
  local candidates=(
    "${INSTALL_DIR}/new/dart"
    "${INSTALL_DIR}/new/typescript"
  )
  local backups=(
    "${INSTALL_DIR}/old/dart"
    "${INSTALL_DIR}/old/typescript"
  )
  local had_target=(0 0)
  local installed=0
  local index

  for index in 0 1; do
    if [ -e "${targets[$index]}" ]; then
      if ! mv "${targets[$index]}" "${backups[$index]}"; then
        print_error "Failed to back up generated output: ${targets[$index]}"
        rollback_generated_install "${installed}" || true
        exit 1
      fi
      had_target[$index]=1
    fi

    if ! mv "${candidates[$index]}" "${targets[$index]}"; then
      print_error "Failed to install generated output: ${targets[$index]}"
      if [ "${had_target[$index]}" -eq 1 ]; then
        if ! mv "${backups[$index]}" "${targets[$index]}"; then
          PRESERVE_INSTALL_DIR=true
          print_error "Could not restore ${targets[$index]}; recovery files remain in ${INSTALL_DIR}."
        fi
      fi
      rollback_generated_install "${installed}" || true
      exit 1
    fi
    installed=$((installed + 1))
  done

  print_success "Generated code installed"
}

rollback_generated_install() {
  local installed=$1
  local index
  local rollback_failed=0

  for ((index = installed - 1; index >= 0; index--)); do
    if [ -e "${targets[$index]}" ] && \
       ! mv "${targets[$index]}" "${INSTALL_DIR}/failed/${index}"; then
      rollback_failed=1
      continue
    fi
    if [ "${had_target[$index]}" -eq 1 ] && \
       ! mv "${backups[$index]}" "${targets[$index]}"; then
      rollback_failed=1
    fi
  done

  if [ "${rollback_failed}" -ne 0 ]; then
    PRESERVE_INSTALL_DIR=true
    print_error "Generated-output rollback was incomplete; recovery files remain in ${INSTALL_DIR}."
    return 1
  fi
  print_warning "Generated-output install failed; previous outputs were restored."
}

# ============================================================================
# Main Execution
# ============================================================================

main() {
  trap cleanup_staging EXIT
  print_header "Protobuf Code Generation"
  
  check_protoc
  check_protoc_gen_dart
  check_protoc_gen_ts
  discover_proto_files
  prepare_output_directories
  verify_proto_files
  generate_dart_code
  generate_typescript_code
  install_generated_code
  
  print_separator
  print_summary_all_success "Protobuf generation complete!"
  print_info "Generated files:"
  print_item "Dart: ${DART_OUT}"
  print_item "TypeScript: ${TS_OUT}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
