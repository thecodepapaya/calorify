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
ROOT_DIR=$(change_to_git_root)

PROTO_DIR="${ROOT_DIR}/protos"
DART_OUT="${ROOT_DIR}/shared_packages/models/lib/src/proto"
PY_OUT="${ROOT_DIR}/backend/app/protos"
TS_OUT="${ROOT_DIR}/backend/src/protos"

PROTO_FILES=(
  "${PROTO_DIR}/calorify/models.proto"
)

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
  print_success "protoc found"
}

check_protoc_gen_dart() {
  print_step "2" "Checking protoc-gen-dart"
  
  # Ensure pub-cache bin is in PATH
  if [[ ":$PATH:" != *":${HOME}/.pub-cache/bin:"* ]]; then
    export PATH="${PATH}:${HOME}/.pub-cache/bin"
  fi
  
  if ! command -v protoc-gen-dart >/dev/null 2>&1; then
    print_warning "protoc-gen-dart not found, attempting to install..."
    if command -v dart >/dev/null 2>&1; then
      print_info "Activating protoc_plugin via dart pub global"
      if dart pub global activate protoc_plugin >/dev/null 2>&1; then
        export PATH="${PATH}:${HOME}/.pub-cache/bin"
        print_success "protoc_plugin activated"
      else
        print_error "Failed to activate protoc_plugin"
        exit 1
      fi
    else
      print_error "dart is required to install protoc-gen-dart"
      exit 1
    fi
  fi
  
  if ! command -v protoc-gen-dart >/dev/null 2>&1; then
    print_error "protoc-gen-dart is required for Dart code generation."
    print_info "Try: dart pub global activate protoc_plugin"
    exit 1
  fi
  
  # Clean up stale snapshots that might cause "Invalid SDK hash" errors
  # Snapshots are version-specific and can become invalid after Dart SDK updates
  local snapshot_dir="${HOME}/.pub-cache/global_packages/protoc_plugin/bin"
  if [ -d "${snapshot_dir}" ]; then
    local dart_version=$(dart --version 2>&1 | grep -oE '[0-9]+\.[0-9]+\.[0-9]+' | head -1)
    local current_snapshot="${snapshot_dir}/protoc_plugin.dart-${dart_version}.snapshot"
    
    # Check if we have a snapshot for the current Dart version
    if [ ! -f "${current_snapshot}" ]; then
      # Remove any stale snapshots
      local snapshot_count=$(find "${snapshot_dir}" -name "*.snapshot" 2>/dev/null | wc -l | tr -d ' ')
      if [ "${snapshot_count}" -gt 0 ]; then
        print_info "Removing stale snapshots (Dart version: ${dart_version})"
        find "${snapshot_dir}" -name "*.snapshot" -delete 2>/dev/null
      fi
      
      # Trigger snapshot generation by running the plugin wrapper
      # This will generate the snapshot for the current Dart version
      print_info "Generating snapshot for Dart ${dart_version}..."
      # Use a simple test to trigger snapshot generation without hanging
      echo "" | protoc-gen-dart --help >/dev/null 2>&1 || true
    fi
  fi
  
  print_success "protoc-gen-dart found"
}

check_protoc_gen_ts() {
  print_step "2.5" "Checking ts-proto"
  
  # Check if ts-proto is installed in backend/node_modules
  local ts_proto_path="${ROOT_DIR}/backend/node_modules/.bin/protoc-gen-ts_proto"
  
  if [ ! -f "${ts_proto_path}" ]; then
    print_warning "ts-proto not found, attempting to install..."
    if command -v npm >/dev/null 2>&1; then
      print_info "Installing ts-proto via npm"
      cd "${ROOT_DIR}/backend" || exit 1
      if npm install ts-proto --save-dev >/dev/null 2>&1; then
        print_success "ts-proto installed"
      else
        print_error "Failed to install ts-proto"
        exit 1
      fi
      cd "${ROOT_DIR}" || exit 1
    else
      print_error "npm is required to install ts-proto"
      print_info "Run: cd backend && npm install ts-proto --save-dev"
      exit 1
    fi
  fi
  
  if [ ! -f "${ts_proto_path}" ]; then
    print_error "ts-proto is required for TypeScript code generation."
    print_info "Run: cd backend && npm install ts-proto --save-dev"
    exit 1
  fi
  
  print_success "ts-proto found"
}

prepare_output_directories() {
  print_step "3" "Preparing output directories"
  mkdir -p "${DART_OUT}" "${PY_OUT}" "${TS_OUT}"
  print_success "Output directories ready"
  print_item "Dart: ${DART_OUT}"
  print_item "Python: ${PY_OUT}"
  print_item "TypeScript: ${TS_OUT}"
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
  print_step "4" "Verifying proto files"
  local missing_files=()
  
  for proto_file in "${PROTO_FILES[@]}"; do
    if [ ! -f "${proto_file}" ]; then
      missing_files+=("${proto_file}")
    else
      print_item "$(basename "${proto_file}")"
    fi
  done
  
  if [ ${#missing_files[@]} -gt 0 ]; then
    print_error "Missing proto files:"
    for file in "${missing_files[@]}"; do
      print_subitem "${file}"
    done
    exit 1
  fi
  print_success "All proto files found"
}

generate_dart_code() {
  print_step "5" "Generating Dart code"
  build_include_flags
  
  if [ ${#INCLUDE_FLAGS[@]} -gt 0 ]; then
    print_info "Using ${#INCLUDE_FLAGS[@]} include path(s)"
  fi
  
  # Run protoc and filter out dependency resolution messages that appear in stdout
  # when the snapshot is being regenerated
  local protoc_output=$(protoc "${INCLUDE_FLAGS[@]}" --dart_out="${DART_OUT}" "${PROTO_FILES[@]}" 2>&1)
  local protoc_exit=$?
  
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

generate_python_code() {
  print_step "6" "Generating Python code"
  build_include_flags
  
  if protoc "${INCLUDE_FLAGS[@]}" --python_out="${PY_OUT}" "${PROTO_FILES[@]}" 2>&1; then
    print_success "Python code generated"
  else
    print_error "Failed to generate Python code"
    exit 1
  fi
}

create_python_init() {
  print_step "7" "Creating Python __init__.py"
  touch "${PY_OUT}/__init__.py"
  print_success "Python package initialized"
}

generate_typescript_code() {
  print_step "8" "Generating TypeScript code"
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
    --ts_proto_out="${TS_OUT}" \
    --ts_proto_opt="${ts_proto_opts}" \
    "${PROTO_FILES[@]}" 2>&1; then
    print_success "TypeScript code generated"
  else
    print_error "Failed to generate TypeScript code"
    exit 1
  fi
}

# ============================================================================
# Main Execution
# ============================================================================

main() {
  print_header "Protobuf Code Generation"
  
  check_protoc
  check_protoc_gen_dart
  check_protoc_gen_ts
  prepare_output_directories
  verify_proto_files
  generate_dart_code
  generate_python_code
  create_python_init
  generate_typescript_code
  
  print_separator
  print_summary_all_success "Protobuf generation complete!"
  print_info "Generated files:"
  print_item "Dart: ${DART_OUT}"
  print_item "Python: ${PY_OUT}"
  print_item "TypeScript: ${TS_OUT}"
}

main "$@"
