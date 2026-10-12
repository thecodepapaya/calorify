import 'package:flutter/material.dart';

/// Predictable, edge-to-edge watch list without per-item transforms.
///
/// Keeping the list native preserves stable hit targets and text contrast while
/// still allowing rotary input and the platform's normal scroll semantics.
class WatchScrollView extends StatelessWidget {
  const WatchScrollView({
    super.key,
    required this.children,
    this.padding,
    this.physics,
  }) : itemBuilder = null,
       itemCount = null;

  const WatchScrollView.builder({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.padding,
    this.physics,
  }) : children = null;

  final List<Widget>? children;
  final IndexedWidgetBuilder? itemBuilder;
  final int? itemCount;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    final builder = itemBuilder;
    if (builder != null) {
      return ListView.builder(
        padding: padding,
        physics: physics,
        itemCount: itemCount,
        itemBuilder: builder,
      );
    }
    return ListView(padding: padding, physics: physics, children: children!);
  }
}
