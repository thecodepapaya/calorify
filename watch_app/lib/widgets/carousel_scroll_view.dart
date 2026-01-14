import 'package:flutter/material.dart';

/// A scrollable widget that applies a carousel effect where items in the center
/// are full size and items closer to the edges are scaled down.
class CarouselScrollView extends StatefulWidget {
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;
  final ScrollPhysics? physics;
  final double minScale;
  final double scaleRange;

  const CarouselScrollView({
    super.key,
    required this.children,
    this.padding,
    this.physics,
    this.minScale = 0.88,
    this.scaleRange = 0.12,
  });

  @override
  State<CarouselScrollView> createState() => _CarouselScrollViewState();
}

class _CarouselScrollViewState extends State<CarouselScrollView> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
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
          itemCount: widget.children.length,
          itemBuilder: (context, index) {
            return _CarouselItem(
              index: index,
              scrollOffset: _scrollOffset,
              viewportHeight: viewportHeight,
              minScale: widget.minScale,
              scaleRange: widget.scaleRange,
              child: widget.children[index],
            );
          },
        );
      },
    );
  }
}

class _CarouselItem extends StatefulWidget {
  final int index;
  final double scrollOffset;
  final double viewportHeight;
  final double minScale;
  final double scaleRange;
  final Widget child;

  const _CarouselItem({
    required this.index,
    required this.scrollOffset,
    required this.viewportHeight,
    required this.minScale,
    required this.scaleRange,
    required this.child,
  });

  @override
  State<_CarouselItem> createState() => _CarouselItemState();
}

class _CarouselItemState extends State<_CarouselItem> {
  final GlobalKey _key = GlobalKey();
  double _itemHeight = 0.0;
  bool _hasMeasured = false;

  @override
  void initState() {
    super.initState();
    // Measure item height after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _measureItem();
    });
  }

  void _measureItem() {
    if (_hasMeasured) return;
    
    final RenderBox? renderBox =
        _key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null && renderBox.hasSize) {
      setState(() {
        _itemHeight = renderBox.size.height;
        _hasMeasured = true;
      });
    }
  }

  double _calculateScale() {
    if (!_hasMeasured || _itemHeight == 0) {
      // Use estimated height until measured
      return widget.minScale;
    }

    // Calculate the top position of this item
    // We need to estimate based on previous items
    // For simplicity, assume all items have similar height
    double itemTop = 0.0;
    
    // Add padding top
    if (widget.child is Padding) {
      final padding = widget.child as Padding;
      if (padding.padding is EdgeInsets) {
        itemTop = (padding.padding as EdgeInsets).top;
      }
    }
    
    // Estimate position based on index and average item height
    // This is approximate but will work for most cases
    final estimatedItemHeight = _itemHeight > 0 ? _itemHeight : 180.0;
    itemTop += widget.index * estimatedItemHeight;
    
    // Calculate the center of this item
    final itemCenter = itemTop + (_itemHeight / 2);
    
    // Calculate the viewport center
    final viewportCenter = widget.scrollOffset + (widget.viewportHeight / 2);
    
    // Calculate distance from viewport center
    final distance = (itemCenter - viewportCenter).abs();
    
    // Normalize distance based on viewport height
    // Items at the center have distance 0, items at edges have distance ~viewportHeight/2
    final maxDistance = widget.viewportHeight / 2;
    final normalizedDistance = (distance / maxDistance).clamp(0.0, 1.0);
    
    // Calculate scale: center items = 1.0, edge items = minScale
    // Use a smooth curve for better visual effect
    final scale = 1.0 - (normalizedDistance * widget.scaleRange);
    
    return scale.clamp(widget.minScale, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    // Measure on each build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _measureItem();
    });

    final scale = _calculateScale();
    final opacity = 0.75 + (scale - widget.minScale) / widget.scaleRange * 0.25;

    return Transform.scale(
      scale: scale,
      alignment: Alignment.center,
      child: Opacity(
        opacity: opacity,
        child: Container(
          key: _key,
          child: widget.child,
        ),
      ),
    );
  }
}
