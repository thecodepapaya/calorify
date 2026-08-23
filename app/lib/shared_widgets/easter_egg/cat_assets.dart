import 'dart:math' as math;

/// Cat asset paths. Kept as a separate enum for asset definition.
enum CatAsset {
  acrobat(
    'Acrobat',
    'assets/images/cat_acrobat.webp',
    CatVisualBounds(70, 93, 430, 392),
    90,
  ),
  curiousBlep(
    'Curious Blep',
    'assets/images/cat_curious_blep.webp',
    CatVisualBounds(38, 49, 438, 462),
  ),
  calicoWave(
    'Calico Wave',
    'assets/images/cat_calico_wave.webp',
    CatVisualBounds(100, 50, 410, 454),
  ),
  flyingSiamese(
    'Flying Siamese',
    'assets/images/cat_flying_siamese.webp',
    CatVisualBounds(70, 92, 430, 392),
    90,
  ),
  conspiracy(
    'Conspiracy Cat',
    'assets/images/cat_conspiracy.webp',
    CatVisualBounds(72, 113, 317, 475),
  ),
  springyTabby(
    'Springy Tabby',
    'assets/images/cat_springy_tabby.webp',
    CatVisualBounds(78, 28, 420, 471),
  ),
  party(
    'Party Cat',
    'assets/images/cat_party.webp',
    CatVisualBounds(134, 69, 368, 459),
  ),
  peekabooBlep(
    'Peekaboo Blep',
    'assets/images/cat_peekaboo_blep.webp',
    CatVisualBounds(41, 43, 431, 462),
  ),
  aviator(
    'Aviator Cat',
    'assets/images/cat_aviator.webp',
    CatVisualBounds(89, 96, 374, 357),
    -90,
  ),
  playfulSiamese(
    'Playful Siamese',
    'assets/images/cat_playful_siamese.webp',
    CatVisualBounds(121, 38, 403, 474),
  ),
  rockstar(
    'Rockstar Cat',
    'assets/images/cat_rockstar.webp',
    CatVisualBounds(69, 79, 464, 424),
  ),
  boo(
    'Boo Cat',
    'assets/images/cat_boo.webp',
    CatVisualBounds(112, 96, 390, 398),
  ),
  startledTabby(
    'Startled Tabby',
    'assets/images/cat_startled_tabby.webp',
    CatVisualBounds(131, 13, 387, 496),
  ),
  wavingVoid(
    'Waving Void',
    'assets/images/cat_waving_void.webp',
    CatVisualBounds(100, 51, 410, 454),
  ),
  wednesday(
    'Wednesday Cat',
    'assets/images/cat_wednesday.webp',
    CatVisualBounds(76, 61, 424, 435),
  );

  const CatAsset(
    this.displayName,
    this.path,
    this.visibleBounds, [
    this.rotationOffsetDegrees = 0,
  ]);
  final String displayName;
  final String path;
  final CatVisualBounds visibleBounds;
  final double rotationOffsetDegrees;
  Cat toCat() {
    return switch (this) {
      CatAsset.acrobat => AcrobatCat(),
      CatAsset.curiousBlep => CuriousBlepCat(),
      CatAsset.calicoWave => CalicoWaveCat(),
      CatAsset.flyingSiamese => FlyingSiameseCat(),
      CatAsset.conspiracy => ConspiracyCat(),
      CatAsset.springyTabby => SpringyTabbyCat(),
      CatAsset.party => PartyCat(),
      CatAsset.peekabooBlep => PeekabooBlepCat(),
      CatAsset.aviator => AviatorCat(),
      CatAsset.playfulSiamese => PlayfulSiameseCat(),
      CatAsset.rockstar => RockstarCat(),
      CatAsset.boo => BooCat(),
      CatAsset.startledTabby => StartledTabbyCat(),
      CatAsset.wavingVoid => WavingVoidCat(),
      CatAsset.wednesday => WednesdayCat(),
    };
  }
}

/// Animation types used by the cat easter egg (for switch / overlay).
enum CatAnimationType { peek, sidePeek, topPeek, doublePeek }

/// Edge hints for where cats can appear from. Each edge declares which
/// [CatAnimationType]s are eligible (like cats implementing animation interfaces).
sealed class Edge {
  const Edge();
  List<CatAnimationType> get eligibleAnimations;

  static const BottomEdge bottom = BottomEdge();
  static const TopEdge top = TopEdge();
  static const LeftEdge left = LeftEdge();
  static const RightEdge right = RightEdge();

  /// Returns one of [bottom], [top], [left], [right] at random.
  static Edge get auto => [bottom, top, left, right][math.Random().nextInt(4)];
}

final class BottomEdge extends Edge {
  const BottomEdge();
  @override
  List<CatAnimationType> get eligibleAnimations => [
    CatAnimationType.peek,
    CatAnimationType.doublePeek,
  ];
}

final class TopEdge extends Edge {
  const TopEdge();
  @override
  List<CatAnimationType> get eligibleAnimations => [
    CatAnimationType.topPeek,
    CatAnimationType.peek,
  ];
}

final class LeftEdge extends Edge {
  const LeftEdge();
  @override
  List<CatAnimationType> get eligibleAnimations => [
    CatAnimationType.sidePeek,
    CatAnimationType.peek,
  ];
}

final class RightEdge extends Edge {
  const RightEdge();
  @override
  List<CatAnimationType> get eligibleAnimations => [
    CatAnimationType.sidePeek,
    CatAnimationType.peek,
  ];
}

/// Shared constants for cat easter egg layout.
abstract interface class CatEasterEggConfig {
  static const double sourceAssetExtent = 500;
  static const double visibleScaleWithinExtent = 0.88;
  static const double edgePadding = 16;

  static double catExtentFor(double shortestSide) =>
      (shortestSide * 0.34).clamp(120.0, 152.0);
}

/// Measured non-transparent bounds in a square 500×500 source asset.
///
/// The assets intentionally keep generous transparent canvases. Rendering
/// against these bounds gives every cat a consistent visible size and anchor
/// without modifying the original artwork.
class CatVisualBounds {
  const CatVisualBounds(this.left, this.top, this.right, this.bottom);

  final double left;
  final double top;
  final double right;
  final double bottom;

  double get width => right - left;
  double get height => bottom - top;
  double get longestSide => math.max(width, height);
}

// --- Animation interfaces (one per animation kind). Each defines getters
// used by that animation widget. Cats implement the interfaces they support.

abstract interface class CatAnimation {
  double get horizontalBias;
}

/// Getters for the peek (from any edge) animation.
abstract interface class PeekAnimation extends CatAnimation {
  Duration get peekDuration;
  double get peekYOffset;
}

// leaping animation interface removed

// pounce animation interface removed

// wiggle & bounce animation interfaces removed

/// Getters for the double-peek animation. Reuses peek-style getters.
abstract interface class DoublePeekAnimation extends CatAnimation {
  Duration get peekDuration;
  double get peekYOffset;
}

// --- Sealed Cat hierarchy ---

/// Base for all cat types. Subclasses implement animation interfaces they support.
sealed class Cat {
  const Cat(this._asset);
  final CatAsset _asset;

  String get path => _asset.path;
  String get displayName => _asset.displayName;
  CatVisualBounds get visibleBounds => _asset.visibleBounds;
  double get rotationOffsetDegrees => _asset.rotationOffsetDegrees;

  /// Build the [Cat] for the given asset. Iterate over [CatAsset.values] and call this to get all cats.
  static Cat fromAsset(CatAsset asset) {
    return asset.toCat();
  }
}

/// All concrete cats (from [CatAsset] enum). Use for iteration.
List<Cat> get allCats => CatAsset.values.map(Cat.fromAsset).toList();

// --- Concrete cats with interface implementations ---

final class AcrobatCat extends Cat implements PeekAnimation {
  AcrobatCat() : super(CatAsset.acrobat);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1800);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 120;
}

final class CuriousBlepCat extends Cat
    implements PeekAnimation, DoublePeekAnimation {
  CuriousBlepCat() : super(CatAsset.curiousBlep);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1800);
  @override
  double get peekYOffset => -45;
  @override
  double get horizontalBias => 60;
}

final class CalicoWaveCat extends Cat implements PeekAnimation {
  CalicoWaveCat() : super(CatAsset.calicoWave);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2200);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 80;
}

final class FlyingSiameseCat extends Cat implements PeekAnimation {
  FlyingSiameseCat() : super(CatAsset.flyingSiamese);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1800);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 140;
}

final class ConspiracyCat extends Cat implements PeekAnimation {
  ConspiracyCat() : super(CatAsset.conspiracy);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 40;
}

final class SpringyTabbyCat extends Cat implements PeekAnimation {
  SpringyTabbyCat() : super(CatAsset.springyTabby);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 120;
}

final class PartyCat extends Cat implements PeekAnimation {
  PartyCat() : super(CatAsset.party);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2100);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 80;
}

final class PeekabooBlepCat extends Cat
    implements PeekAnimation, DoublePeekAnimation {
  PeekabooBlepCat() : super(CatAsset.peekabooBlep);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 40;
}

final class AviatorCat extends Cat implements PeekAnimation {
  AviatorCat() : super(CatAsset.aviator);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1800);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 120;
}

final class PlayfulSiameseCat extends Cat implements PeekAnimation {
  PlayfulSiameseCat() : super(CatAsset.playfulSiamese);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1800);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 100;
}

final class RockstarCat extends Cat implements PeekAnimation {
  RockstarCat() : super(CatAsset.rockstar);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 80;
}

final class BooCat extends Cat implements PeekAnimation, DoublePeekAnimation {
  BooCat() : super(CatAsset.boo);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1600);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 100;
}

final class StartledTabbyCat extends Cat implements PeekAnimation {
  StartledTabbyCat() : super(CatAsset.startledTabby);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 60;
}

final class WavingVoidCat extends Cat implements PeekAnimation {
  WavingVoidCat() : super(CatAsset.wavingVoid);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 80;
}

final class WednesdayCat extends Cat
    implements PeekAnimation, DoublePeekAnimation {
  WednesdayCat() : super(CatAsset.wednesday);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 60;
}

/// Runtime overrides for a single cat show (edge, position bias). Set by overlay/trigger.
class CatAnimationOverrides {
  const CatAnimationOverrides({
    this.horizontalBias,
    this.peekEdge,
    this.peekOffset,
    this.sideHint,
  });
  final double? horizontalBias;
  final Edge? peekEdge;
  final double? peekOffset;
  final Edge? sideHint;
}

/// Returns cats that support the given animation type (from [CatAsset] iteration only).
List<Cat> eligibleCatsForAnimation(CatAnimationType type) {
  switch (type) {
    case CatAnimationType.peek:
    case CatAnimationType.sidePeek:
    case CatAnimationType.topPeek:
      return allCats.whereType<PeekAnimation>().cast<Cat>().toList();

    case CatAnimationType.doublePeek:
      return allCats.whereType<DoublePeekAnimation>().cast<Cat>().toList();
  }
}

/// Whether [cat] supports [type] (implements the corresponding interface).
bool catSupportsAnimation(Cat cat, CatAnimationType type) {
  switch (type) {
    case CatAnimationType.peek:
    case CatAnimationType.sidePeek:
    case CatAnimationType.topPeek:
      return cat is PeekAnimation;
    case CatAnimationType.doublePeek:
      return cat is DoublePeekAnimation;
    // all enum cases handled above
  }
}
