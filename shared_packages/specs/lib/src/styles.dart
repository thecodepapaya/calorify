import 'package:flutter/material.dart';

/// Standard minimum vertical size for primary / secondary action buttons (reduced from 50).
const double appButtonMinHeight = 42;

/// Inline dense controls (e.g. daily goal “Set goal”).
const double appButtonCompactMinHeight = 36;

/// Filled buttons and Elevated PrimaryButton / Material elevated buttons.
const EdgeInsets appButtonFilledPadding = EdgeInsets.symmetric(
  horizontal: 24,
  vertical: 10,
);

/// Default outlined action buttons (`AppOutlinedButton`, theme defaults).
const EdgeInsets appButtonOutlinedPadding = EdgeInsets.symmetric(
  horizontal: 16,
  vertical: 10,
);

/// Full-width outlined secondary (`SecondaryButton` row).
const EdgeInsets appButtonSecondaryPadding = EdgeInsets.symmetric(
  horizontal: 24,
  vertical: 10,
);

/// Compact primary row (narrow inline field + action).
const EdgeInsets appButtonCompactPadding = EdgeInsets.symmetric(
  horizontal: 14,
  vertical: 6,
);

final globalRadius = BorderRadius.circular(12);
final buttonRadius = BorderRadius.circular(100);
final globalMargin = EdgeInsets.symmetric(horizontal: 12);
final globalSheetPadding = EdgeInsets.symmetric(horizontal: 16);
final globalInnerPadding = EdgeInsets.all(12);

// Circular watch-specific padding to avoid content being clipped in corners
final circularWatchPadding = EdgeInsets.all(16);
final circularWatchInnerPadding = EdgeInsets.all(10);
final circularWatchMargin = EdgeInsets.symmetric(horizontal: 8, vertical: 4);
