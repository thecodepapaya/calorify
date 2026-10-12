// This is a generated file - do not edit.
//
// Generated from protos/calorify/app_banner.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bannerPriorityDescriptor instead')
const BannerPriority$json = {
  '1': 'BannerPriority',
  '2': [
    {'1': 'LOW', '2': 0},
    {'1': 'MEDIUM', '2': 1},
    {'1': 'HIGH', '2': 2},
  ],
};

/// Descriptor for `BannerPriority`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bannerPriorityDescriptor = $convert.base64Decode(
    'Cg5CYW5uZXJQcmlvcml0eRIHCgNMT1cQABIKCgZNRURJVU0QARIICgRISUdIEAI=');

@$core.Deprecated('Use bannerDescriptor instead')
const Banner$json = {
  '1': 'Banner',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {
      '1': 'messages_by_locale',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.calorify.Banner.MessagesByLocaleEntry',
      '10': 'messagesByLocale'
    },
    {
      '1': 'priority',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.calorify.BannerPriority',
      '9': 0,
      '10': 'priority',
      '17': true
    },
    {'1': 'dismissible', '3': 4, '4': 1, '5': 8, '10': 'dismissible'},
    {
      '1': 'link_url',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'linkUrl',
      '17': true
    },
    {
      '1': 'minimum_build_inclusive',
      '3': 6,
      '4': 1,
      '5': 3,
      '9': 2,
      '10': 'minimumBuildInclusive',
      '17': true
    },
    {
      '1': 'maximum_build_exclusive',
      '3': 7,
      '4': 1,
      '5': 3,
      '9': 3,
      '10': 'maximumBuildExclusive',
      '17': true
    },
    {
      '1': 'created_at',
      '3': 8,
      '4': 1,
      '5': 3,
      '9': 4,
      '10': 'createdAt',
      '17': true
    },
  ],
  '3': [Banner_MessagesByLocaleEntry$json],
  '8': [
    {'1': '_priority'},
    {'1': '_link_url'},
    {'1': '_minimum_build_inclusive'},
    {'1': '_maximum_build_exclusive'},
    {'1': '_created_at'},
  ],
};

@$core.Deprecated('Use bannerDescriptor instead')
const Banner_MessagesByLocaleEntry$json = {
  '1': 'MessagesByLocaleEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Banner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bannerDescriptor = $convert.base64Decode(
    'CgZCYW5uZXISGAoHZW5hYmxlZBgBIAEoCFIHZW5hYmxlZBJUChJtZXNzYWdlc19ieV9sb2NhbG'
    'UYAiADKAsyJi5jYWxvcmlmeS5CYW5uZXIuTWVzc2FnZXNCeUxvY2FsZUVudHJ5UhBtZXNzYWdl'
    'c0J5TG9jYWxlEjkKCHByaW9yaXR5GAMgASgOMhguY2Fsb3JpZnkuQmFubmVyUHJpb3JpdHlIAF'
    'IIcHJpb3JpdHmIAQESIAoLZGlzbWlzc2libGUYBCABKAhSC2Rpc21pc3NpYmxlEh4KCGxpbmtf'
    'dXJsGAUgASgJSAFSB2xpbmtVcmyIAQESOwoXbWluaW11bV9idWlsZF9pbmNsdXNpdmUYBiABKA'
    'NIAlIVbWluaW11bUJ1aWxkSW5jbHVzaXZliAEBEjsKF21heGltdW1fYnVpbGRfZXhjbHVzaXZl'
    'GAcgASgDSANSFW1heGltdW1CdWlsZEV4Y2x1c2l2ZYgBARIiCgpjcmVhdGVkX2F0GAggASgDSA'
    'RSCWNyZWF0ZWRBdIgBARpDChVNZXNzYWdlc0J5TG9jYWxlRW50cnkSEAoDa2V5GAEgASgJUgNr'
    'ZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUILCglfcHJpb3JpdHlCCwoJX2xpbmtfdXJsQh'
    'oKGF9taW5pbXVtX2J1aWxkX2luY2x1c2l2ZUIaChhfbWF4aW11bV9idWlsZF9leGNsdXNpdmVC'
    'DQoLX2NyZWF0ZWRfYXQ=');
