import 'dart:math' as math;

/// Cat asset paths. Kept as a separate enum for asset definition.
enum CatAsset {
  acrobatFlip('assets/images/cat_acrobat_flip.webp'),
  blepCurious('assets/images/cat_blep_curious.webp'),
  calicoWave('assets/images/cat_calico_wave.webp'),
  fallingSiamese('assets/images/cat_falling_siamese.webp'),
  foilHat('assets/images/cat_foil_hat.webp'),
  leapingStretch('assets/images/cat_leaping_stretch.webp'),
  leapingTabby('assets/images/cat_leaping_tabby.webp'),
  partyHat('assets/images/cat_party_hat.webp'),
  peekyTongue('assets/images/cat_peeky_tongue.webp'),
  pickle('assets/images/cat_pickle.webp'),
  pilotGoggles('assets/images/cat_pilot_goggles.webp'),
  siamesePounce('assets/images/cat_siamese_pounce.webp'),
  singerMic('assets/images/cat_singer_mic.webp'),
  surpriseBoo('assets/images/cat_surprise_boo.webp'),
  surprisedTabby('assets/images/cat_surprised_tabby.webp'),
  wavingVoid('assets/images/cat_waving_void.webp'),
  wednesdayWave('assets/images/cat_wednesday_wave.webp');

  const CatAsset(this.path);
  final String path;
  Cat toCat() {
    return switch (this) {
      CatAsset.acrobatFlip => AcrobatFlipCat(),
      CatAsset.blepCurious => BlepCuriousCat(),
      CatAsset.calicoWave => CalicoWaveCat(),
      CatAsset.fallingSiamese => FallingSiameseCat(),
      CatAsset.foilHat => FoilHatCat(),
      CatAsset.leapingStretch => LeapingStretchCat(),
      CatAsset.leapingTabby => LeapingTabbyCat(),
      CatAsset.partyHat => PartyHatCat(),
      CatAsset.peekyTongue => PeekyTongueCat(),
      CatAsset.pickle => PickleCat(),
      CatAsset.pilotGoggles => PilotGogglesCat(),
      CatAsset.siamesePounce => SiamesePounceCat(),
      CatAsset.singerMic => SingerMicCat(),
      CatAsset.surpriseBoo => SurpriseBooCat(),
      CatAsset.surprisedTabby => SurprisedTabbyCat(),
      CatAsset.wavingVoid => WavingVoidCat(),
      CatAsset.wednesdayWave => WednesdayWaveCat(),
    };
  }
}

/// Animation types used by the cat easter egg (for switch / overlay).
enum CatAnimationType {
  peek,
  jumpAtYou,
  sidePeek,
  topPeek,
  doublePeek,
 
}

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
    CatAnimationType.jumpAtYou,
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
  static const double catWidth = 150;
  static const double edgePadding = 16;
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

/// Getters for the jump-at-you animation.
abstract interface class JumpAtYouAnimation extends CatAnimation {
  Duration get leapDuration;
  double get leapHeight;
}

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

  /// Build the [Cat] for the given asset. Iterate over [CatAsset.values] and call this to get all cats.
  static Cat fromAsset(CatAsset asset) {
    return asset.toCat();
  }
}

/// All concrete cats (from [CatAsset] enum). Use for iteration.
List<Cat> get allCats => CatAsset.values.map(Cat.fromAsset).toList();

// --- Concrete cats with interface implementations ---

final class AcrobatFlipCat extends Cat {
  AcrobatFlipCat() : super(CatAsset.acrobatFlip);

  double get horizontalBias => 120;
 
}

final class BlepCuriousCat extends Cat
    implements PeekAnimation, DoublePeekAnimation {
  BlepCuriousCat() : super(CatAsset.blepCurious);

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

final class FallingSiameseCat extends Cat implements JumpAtYouAnimation {
  FallingSiameseCat() : super(CatAsset.fallingSiamese);

  @override
  Duration get leapDuration => const Duration(milliseconds: 1500);
  @override
  double get leapHeight => 110;
  @override
  double get horizontalBias => 140;
}

final class FoilHatCat extends Cat implements PeekAnimation {
  FoilHatCat() : super(CatAsset.foilHat);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 40;
}

final class LeapingStretchCat extends Cat implements JumpAtYouAnimation {
  LeapingStretchCat() : super(CatAsset.leapingStretch);

  @override
  Duration get leapDuration => const Duration(milliseconds: 1400);
  @override
  double get leapHeight => 120;
  @override
  double get horizontalBias => 140;
}

final class LeapingTabbyCat extends Cat implements JumpAtYouAnimation {
  LeapingTabbyCat() : super(CatAsset.leapingTabby);

  @override
  Duration get leapDuration => const Duration(milliseconds: 1600);
  @override
  double get leapHeight => 100;
  @override
  double get horizontalBias => 120;
}

final class PartyHatCat extends Cat implements PeekAnimation {
  PartyHatCat() : super(CatAsset.partyHat);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2100);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 80;
}

final class PeekyTongueCat extends Cat
    implements PeekAnimation, DoublePeekAnimation {
  PeekyTongueCat() : super(CatAsset.peekyTongue);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 40;
}

final class PickleCat extends Cat implements JumpAtYouAnimation {
  PickleCat() : super(CatAsset.pickle);

  @override
  Duration get leapDuration => const Duration(milliseconds: 1500);
  @override
  double get leapHeight => 130;
  @override
  double get horizontalBias => 140;
}

final class PilotGogglesCat extends Cat implements JumpAtYouAnimation {
  PilotGogglesCat() : super(CatAsset.pilotGoggles);

  @override
  Duration get leapDuration => const Duration(milliseconds: 1500);
  @override
  double get leapHeight => 110;
  @override
  double get horizontalBias => 120;
}

final class SiamesePounceCat extends Cat
    implements PeekAnimation, JumpAtYouAnimation {
  SiamesePounceCat() : super(CatAsset.siamesePounce);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1800);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 100;
  @override
  Duration get leapDuration => const Duration(milliseconds: 1600);
  @override
  double get leapHeight => 80;
 
}

final class SingerMicCat extends Cat implements PeekAnimation {
  SingerMicCat() : super(CatAsset.singerMic);

  @override
  Duration get peekDuration => const Duration(milliseconds: 2000);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 80;
 
}

final class SurpriseBooCat extends Cat
    implements PeekAnimation, JumpAtYouAnimation, DoublePeekAnimation {
  SurpriseBooCat() : super(CatAsset.surpriseBoo);

  @override
  Duration get peekDuration => const Duration(milliseconds: 1600);
  @override
  double get peekYOffset => -40;
  @override
  double get horizontalBias => 100;
  @override
  Duration get leapDuration => const Duration(milliseconds: 1700);
  @override
  double get leapHeight => 80;
}

final class SurprisedTabbyCat extends Cat implements PeekAnimation {
  SurprisedTabbyCat() : super(CatAsset.surprisedTabby);

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

final class WednesdayWaveCat extends Cat
    implements PeekAnimation, DoublePeekAnimation {
  WednesdayWaveCat() : super(CatAsset.wednesdayWave);

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
 
    case CatAnimationType.jumpAtYou:
      return allCats.whereType<JumpAtYouAnimation>().cast<Cat>().toList();
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
    case CatAnimationType.jumpAtYou:
      return cat is JumpAtYouAnimation;
    case CatAnimationType.doublePeek:
      return cat is DoublePeekAnimation;
    // all enum cases handled above
  }
}
