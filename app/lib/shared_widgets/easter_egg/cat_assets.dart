/// Edge hints for where cats can appear from.
enum Edge { left, right, top, bottom, auto }

/// Animation types used by the cat easter egg.
enum CatAnimationType {
  peekPop,
  leaping,
  pounce,
  jumpAtYou,
  sidePeek,
  topPeek,
}

/// Per-cat animation tuning parameters for the cat easter egg.
///
/// Each [CatAsset] can have custom values in [catAnimParams]. Unspecified
/// fields fall back to these defaults.
class CatAnimParams {
  const CatAnimParams({
    this.peekPopDuration = const Duration(milliseconds: 2000),
    this.leapDuration = const Duration(milliseconds: 1800),
    this.sidePeekDuration = const Duration(milliseconds: 2000),
    this.leapHeight = 80.0,
    this.horizontalTravel = 140.0,
    this.xRange = 100.0,
    this.yRange = 60.0,
    this.peekYOffset = -40.0,
    this.sidePeekYOffsetFactor = 0.3,
    this.allowedCropFraction = 0.4,
  });

  /// Total duration of the peek-pop-from-grass animation.
  final Duration peekPopDuration;

  /// Total duration of the leaping (arc) animation.
  final Duration leapDuration;

  /// Duration of side-peek and top-peek animations.
  final Duration sidePeekDuration;

  /// Vertical height of the leap arc in logical pixels (leaping animation).
  final double leapHeight;

  /// Horizontal distance traveled during the leap in logical pixels.
  final double horizontalTravel;

  /// Horizontal spread for random placement (e.g. peek pop, leap start).
  /// Larger values allow the cat to appear more to the left or right.
  final double xRange;

  /// Vertical spread for random placement (e.g. leap start, side-peek Y).
  final double yRange;

  /// Vertical offset from the grass line for peek-pop (negative = above grass).
  final double peekYOffset;

  /// Factor applied to height when computing side-peek/top-peek Y position
  /// (e.g. 0.3 = 30% down from the edge).
  final double sidePeekYOffsetFactor;

  /// Fraction of the cat image allowed to be off-screen when peeking (0–1).
  /// Higher values let more of the cat be cropped at the edge.
  final double allowedCropFraction;
}

/// Enum of cat assets with their asset path.
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

  final String path;
  const CatAsset(this.path);
}

/// Per-asset tuning map.
final Map<CatAsset, CatAnimParams> catAnimParams = {
  CatAsset.acrobatFlip: const CatAnimParams(
    leapDuration: Duration(milliseconds: 1600),
    leapHeight: 100,
    horizontalTravel: 160,
    xRange: 120,
  ),
  CatAsset.blepCurious: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 1800),
    peekYOffset: -45,
    xRange: 60,
  ),
  CatAsset.calicoWave: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 2200),
    leapDuration: Duration(milliseconds: 2000),
    xRange: 80,
  ),
  CatAsset.fallingSiamese: const CatAnimParams(
    leapDuration: Duration(milliseconds: 1500),
    leapHeight: 110,
    xRange: 140,
  ),
  CatAsset.foilHat: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 2000),
    xRange: 40,
  ),
  CatAsset.leapingStretch: const CatAnimParams(
    leapDuration: Duration(milliseconds: 1400),
    leapHeight: 120,
    horizontalTravel: 180,
    xRange: 140,
  ),
  CatAsset.leapingTabby: const CatAnimParams(
    leapDuration: Duration(milliseconds: 1600),
    leapHeight: 100,
    horizontalTravel: 150,
    xRange: 120,
  ),
  CatAsset.partyHat: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 2100),
    leapDuration: Duration(milliseconds: 2000),
    xRange: 80,
  ),
  CatAsset.peekyTongue: const CatAnimParams(
    sidePeekDuration: Duration(milliseconds: 1800),
    sidePeekYOffsetFactor: 0.25,
    xRange: 40,
    allowedCropFraction: 0.6,
  ),
  CatAsset.pickle: const CatAnimParams(
    leapDuration: Duration(milliseconds: 1500),
    leapHeight: 130,
    horizontalTravel: 180,
    xRange: 140,
  ),
  CatAsset.pilotGoggles: const CatAnimParams(
    leapDuration: Duration(milliseconds: 1500),
    leapHeight: 110,
    horizontalTravel: 160,
    xRange: 120,
  ),
  CatAsset.siamesePounce: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 1800),
    leapDuration: Duration(milliseconds: 1600),
    xRange: 100,
  ),
  CatAsset.singerMic: const CatAnimParams(
    sidePeekDuration: Duration(milliseconds: 2200),
    sidePeekYOffsetFactor: 0.35,
    xRange: 80,
  ),
  CatAsset.surpriseBoo: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 1600),
    leapDuration: Duration(milliseconds: 1700),
    xRange: 100,
  ),
  CatAsset.surprisedTabby: const CatAnimParams(
    sidePeekDuration: Duration(milliseconds: 1800),
    xRange: 60,
    allowedCropFraction: 0.5,
  ),
  CatAsset.wavingVoid: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 2000),
    sidePeekDuration: Duration(milliseconds: 2000),
    xRange: 80,
  ),
  CatAsset.wednesdayWave: const CatAnimParams(
    peekPopDuration: Duration(milliseconds: 2000),
    xRange: 60,
    allowedCropFraction: 0.4,
  ),
};

/// Which animations each cat is eligible for.
final Map<CatAsset, List<CatAnimationType>> catAnimationEligibility = {
  CatAsset.acrobatFlip: [CatAnimationType.leaping, CatAnimationType.pounce],
  CatAsset.blepCurious: [CatAnimationType.peekPop, CatAnimationType.sidePeek],
  CatAsset.calicoWave: [CatAnimationType.peekPop, CatAnimationType.leaping],
  CatAsset.fallingSiamese: [CatAnimationType.leaping, CatAnimationType.jumpAtYou],
  CatAsset.foilHat: [CatAnimationType.peekPop, CatAnimationType.sidePeek],
  CatAsset.leapingStretch: [
    CatAnimationType.leaping,
    CatAnimationType.pounce,
    CatAnimationType.jumpAtYou,
  ],
  CatAsset.leapingTabby: [
    CatAnimationType.leaping,
    CatAnimationType.pounce,
    CatAnimationType.jumpAtYou,
  ],
  CatAsset.partyHat: [CatAnimationType.peekPop, CatAnimationType.leaping],
  CatAsset.peekyTongue: [CatAnimationType.sidePeek, CatAnimationType.peekPop],
  CatAsset.pickle: [
    CatAnimationType.leaping,
    CatAnimationType.pounce,
    CatAnimationType.jumpAtYou,
  ],
  CatAsset.pilotGoggles: [CatAnimationType.leaping, CatAnimationType.jumpAtYou],
  CatAsset.siamesePounce: [
    CatAnimationType.peekPop,
    CatAnimationType.leaping,
    CatAnimationType.pounce,
    CatAnimationType.jumpAtYou,
  ],
  CatAsset.singerMic: [CatAnimationType.sidePeek, CatAnimationType.peekPop],
  CatAsset.surpriseBoo: [
    CatAnimationType.peekPop,
    CatAnimationType.leaping,
    CatAnimationType.jumpAtYou,
  ],
  CatAsset.surprisedTabby: [
    CatAnimationType.sidePeek,
    CatAnimationType.peekPop,
  ],
  CatAsset.wavingVoid: [CatAnimationType.peekPop, CatAnimationType.sidePeek],
  CatAsset.wednesdayWave: [CatAnimationType.peekPop, CatAnimationType.sidePeek],
};
