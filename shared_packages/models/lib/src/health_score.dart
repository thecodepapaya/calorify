import 'package:json_annotation/json_annotation.dart';

enum HealthScore {
  @JsonValue('unhealthy')
  unhealthy,
  @JsonValue('neutral')
  neutral,
  @JsonValue('healthy')
  healthy,
  @JsonValue('unknown')
  unknown,
}
