// This is a generated file - do not edit.
//
// Generated from protos/wear/wear_protocol.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Version 1 is the path + JSON protocol retained for one compatibility cycle.
/// Version 2 is the first generated, binary envelope protocol.
class WearProtocolVersion extends $pb.ProtobufEnum {
  static const WearProtocolVersion WEAR_PROTOCOL_VERSION_UNSPECIFIED =
      WearProtocolVersion._(
          0, _omitEnumNames ? '' : 'WEAR_PROTOCOL_VERSION_UNSPECIFIED');
  static const WearProtocolVersion WEAR_PROTOCOL_VERSION_LEGACY_V1 =
      WearProtocolVersion._(
          1, _omitEnumNames ? '' : 'WEAR_PROTOCOL_VERSION_LEGACY_V1');
  static const WearProtocolVersion WEAR_PROTOCOL_VERSION_V2 =
      WearProtocolVersion._(
          2, _omitEnumNames ? '' : 'WEAR_PROTOCOL_VERSION_V2');

  static const $core.List<WearProtocolVersion> values = <WearProtocolVersion>[
    WEAR_PROTOCOL_VERSION_UNSPECIFIED,
    WEAR_PROTOCOL_VERSION_LEGACY_V1,
    WEAR_PROTOCOL_VERSION_V2,
  ];

  static final $core.List<WearProtocolVersion?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WearProtocolVersion? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WearProtocolVersion._(super.value, super.name);
}

class WearOperation extends $pb.ProtobufEnum {
  static const WearOperation WEAR_OPERATION_UNSPECIFIED =
      WearOperation._(0, _omitEnumNames ? '' : 'WEAR_OPERATION_UNSPECIFIED');
  static const WearOperation WEAR_OPERATION_MEAL_LOG =
      WearOperation._(1, _omitEnumNames ? '' : 'WEAR_OPERATION_MEAL_LOG');
  static const WearOperation WEAR_OPERATION_MEAL_DELETE =
      WearOperation._(2, _omitEnumNames ? '' : 'WEAR_OPERATION_MEAL_DELETE');
  static const WearOperation WEAR_OPERATION_TODAY_MEALS =
      WearOperation._(3, _omitEnumNames ? '' : 'WEAR_OPERATION_TODAY_MEALS');
  static const WearOperation WEAR_OPERATION_CALORIE_GOAL =
      WearOperation._(4, _omitEnumNames ? '' : 'WEAR_OPERATION_CALORIE_GOAL');
  static const WearOperation WEAR_OPERATION_USER_PROFILE =
      WearOperation._(5, _omitEnumNames ? '' : 'WEAR_OPERATION_USER_PROFILE');
  static const WearOperation WEAR_OPERATION_FAVORITES =
      WearOperation._(6, _omitEnumNames ? '' : 'WEAR_OPERATION_FAVORITES');
  static const WearOperation WEAR_OPERATION_AUTH_SESSION =
      WearOperation._(7, _omitEnumNames ? '' : 'WEAR_OPERATION_AUTH_SESSION');
  static const WearOperation WEAR_OPERATION_DETECT_TEXT =
      WearOperation._(8, _omitEnumNames ? '' : 'WEAR_OPERATION_DETECT_TEXT');
  static const WearOperation WEAR_OPERATION_DATA_CHANGED =
      WearOperation._(9, _omitEnumNames ? '' : 'WEAR_OPERATION_DATA_CHANGED');

  static const $core.List<WearOperation> values = <WearOperation>[
    WEAR_OPERATION_UNSPECIFIED,
    WEAR_OPERATION_MEAL_LOG,
    WEAR_OPERATION_MEAL_DELETE,
    WEAR_OPERATION_TODAY_MEALS,
    WEAR_OPERATION_CALORIE_GOAL,
    WEAR_OPERATION_USER_PROFILE,
    WEAR_OPERATION_FAVORITES,
    WEAR_OPERATION_AUTH_SESSION,
    WEAR_OPERATION_DETECT_TEXT,
    WEAR_OPERATION_DATA_CHANGED,
  ];

  static final $core.List<WearOperation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static WearOperation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WearOperation._(super.value, super.name);
}

class WearErrorCode extends $pb.ProtobufEnum {
  static const WearErrorCode WEAR_ERROR_CODE_UNSPECIFIED =
      WearErrorCode._(0, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_UNSPECIFIED');
  static const WearErrorCode WEAR_ERROR_CODE_INVALID_VERSION = WearErrorCode._(
      1, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_INVALID_VERSION');
  static const WearErrorCode WEAR_ERROR_CODE_UNKNOWN_OPERATION =
      WearErrorCode._(
          2, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_UNKNOWN_OPERATION');
  static const WearErrorCode WEAR_ERROR_CODE_INVALID_PAYLOAD = WearErrorCode._(
      3, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_INVALID_PAYLOAD');
  static const WearErrorCode WEAR_ERROR_CODE_UNAUTHENTICATED = WearErrorCode._(
      4, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_UNAUTHENTICATED');
  static const WearErrorCode WEAR_ERROR_CODE_NOT_FOUND =
      WearErrorCode._(5, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_NOT_FOUND');
  static const WearErrorCode WEAR_ERROR_CODE_REJECTED =
      WearErrorCode._(6, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_REJECTED');
  static const WearErrorCode WEAR_ERROR_CODE_TIMEOUT =
      WearErrorCode._(7, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_TIMEOUT');
  static const WearErrorCode WEAR_ERROR_CODE_DISCONNECTED =
      WearErrorCode._(8, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_DISCONNECTED');
  static const WearErrorCode WEAR_ERROR_CODE_UNAVAILABLE =
      WearErrorCode._(9, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_UNAVAILABLE');
  static const WearErrorCode WEAR_ERROR_CODE_NETWORK =
      WearErrorCode._(10, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_NETWORK');
  static const WearErrorCode WEAR_ERROR_CODE_INTERNAL =
      WearErrorCode._(11, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_INTERNAL');
  static const WearErrorCode WEAR_ERROR_CODE_MALFORMED_RESPONSE =
      WearErrorCode._(
          12, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_MALFORMED_RESPONSE');
  static const WearErrorCode WEAR_ERROR_CODE_PLATFORM =
      WearErrorCode._(13, _omitEnumNames ? '' : 'WEAR_ERROR_CODE_PLATFORM');

  static const $core.List<WearErrorCode> values = <WearErrorCode>[
    WEAR_ERROR_CODE_UNSPECIFIED,
    WEAR_ERROR_CODE_INVALID_VERSION,
    WEAR_ERROR_CODE_UNKNOWN_OPERATION,
    WEAR_ERROR_CODE_INVALID_PAYLOAD,
    WEAR_ERROR_CODE_UNAUTHENTICATED,
    WEAR_ERROR_CODE_NOT_FOUND,
    WEAR_ERROR_CODE_REJECTED,
    WEAR_ERROR_CODE_TIMEOUT,
    WEAR_ERROR_CODE_DISCONNECTED,
    WEAR_ERROR_CODE_UNAVAILABLE,
    WEAR_ERROR_CODE_NETWORK,
    WEAR_ERROR_CODE_INTERNAL,
    WEAR_ERROR_CODE_MALFORMED_RESPONSE,
    WEAR_ERROR_CODE_PLATFORM,
  ];

  static final $core.List<WearErrorCode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 13);
  static WearErrorCode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WearErrorCode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
