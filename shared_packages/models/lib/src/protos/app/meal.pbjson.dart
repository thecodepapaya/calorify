// This is a generated file - do not edit.
//
// Generated from protos/app/meal.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loggedMealDescriptor instead')
const LoggedMeal$json = {
  '1': 'LoggedMeal',
  '2': [
    {'1': 'client_id', '3': 1, '4': 1, '5': 5, '10': 'clientId'},
    {'1': 'meal', '3': 2, '4': 1, '5': 11, '6': '.meal.Meal', '10': 'meal'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 9, '10': 'createdAt'},
    {
      '1': 'metadata',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.calorify.MealMetadata',
      '9': 0,
      '10': 'metadata',
      '17': true
    },
  ],
  '8': [
    {'1': '_metadata'},
  ],
};

/// Descriptor for `LoggedMeal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loggedMealDescriptor = $convert.base64Decode(
    'CgpMb2dnZWRNZWFsEhsKCWNsaWVudF9pZBgBIAEoBVIIY2xpZW50SWQSHgoEbWVhbBgCIAEoCz'
    'IKLm1lYWwuTWVhbFIEbWVhbBIdCgpjcmVhdGVkX2F0GAMgASgJUgljcmVhdGVkQXQSNwoIbWV0'
    'YWRhdGEYBCABKAsyFi5jYWxvcmlmeS5NZWFsTWV0YWRhdGFIAFIIbWV0YWRhdGGIAQFCCwoJX2'
    '1ldGFkYXRh');

@$core.Deprecated('Use favoriteMealDescriptor instead')
const FavoriteMeal$json = {
  '1': 'FavoriteMeal',
  '2': [
    {'1': 'client_id', '3': 1, '4': 1, '5': 5, '10': 'clientId'},
    {
      '1': 'logged_meal',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.app.LoggedMeal',
      '10': 'loggedMeal'
    },
    {'1': 'favorite_at', '3': 3, '4': 1, '5': 9, '10': 'favoriteAt'},
    {'1': 'last_used_at', '3': 4, '4': 1, '5': 9, '10': 'lastUsedAt'},
  ],
};

/// Descriptor for `FavoriteMeal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List favoriteMealDescriptor = $convert.base64Decode(
    'CgxGYXZvcml0ZU1lYWwSGwoJY2xpZW50X2lkGAEgASgFUghjbGllbnRJZBIwCgtsb2dnZWRfbW'
    'VhbBgCIAEoCzIPLmFwcC5Mb2dnZWRNZWFsUgpsb2dnZWRNZWFsEh8KC2Zhdm9yaXRlX2F0GAMg'
    'ASgJUgpmYXZvcml0ZUF0EiAKDGxhc3RfdXNlZF9hdBgEIAEoCVIKbGFzdFVzZWRBdA==');
