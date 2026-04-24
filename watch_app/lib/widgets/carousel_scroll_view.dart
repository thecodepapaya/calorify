import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// A scrollable widget that applies a subtle carousel effect — items near the
/// edges of the viewport are scaled down slightly, making the centre item feel
/// prominent on a round watch face.
///
/// Performance notes:
/// - A single [ValueNotifier] propagates scroll offsets; individual items use
///   [ValueListenableBuilder] so only their [Transform]/[Opacity] wrappers
///   rebuild on each scroll frame — not the full list.
/// - Actual item positions are resolved via [RenderAbstractViewport] after
///   the first frame, so the scale calculation is always accurate.
class CarouselScrollView extends StatefulWidget {
  const CarouselScrollView({
    super.key,
    required this.children,
    this.padding,
    this.physics,
    this.minScale = 0.90,
    this.scaleRange = 0.10,
  }) : itemBuilder = null,
       itemCount = null;

  const CarouselScrollView.builder({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.padding,
    this.physics,
    this.minScale = 0.90,
    this.scaleRange = 0.10,
  }) : children = null;

  final List<Widget>? children;
  final IndexedWidgetBuilder? itemBuilder;
  final int? itemCount;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;

  /// Scale applied to items at the viewport edges (0 < minScale < 1).
  final double minScale;

  /// How much scale is added moving from edge to centre.
  final double scaleRange;

  int get _effectiveItemCount => itemCount ?? children!.length;

  Widget _buildItem(BuildContext context, int index) {
    final builder = itemBuilder;
    if (builder != null) return builder(context, index);
    return children![index];
  }

  @override
  State<CarouselScrollView> createState() => _CarouselScrollViewState();
}

class _CarouselScrollViewState extends State<CarouselScrollView> {
  final _scrollController = ScrollController();
  final _scrollOffsetNotifier = ValueNotifier<double>(0.0);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    _scrollOffsetNotifier.value = _scrollController.offset;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _scrollOffsetNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final viewportHeight = constraints.maxHeight;
        return ListView.builder(
          controller: _scrollController,
          physics: widget.physics ?? const BouncingScrollPhysics(),
          padding: widget.padding,
          itemCount: widget._effectiveItemCount,
          itemBuilder:
              (context, index) => _CarouselItem(
                scrollOffsetNotifier: _scrollOffsetNotifier,
                viewportHeight: viewportHeight,
                minScale: widget.minScale,
                scaleRange: widget.scaleRange,
                child: widget._buildItem(context, index),
              ),
        );
      },
    );
  }
}

class _CarouselItem extends StatefulWidget {
  const _CarouselItem({
    required this.scrollOffsetNotifier,
    required this.viewportHeight,
    required this.minScale,
    required this.scaleRange,
    required this.child,
  });

  final ValueNotifier<double> scrollOffsetNotifier;
  final double viewportHeight;
  final double minScale;
  final double scaleRange;
  final Widget child;

  @override
  State<_CarouselItem> createState() => _CarouselItemState();
}

class _CarouselItemState extends State<_CarouselItem> {
  double? _itemTop;
  double _itemHeight = 0;
  final _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _measureOnce());
  }

  void _measureOnce() {
    if (_itemTop != null) return;
    final box = _key.currentContext?.findRenderObject() as RenderBox?;
    if (box == null || !box.hasSize) return;
    final viewport = RenderAbstractViewport.maybeOf(box);
    if (viewport != null) {
      _itemTop = viewport.getOffsetToReveal(box, 0.0).offset;
      _itemHeight = box.size.height;
    }
  }

  double _scale(double scrollOffset) {
    final top = _itemTop;
    if (top == null || _itemHeight == 0) return widget.minScale;
    final itemCenter = top - scrollOffset + _itemHeight / 2;
    final viewportCenter = widget.viewportHeight / 2;
    final distance = (itemCenter - viewportCenter).abs();
    final maxDistance = widget.viewportHeight / 2;
    final normalised = (distance / maxDistance).clamp(0.0, 1.0);
    return (1.0 - normalised * widget.scaleRange).clamp(widget.minScale, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<double>(
      valueListenable: widget.scrollOffsetNotifier,
      builder: (context, scrollOffset, child) {
        final scale = _scale(scrollOffset);
        final opacity = (0.75 +
                (scale - widget.minScale) / widget.scaleRange * 0.25)
            .clamp(0.0, 1.0);
        return Transform.scale(
          scale: scale,
          alignment: Alignment.center,
          child: Opacity(opacity: opacity, child: child),
        );
      },
      child: Container(key: _key, child: widget.child),
    );
  }
}
