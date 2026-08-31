///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsKo extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '한국어';
	@override String get flag => '🇰🇷';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _Translations$errors$ko errors = _Translations$errors$ko._(_root);
	@override late final _Translations$onboarding$ko onboarding = _Translations$onboarding$ko._(_root);
	@override late final _Translations$tabs$ko tabs = _Translations$tabs$ko._(_root);
	@override late final _Translations$home$ko home = _Translations$home$ko._(_root);
	@override late final _Translations$history$ko history = _Translations$history$ko._(_root);
	@override late final _Translations$meal$ko meal = _Translations$meal$ko._(_root);
	@override late final _Translations$favorites$ko favorites = _Translations$favorites$ko._(_root);
	@override late final _Translations$profile$ko profile = _Translations$profile$ko._(_root);
	@override late final _Translations$healthScore$ko healthScore = _Translations$healthScore$ko._(_root);
	@override late final _Translations$editProfile$ko editProfile = _Translations$editProfile$ko._(_root);
	@override late final _Translations$settings$ko settings = _Translations$settings$ko._(_root);
	@override late final _Translations$reminders$ko reminders = _Translations$reminders$ko._(_root);
	@override late final _Translations$notifications$ko notifications = _Translations$notifications$ko._(_root);
	@override late final _Translations$login$ko login = _Translations$login$ko._(_root);
	@override late final _Translations$disclaimer$ko disclaimer = _Translations$disclaimer$ko._(_root);
	@override late final _Translations$watch$ko watch = _Translations$watch$ko._(_root);
	@override late final _Translations$common$ko common = _Translations$common$ko._(_root);
	@override late final _Translations$feedbackRating$ko feedbackRating = _Translations$feedbackRating$ko._(_root);
	@override late final _Translations$health$ko health = _Translations$health$ko._(_root);
}

// Path: errors
class _Translations$errors$ko extends Translations$errors$en {
	_Translations$errors$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => '요청이 너무 많습니다. 잠시 기다린 후 다시 시도하세요.';
	@override String get networkError => '네트워크 오류입니다. 인터넷 연결을 확인해주세요.';
	@override String get unknownError => '문제가 발생했습니다. 나중에 다시 시도해주세요.';
	@override String get loadingProfileData => '프로필 데이터 로드 중 오류';
	@override String get somethingWentWrong => '문제가 발생했습니다.';
	@override String get retry => '다시 시도';
}

// Path: onboarding
class _Translations$onboarding$ko extends Translations$onboarding$en {
	_Translations$onboarding$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}에 오신 것을 환영합니다';
	@override String get subtitle => 'AI가 지원하는 개인 영양 파트너';
	@override String get getStarted => '시작하기';
	@override late final _Translations$onboarding$features$ko features = _Translations$onboarding$features$ko._(_root);
	@override late final _Translations$onboarding$gender$ko gender = _Translations$onboarding$gender$ko._(_root);
	@override late final _Translations$onboarding$height$ko height = _Translations$onboarding$height$ko._(_root);
	@override late final _Translations$onboarding$weight$ko weight = _Translations$onboarding$weight$ko._(_root);
	@override late final _Translations$onboarding$age$ko age = _Translations$onboarding$age$ko._(_root);
	@override late final _Translations$onboarding$bmiScale$ko bmiScale = _Translations$onboarding$bmiScale$ko._(_root);
	@override late final _Translations$onboarding$weightGoal$ko weightGoal = _Translations$onboarding$weightGoal$ko._(_root);
	@override late final _Translations$onboarding$activityLevel$ko activityLevel = _Translations$onboarding$activityLevel$ko._(_root);
	@override late final _Translations$onboarding$healthConnect$ko healthConnect = _Translations$onboarding$healthConnect$ko._(_root);
	@override late final _Translations$onboarding$reinforcement$ko reinforcement = _Translations$onboarding$reinforcement$ko._(_root);
}

// Path: tabs
class _Translations$tabs$ko extends Translations$tabs$en {
	_Translations$tabs$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '대시보드';
	@override String get history => '기록';
}

// Path: home
class _Translations$home$ko extends Translations$home$en {
	_Translations$home$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$home$aiSummary$ko aiSummary = _Translations$home$aiSummary$ko._(_root);
	@override late final _Translations$home$dailyGoal$ko dailyGoal = _Translations$home$dailyGoal$ko._(_root);
	@override late final _Translations$home$dailySummary$ko dailySummary = _Translations$home$dailySummary$ko._(_root);
	@override late final _Translations$home$intakeProgress$ko intakeProgress = _Translations$home$intakeProgress$ko._(_root);
	@override late final _Translations$home$intakeHistory$ko intakeHistory = _Translations$home$intakeHistory$ko._(_root);
	@override late final _Translations$home$mealLog$ko mealLog = _Translations$home$mealLog$ko._(_root);
	@override late final _Translations$home$mealDescription$ko mealDescription = _Translations$home$mealDescription$ko._(_root);
	@override late final _Translations$home$favoriteMeals$ko favoriteMeals = _Translations$home$favoriteMeals$ko._(_root);
	@override late final _Translations$home$mealSnap$ko mealSnap = _Translations$home$mealSnap$ko._(_root);
	@override late final _Translations$home$connectHealth$ko connectHealth = _Translations$home$connectHealth$ko._(_root);
}

// Path: history
class _Translations$history$ko extends Translations$history$en {
	_Translations$history$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '기록된 식사가 없습니다';
	@override String get emptyMessage => '마지막 식사를 사진으로 찍어 여기서 기록하세요.';
	@override String get today => '오늘';
	@override String get yesterday => '어제';
}

// Path: meal
class _Translations$meal$ko extends Translations$meal$en {
	_Translations$meal$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '앗!';
	@override String get delete => '삭제';
	@override String get editMeal => '식사 편집';
	@override String get addMeal => '식사 추가';
	@override String get saveMeal => '식사 저장';
	@override String get save => '저장';
	@override String get mealName => '식사 이름';
	@override String get mealNameHint => '예: 스크램블 에그와 토스트';
	@override String get nameRequired => '저장하기 전에 식사 이름을 입력하세요.';
	@override String get mealQuantity => '식사 수량';
	@override String get mealQuantityHint => '예: 1그릇, 2조각';
	@override String get timeOfMeal => '식사 시간';
	@override String get timeOfMealHint => '식사한 시간을 선택하세요';
	@override String get mealType => '식사 유형';
	@override late final _Translations$meal$nutrition$ko nutrition = _Translations$meal$nutrition$ko._(_root);
	@override late final _Translations$meal$deleteConfirmation$ko deleteConfirmation = _Translations$meal$deleteConfirmation$ko._(_root);
	@override String get addedToLog => '식사가 기록에 추가되었습니다!';
	@override String couldNotAdd({required Object error}) => '식사를 추가할 수 없습니다: ${error}';
	@override String get savedSuccessfully => '식사가 성공적으로 추가되었습니다!';
	@override String get updatedSuccessfully => '식사가 성공적으로 업데이트되었습니다!';
	@override String errorSaving({required Object error}) => '식사 저장 오류: ${error}';
	@override String get removedFromFavorites => '즐겨찾기에서 제거되었습니다!';
	@override String get savedAsFavorite => '식사가 즐겨찾기로 저장되었습니다!';
	@override String get unfavorite => '즐겨찾기 해제';
	@override String couldNotUpdateFavorite({required Object error}) => '즐겨찾기 업데이트 실패: ${error}';
	@override String get feedbackThanks => '피드백 감사합니다!';
	@override String get reanalysisUpdated => '피드백을 반영해 식사 분석을 업데이트했습니다.';
	@override String failedToProcess({required Object error}) => '처리 실패: ${error}';
	@override String failedToProcessImage({required Object error}) => '이미지 처리 실패: ${error}';
	@override String errorCompressingImage({required Object error}) => '이미지 압축 오류: ${error}';
	@override String get imageTooLarge => '이 사진은 압축한 후에도 여전히 1 MB를 초과합니다. 다른 사진을 선택해 주세요.';
	@override String get failedToSave => '데이터 저장 실패. 다시 시도해주세요.';
	@override String get skip => '건너뛰기';
	@override late final _Translations$meal$questionFlow$ko questionFlow = _Translations$meal$questionFlow$ko._(_root);
	@override late final _Translations$meal$analysis$ko analysis = _Translations$meal$analysis$ko._(_root);
	@override late final _Translations$meal$feedback$ko feedback = _Translations$meal$feedback$ko._(_root);
}

// Path: favorites
class _Translations$favorites$ko extends Translations$favorites$en {
	_Translations$favorites$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즐겨찾기';
	@override String get empty => '아직 즐겨찾기 식사가 없습니다.';
	@override String get searchPlaceholder => '즐겨찾기 식사 검색';
	@override String get searchEmptyTitle => '검색과 일치하는 즐겨찾기가 없습니다';
	@override String get searchEmptySubtitle => '다른 식사 이름, 수량 또는 식사 유형을 시도해보세요.';
	@override String get sortLabel => '즐겨찾기 정렬';
	@override String get undo => '되돌리기';
	@override String removed({required Object name}) => '${name}을(를) 즐겨찾기에서 제거했습니다';
	@override late final _Translations$favorites$sortOptions$ko sortOptions = _Translations$favorites$sortOptions$ko._(_root);
}

// Path: profile
class _Translations$profile$ko extends Translations$profile$en {
	_Translations$profile$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필';
	@override String get noProfileData => '프로필 데이터가 없습니다';
	@override String get yourProfile => '내 프로필';
	@override String get viewAndManage => '건강 정보를 보고 관리하세요';
	@override late final _Translations$profile$sections$ko sections = _Translations$profile$sections$ko._(_root);
	@override String get gender => '성별';
	@override String get height => '키';
	@override String get weight => '체중';
	@override String get age => '나이';
	@override String get weightGoal => '체중 목표';
	@override String get targetWeight => '목표 체중';
	@override String get activityLevel => '활동 수준';
	@override String get healthMetrics => '건강 지표';
	@override String get notSet => '설정 안 됨';
	@override String get years => '세';
	@override String get updatedSuccessfully => '프로필이 성공적으로 업데이트되었습니다!';
	@override late final _Translations$profile$calculatedValues$ko calculatedValues = _Translations$profile$calculatedValues$ko._(_root);
}

// Path: healthScore
class _Translations$healthScore$ko extends Translations$healthScore$en {
	_Translations$healthScore$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '건강 점수';
	@override String get whyThisScore => '이 점수는 왜?';
	@override String get note => '이 점수는 식별된 재료와 영양 밀도를 기반으로 한 AI 추정치입니다. 개인화된 식단 조언은 전문가와 상담하세요.';
	@override String get unhealthy => '건강하지 않음';
	@override String get healthy => '건강함';
	@override String get neutral => '보통';
}

// Path: editProfile
class _Translations$editProfile$ko extends Translations$editProfile$en {
	_Translations$editProfile$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 편집';
	@override late final _Translations$editProfile$sections$ko sections = _Translations$editProfile$sections$ko._(_root);
	@override String get gender => '성별';
	@override String get dateOfBirth => '생년월일';
	@override String get height => '키';
	@override String get weight => '체중';
	@override String get weightGoal => '체중 목표';
	@override String get activityLevel => '활동 수준';
	@override String get metric => '미터법';
	@override String get imperial => '영국식';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => '파운드(lbs)';
	@override String get metricCm => '미터법 (cm)';
	@override String get imperialFtIn => '피트/인치 (ft/in)';
	@override String get metricKg => '미터법 (kg)';
	@override String get imperialLbs => '파운드 (lbs)';
	@override late final _Translations$editProfile$genders$ko genders = _Translations$editProfile$genders$ko._(_root);
	@override late final _Translations$editProfile$weightGoals$ko weightGoals = _Translations$editProfile$weightGoals$ko._(_root);
	@override late final _Translations$editProfile$activityLevels$ko activityLevels = _Translations$editProfile$activityLevels$ko._(_root);
}

// Path: settings
class _Translations$settings$ko extends Translations$settings$en {
	_Translations$settings$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '설정';
	@override late final _Translations$settings$sections$ko sections = _Translations$settings$sections$ko._(_root);
	@override late final _Translations$settings$editProfile$ko editProfile = _Translations$settings$editProfile$ko._(_root);
	@override late final _Translations$settings$language$ko language = _Translations$settings$language$ko._(_root);
	@override late final _Translations$settings$heightUnit$ko heightUnit = _Translations$settings$heightUnit$ko._(_root);
	@override late final _Translations$settings$weightUnit$ko weightUnit = _Translations$settings$weightUnit$ko._(_root);
	@override late final _Translations$settings$mealReminders$ko mealReminders = _Translations$settings$mealReminders$ko._(_root);
	@override late final _Translations$settings$theme$ko theme = _Translations$settings$theme$ko._(_root);
	@override late final _Translations$settings$sendFeedback$ko sendFeedback = _Translations$settings$sendFeedback$ko._(_root);
	@override late final _Translations$settings$exportMealHistory$ko exportMealHistory = _Translations$settings$exportMealHistory$ko._(_root);
	@override late final _Translations$settings$clearAllData$ko clearAllData = _Translations$settings$clearAllData$ko._(_root);
	@override late final _Translations$settings$debugOptions$ko debugOptions = _Translations$settings$debugOptions$ko._(_root);
	@override String get developerModeEnabled => '개발자 모드가 활성화되었습니다!';
	@override late final _Translations$settings$healthConnect$ko healthConnect = _Translations$settings$healthConnect$ko._(_root);
	@override late final _Translations$settings$about$ko about = _Translations$settings$about$ko._(_root);
	@override late final _Translations$settings$appInfo$ko appInfo = _Translations$settings$appInfo$ko._(_root);
}

// Path: reminders
class _Translations$reminders$ko extends Translations$reminders$en {
	_Translations$reminders$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '알림으로 계획을 지키세요';
	@override String get description => '식사 기록을 잊지 않도록 부드러운 알림을 받아 일관된 영양 목표를 유지하세요';
	@override String get notificationsEnabled => '알림 사용 설정됨';
	@override String get notificationsDisabled => '알림 사용 중지됨';
	@override String get enabledSubtitle => '식사 알림을 받습니다';
	@override String get disabledSubtitle => '식사 알림을 받으려면 알림을 활성화하세요';
	@override String get mealReminders => '식사 알림';
	@override String get breakfast => '아침';
	@override String get lunch => '점심';
	@override String get dinner => '저녁';
	@override String get snack => '간식';
	@override String get unknown => '알 수 없음';
	@override String get change => '변경';
	@override String get enableNotifications => '알림 활성화';
	@override String get skipForNow => '일단 건너뛰기';
	@override String get saveChanges => '변경사항 저장';
	@override String get enabledSuccessfully => '알림이 성공적으로 활성화되었습니다!';
	@override String get permissionDenied => '알림 권한이 거부되었습니다';
	@override String errorEnabling({required Object error}) => '알림 활성화 오류: ${error}';
	@override String errorCompletingSetup({required Object error}) => '설정 완료 오류: ${error}';
}

// Path: notifications
class _Translations$notifications$ko extends Translations$notifications$en {
	_Translations$notifications$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$notifications$breakfast$ko breakfast = _Translations$notifications$breakfast$ko._(_root);
	@override late final _Translations$notifications$lunch$ko lunch = _Translations$notifications$lunch$ko._(_root);
	@override late final _Translations$notifications$dinner$ko dinner = _Translations$notifications$dinner$ko._(_root);
	@override late final _Translations$notifications$snack$ko snack = _Translations$notifications$snack$ko._(_root);
	@override late final _Translations$notifications$test$ko test = _Translations$notifications$test$ko._(_root);
}

// Path: login
class _Translations$login$ko extends Translations$login$en {
	_Translations$login$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '로그인';
	@override String get signInWithGoogle => 'Google로 로그인';
	@override String get signInFailed => 'Google 로그인에 실패했거나 취소되었습니다.';
}

// Path: disclaimer
class _Translations$disclaimer$ko extends Translations$disclaimer$en {
	_Translations$disclaimer$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => '알아두세요';
	@override late final _Translations$disclaimer$snap$ko snap = _Translations$disclaimer$snap$ko._(_root);
	@override late final _Translations$disclaimer$weightEstimate$ko weightEstimate = _Translations$disclaimer$weightEstimate$ko._(_root);
	@override late final _Translations$disclaimer$healthMetrics$ko healthMetrics = _Translations$disclaimer$healthMetrics$ko._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$ko calorieExpenditure = _Translations$disclaimer$calorieExpenditure$ko._(_root);
}

// Path: watch
class _Translations$watch$ko extends Translations$watch$en {
	_Translations$watch$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Calorify Watch';
	@override late final _Translations$watch$common$ko common = _Translations$watch$common$ko._(_root);
	@override late final _Translations$watch$nutrition$ko nutrition = _Translations$watch$nutrition$ko._(_root);
	@override late final _Translations$watch$sync$ko sync = _Translations$watch$sync$ko._(_root);
	@override late final _Translations$watch$home$ko home = _Translations$watch$home$ko._(_root);
	@override late final _Translations$watch$history$ko history = _Translations$watch$history$ko._(_root);
	@override late final _Translations$watch$favorites$ko favorites = _Translations$watch$favorites$ko._(_root);
	@override late final _Translations$watch$meal$ko meal = _Translations$watch$meal$ko._(_root);
	@override late final _Translations$watch$voice$ko voice = _Translations$watch$voice$ko._(_root);
	@override late final _Translations$watch$result$ko result = _Translations$watch$result$ko._(_root);
}

// Path: common
class _Translations$common$ko extends Translations$common$en {
	_Translations$common$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get betaTag => '베타';
	@override String get close => '닫기';
	@override String get kContinue => '계속';
}

// Path: feedbackRating
class _Translations$feedbackRating$ko extends Translations$feedbackRating$en {
	_Translations$feedbackRating$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel}이 마음에 드시나요?';
	@override String get yes => '네, 만족합니다';
	@override String get no => '별로예요';
	@override String get rateStepHeading => 'Play Store에 평가하기';
	@override String get emailStepHeading => '이메일로 피드백 보내기';
	@override String soloDevMessage({required Object appLabel}) => '간단한 평점은 다른 사람들이 ${appLabel}을 찾는 데 도움이 되고 개발을 지속할 수 있게 합니다. 잠깐 평가해주실래요?';
	@override String get shareFeedbackViaEmail => '여러분의 피드백이 다음 기능을 만듭니다 — 모든 메시지를 직접 읽습니다. 이메일로 의견을 보내시겠어요?';
	@override String get rateCta => 'Play Store에 평가하기';
	@override String get maybeLater => '나중에 할게요';
	@override String get sendFeedback => '피드백 보내기';
	@override String get noThanks => '괜찮아요';
	@override String get aboutUsDescription => '작은 팀이 정성을 담아 만들었습니다. 우리는 프라이버시, 단순성, 더 나은 식습관 형성에 집중합니다.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel}의 제작자는 누구인지 궁금하신가요? ';
	@override String get aboutUsLinkLabel => '회사 소개';
	@override String get thankYouMessage => '감사합니다! 다음에 다시 묻겠습니다.';
}

// Path: health
class _Translations$health$ko extends Translations$health$en {
	_Translations$health$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect로 동기화할 수 없습니다';
	@override String get mealSynced => '식사가 Health Connect에 동기화되었습니다';
}

// Path: onboarding.features
class _Translations$onboarding$features$ko extends Translations$onboarding$features$en {
	_Translations$onboarding$features$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$features$foodRecognition$ko foodRecognition = _Translations$onboarding$features$foodRecognition$ko._(_root);
	@override late final _Translations$onboarding$features$aiAnalysis$ko aiAnalysis = _Translations$onboarding$features$aiAnalysis$ko._(_root);
	@override late final _Translations$onboarding$features$healthIntegration$ko healthIntegration = _Translations$onboarding$features$healthIntegration$ko._(_root);
}

// Path: onboarding.gender
class _Translations$onboarding$gender$ko extends Translations$onboarding$gender$en {
	_Translations$onboarding$gender$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '성별이 어떻게 되세요?';
	@override String get description => '성별 정보는 기초대사량(BMR)을 정확히 계산하는 데 도움이 됩니다.';
	@override String get next => '다음';
}

// Path: onboarding.height
class _Translations$onboarding$height$ko extends Translations$onboarding$height$en {
	_Translations$onboarding$height$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '키가 어떻게 되세요?';
	@override String get description => '키 정보는 BMI와 에너지 필요량을 정확히 계산하는 데 필요합니다.';
	@override String get metric => '미터법';
	@override String get imperial => '영국식(인치/피트)';
	@override String get next => '다음';
}

// Path: onboarding.weight
class _Translations$onboarding$weight$ko extends Translations$onboarding$weight$en {
	_Translations$onboarding$weight$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '현재 체중은 얼마인가요?';
	@override String get currentDescription => '현재 체중은 일일 목표를 개인화하는 데 중요합니다.';
	@override String get targetTitle => '목표 체중은 얼마인가요?';
	@override String get targetDescription => '목표 체중을 설정하면 장기 계획을 세우는 데 도움이 됩니다.';
	@override String get metric => '미터법';
	@override String get imperial => '영국식(파운드)';
	@override String get next => '다음';
}

// Path: onboarding.age
class _Translations$onboarding$age$ko extends Translations$onboarding$age$en {
	_Translations$onboarding$age$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '생일은 언제인가요?';
	@override String get description => '나이는 칼로리 필요량을 정확히 계산하는 데 도움이 됩니다.';
	@override String get next => '다음';
}

// Path: onboarding.bmiScale
class _Translations$onboarding$bmiScale$ko extends Translations$onboarding$bmiScale$en {
	_Translations$onboarding$bmiScale$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '저체중';
	@override String get healthy => '건강';
	@override String get overweight => '과체중';
	@override String get obese => '비만';
	@override late final _Translations$onboarding$bmiScale$categories$ko categories = _Translations$onboarding$bmiScale$categories$ko._(_root);
	@override late final _Translations$onboarding$bmiScale$messages$ko messages = _Translations$onboarding$bmiScale$messages$ko._(_root);
}

// Path: onboarding.weightGoal
class _Translations$onboarding$weightGoal$ko extends Translations$onboarding$weightGoal$en {
	_Translations$onboarding$weightGoal$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '목표는 무엇인가요?';
	@override String get description => '달성하고자 하는 목표에 가장 가까운 항목을 선택하세요';
}

// Path: onboarding.activityLevel
class _Translations$onboarding$activityLevel$ko extends Translations$onboarding$activityLevel$en {
	_Translations$onboarding$activityLevel$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '평소 활동량은 어느 정도인가요?';
	@override String get description => '이는 일일 칼로리 필요량을 보다 정확히 계산하는 데 도움이 됩니다';
}

// Path: onboarding.healthConnect
class _Translations$onboarding$healthConnect$ko extends Translations$onboarding$healthConnect$en {
	_Translations$onboarding$healthConnect$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect에 연결하기';
	@override String get description => '더 나은 인사이트와 자동 칼로리 추적을 위해 건강 데이터를 동기화하세요';
	@override String get overviewDescription => '일일 목표에 소모 칼로리를 반영하고 원하는 경우 기록한 식사를 Health Connect와 공유합니다.';
	@override late final _Translations$onboarding$healthConnect$automaticTracking$ko automaticTracking = _Translations$onboarding$healthConnect$automaticTracking$ko._(_root);
	@override late final _Translations$onboarding$healthConnect$caloriesBurned$ko caloriesBurned = _Translations$onboarding$healthConnect$caloriesBurned$ko._(_root);
	@override late final _Translations$onboarding$healthConnect$progressInsights$ko progressInsights = _Translations$onboarding$healthConnect$progressInsights$ko._(_root);
	@override late final _Translations$onboarding$healthConnect$shareLoggedMeals$ko shareLoggedMeals = _Translations$onboarding$healthConnect$shareLoggedMeals$ko._(_root);
	@override late final _Translations$onboarding$healthConnect$seamlessIntegration$ko seamlessIntegration = _Translations$onboarding$healthConnect$seamlessIntegration$ko._(_root);
	@override late final _Translations$onboarding$healthConnect$userControl$ko userControl = _Translations$onboarding$healthConnect$userControl$ko._(_root);
	@override String get connected => 'Health Connect 연결됨';
	@override String get notConnected => 'Health Connect 연결 안 됨';
	@override String get setup => 'Health Connect 설정';
	@override String get skipForNow => '일단 건너뛰기';
	@override String get statusConnected => 'Health Connect가 연결되어 있습니다.';
	@override String get statusSuccess => 'Health Connect가 성공적으로 연결되었습니다!';
	@override String get statusNotConnected => '사용할 Health Connect 기능을 선택하세요.';
	@override String get statusPartial => 'Health Connect가 일부 연결되었습니다. 두 기능을 모두 사용하려면 남은 권한을 활성화하세요.';
	@override String get statusProviderUpdateRequired => '계속하려면 Health Connect를 설치하거나 업데이트하세요.';
	@override String get statusUnavailable => '이 기기는 Health Connect를 지원하지 않습니다.';
	@override String get installOrUpdate => '설치 또는 업데이트';
	@override String get manageAccess => '접근 권한 관리';
	@override String statusPermissionDenied({required Object appLabel}) => '권한이 거부되었습니다. ${appLabel}에 대한 Health Connect 권한을 휴대폰 설정에서 활성화해주세요.';
	@override String statusError({required Object error}) => 'Health Connect 설정 오류: ${error}';
}

// Path: onboarding.reinforcement
class _Translations$onboarding$reinforcement$ko extends Translations$onboarding$reinforcement$en {
	_Translations$onboarding$reinforcement$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$onboarding$reinforcement$trackingSuccess$ko trackingSuccess = _Translations$onboarding$reinforcement$trackingSuccess$ko._(_root);
	@override late final _Translations$onboarding$reinforcement$healthProfile$ko healthProfile = _Translations$onboarding$reinforcement$healthProfile$ko._(_root);
	@override late final _Translations$onboarding$reinforcement$goalLifestyle$ko goalLifestyle = _Translations$onboarding$reinforcement$goalLifestyle$ko._(_root);
}

// Path: home.aiSummary
class _Translations$home$aiSummary$ko extends Translations$home$aiSummary$en {
	_Translations$home$aiSummary$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 요약';
	@override String get logMore => '개인화된 AI 인사이트를 얻으려면 다음 며칠 동안 식사를 더 기록하세요.';
	@override String get loading => '요약 불러오는 중...';
	@override String mealCount({required Object count}) => '기록된 식사 ${count}건';
	@override String macroBalanceScore({required Object score}) => '균형 점수 ${score}';
	@override String get topFoods => '자주 먹는 음식';
	@override String get trendUp => '칼로리 증가 추세';
	@override String get trendDown => '칼로리 감소 추세';
	@override String get trendSteady => '칼로리 안정적';
	@override String generatedAt({required Object time}) => '업데이트: ${time}';
}

// Path: home.dailyGoal
class _Translations$home$dailyGoal$ko extends Translations$home$dailyGoal$en {
	_Translations$home$dailyGoal$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 목표 설정';
	@override String get titleSet => '설정된 일일 목표';
	@override String get description => '웰니스 여정을 시작할 준비가 되셨나요? 아래에 일일 칼로리 목표를 설정하여 진행을 시작하세요.';
	@override String get descriptionSet => '나침반이 설정되었습니다! 이것이 안내할 일일 칼로리 목표입니다.';
	@override String get yourGoal => '당신의 목표';
	@override String get goal => '목표';
	@override String get dailyCalories => '일일 칼로리 (kcal)';
	@override String get setGoal => '목표 설정';
	@override String get intake => '섭취';
	@override String get burned => '소모';
	@override String get weightImpact => '체중 영향';
	@override String get estLoss => '예상 감소';
	@override String get estGain => '예상 증가';
	@override String get kcal => '킬로칼로리(kcal)';
}

// Path: home.dailySummary
class _Translations$home$dailySummary$ko extends Translations$home$dailySummary$en {
	_Translations$home$dailySummary$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오늘 요약';
	@override String get calories => '칼로리';
	@override String get carbs => '탄수화물';
	@override String get protein => '단백질';
	@override String get fat => '지방';
	@override String get fiber => '식이섬유';
	@override String get grams => '그램';
	@override String get chartAccessibilityLabel => '매크로 차트';
}

// Path: home.intakeProgress
class _Translations$home$intakeProgress$ko extends Translations$home$intakeProgress$en {
	_Translations$home$intakeProgress$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오늘의 매크로 분포';
	@override String get target => '목표';
	@override String get current => '현재';
}

// Path: home.intakeHistory
class _Translations$home$intakeHistory$ko extends Translations$home$intakeHistory$en {
	_Translations$home$intakeHistory$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '7일 매크로 기록';
	@override String get trendTitle => '오늘 추세';
	@override String peakHour({required Object hour}) => '최대: ${hour}:00';
	@override String get noHistoryYet => '아직 기록이 없습니다';
	@override String get startLogging => '식사를 기록하면\n7일 매크로 추세를 여기서 볼 수 있습니다';
}

// Path: home.mealLog
class _Translations$home$mealLog$ko extends Translations$home$mealLog$en {
	_Translations$home$mealLog$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기록된 식사';
	@override String get emptyMessage => '마지막 식사를 사진으로 찍어 여기서 기록하세요.';
	@override String get noMealsToday => '오늘 기록된 식사가 없습니다';
	@override String get seeAllMeals => '모든 식사 보기';
}

// Path: home.mealDescription
class _Translations$home$mealDescription$ko extends Translations$home$mealDescription$en {
	_Translations$home$mealDescription$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI로 빠르게 추가';
	@override String get description => '식사를 설명하면 AI가 세부사항을 처리합니다.';
	@override String get hint => '예: 아침으로 큰 오트밀 한 그릇에 바나나 슬라이스 한 개와 웨이 한 스쿱을 먹었어요 ...';
	@override String get analyzeMeal => '식사 분석';
}

// Path: home.favoriteMeals
class _Translations$home$favoriteMeals$ko extends Translations$home$favoriteMeals$en {
	_Translations$home$favoriteMeals$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즐겨찾기 식사';
	@override String get description => '자주 먹는 식사를 빠르게 추가하세요.';
	@override String get noFavorites => '아직 즐겨찾기 식사가 없습니다.';
	@override String get addFavoriteHint => '식사에 있는 별표를 눌러 즐겨찾기로 표시하세요.';
	@override String get seeAll => '모두 보기';
	@override String get add => '추가';
}

// Path: home.mealSnap
class _Translations$home$mealSnap$ko extends Translations$home$mealSnap$en {
	_Translations$home$mealSnap$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사를 찍고 추적하기';
	@override String get description => '카메라로 음식을 촬영해 AI 분석을 받아보세요.';
	@override String get openCamera => '카메라 열기';
	@override String get gallery => '갤러리';
	@override String get compressingPhoto => '사진 최적화 중…';
	@override String get uploadingPhoto => '사진 업로드 중…';
}

// Path: home.connectHealth
class _Translations$home$connectHealth$ko extends Translations$home$connectHealth$en {
	_Translations$home$connectHealth$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect와 동기화';
	@override String get description => '영양 데이터를 Health Connect와 동기화하세요';
	@override String get install => '설치';
	@override String get dataUseDescription => '목표에 소모 칼로리를 반영하고 기록한 식사를 공유합니다';
	@override String get installOrUpdate => '설치 또는 업데이트';
	@override String get connect => '연결';
}

// Path: meal.nutrition
class _Translations$meal$nutrition$ko extends Translations$meal$nutrition$en {
	_Translations$meal$nutrition$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get calories => '칼로리';
	@override String get carbs => '탄수화물 (g)';
	@override String get protein => '단백질 (g)';
	@override String get fat => '지방 (g)';
	@override String get fiber => '식이섬유 (g)';
}

// Path: meal.deleteConfirmation
class _Translations$meal$deleteConfirmation$ko extends Translations$meal$deleteConfirmation$en {
	_Translations$meal$deleteConfirmation$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 삭제';
	@override String get message => '이 식사 항목을 삭제하시겠습니까?';
	@override String get cancel => '취소';
	@override String get delete => '삭제';
}

// Path: meal.questionFlow
class _Translations$meal$questionFlow$ko extends Translations$meal$questionFlow$en {
	_Translations$meal$questionFlow$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '질문 ${current} / ${total}';
	@override String get noQuestionsAvailable => '사용 가능한 질문이 없습니다';
	@override String get next => '다음';
	@override String get continueLabel => '계속';
	@override String get countQuestion => '수량 선택';
	@override String get itemSizeQuestion => '크기 선택';
	@override String get portionSizeQuestion => '분량 선택';
	@override String get option6plus => '6개 이상';
	@override String get optionSmall => '작음';
	@override String get optionRegular => '보통';
	@override String get optionLarge => '큼';
	@override String get optionThin => '얇음';
	@override String get optionThick => '두꺼움';
	@override String get optionMini => '미니';
	@override String get optionStuffed => '속 채움';
	@override String get optionHeavy => '무거움';
	@override String get optionSmaller => '더 작게';
	@override String get optionTypical => '일반';
	@override String get optionLarger => '더 크게';
	@override String get useEstimate => '추정값 사용';
	@override String numberRange({required Object min, required Object max, required Object step}) => '${min}부터 ${max}까지, ${step} 간격';
	@override String get invalidNumber => '허용 범위 내의 값을 입력하세요';
}

// Path: meal.analysis
class _Translations$meal$analysis$ko extends Translations$meal$analysis$en {
	_Translations$meal$analysis$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 분석 중';
	@override String get stepStarted => '시작 중…';
	@override String get stepDecomposition => '식사 파악 중…';
	@override String get stepIngredients => '재료를 영양 데이터와 매칭하는 중…';
	@override String get stepUncertainty => '신뢰도 확인 중…';
	@override String get stepMealTypeQuestion => '거의 완료되었습니다…';
	@override String get stepResult => '결과 정리 중…';
	@override String get stepError => '문제가 발생했습니다';
	@override String get providerUnavailable => '식사 분석 서비스가 일시적으로 이용할 수 없습니다. 다시 시도해 주세요.';
	@override String get invalidModelOutput => '식사 분석 결과를 이해할 수 없었습니다. 다시 시도해 주세요.';
	@override String get nutritionDataUnavailable => '영양 정보를 일시적으로 이용할 수 없습니다. 다시 시도해 주세요.';
	@override String get analysisUnavailable => '식사 분석을 일시적으로 이용할 수 없습니다. 다시 시도해 주세요.';
	@override String get unresolvedNutrition => '이 식사에 대한 영양 정보를 안전하게 일치시킬 수 없었습니다. 더 자세한 정보를 추가해 보세요.';
	@override String get noFoodTip => '음식이 감지되지 않았습니다. 다른 사진이나 설명을 시도해 보세요.';
	@override String get stepDefault => '식사 분석 중…';
	@override String get progressUnderstand => '식사 파악 중';
	@override String get progressMatch => '재료 영양 조회 중';
	@override String get progressCheck => '분량 및 신뢰도 확인 중';
	@override String get progressMealType => '식사 유형 선택 중';
	@override String get progressFinish => '칼로리 및 매크로 계산 중';
	@override String get detectedIngredientHeading => '식별된 재료';
	@override String ingredientsOverflow({required Object count}) => '${count}개 더';
	@override String ingredientsLine({required Object count}) => '${count}개의 재료가 감지되었습니다';
	@override String get ingredientsPending => '재료 스캔 중…';
	@override String mealPreviewDescription({required Object text}) => '“${text}”';
	@override String calorieRange({required Object min, required Object max}) => '추정 범위: ${min}–${max} kcal';
	@override String get offlineTip0 => '팁: 완벽함보다 꾸준함이 중요합니다—정기적인 기록이 중요한 패턴을 드러냅니다.';
	@override String get offlineTip1 => '팁: 사진은 자연광과 위에서 내려다보는 구도가 분량 추정에 도움이 됩니다.';
	@override String get offlineTip2 => '팁: 음료, 소스, 식용유도 칼로리를 추가하니 꼭 언급하세요.';
	@override String get offlineTip3 => '팁: 빠른 분량 표시(예: 1그릇, 큰 커피)는 추정을 훨씬 정확하게 만듭니다.';
	@override String get offlineTip4 => '팁: 식사 후 기록해도 습관을 기르는 데 도움이 됩니다; 완벽할 필요는 없습니다.';
	@override String get offlineTip5 => '팁: 조리 방식(튀김 vs 구이 등)에 따라 칼로리가 많이 달라지면 조리법을 알려주세요.';
}

// Path: meal.feedback
class _Translations$meal$feedback$ko extends Translations$meal$feedback$en {
	_Translations$meal$feedback$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '어떤 점이 잘못되었나요?';
	@override String get subtitle => '분석 개선을 위해 한 가지 이상 문제를 선택해주세요.';
	@override String get tellUsMore => '자세히 알려주세요';
	@override String get describeIncorrect => '무엇이 잘못되었는지 설명해주세요';
	@override String get submit => '제출';
	@override String get issueFoodIdentification => '음식 식별';
	@override String get issuePortionSize => '분량';
	@override String get issueCalorieDistribution => '칼로리 분포';
	@override String get issueMacrosWrong => '매크로가 잘못됨';
	@override String get issueMissingItems => '누락된 항목';
	@override String get issueExtraItems => '불필요한 항목';
	@override String get issueOther => '기타';
}

// Path: favorites.sortOptions
class _Translations$favorites$sortOptions$ko extends Translations$favorites$sortOptions$en {
	_Translations$favorites$sortOptions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get recent => '최근';
	@override String get calories => '칼로리';
	@override String get alphabetical => '가-나';
}

// Path: profile.sections
class _Translations$profile$sections$ko extends Translations$profile$sections$en {
	_Translations$profile$sections$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get profile => '프로필';
	@override String get basicInformation => '기본 정보';
	@override String get goalsAndActivity => '목표 및 활동';
	@override String get calculatedValues => '계산된 값';
}

// Path: profile.calculatedValues
class _Translations$profile$calculatedValues$ko extends Translations$profile$calculatedValues$en {
	_Translations$profile$calculatedValues$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '일일 목표';
	@override String get calPerDay => 'cal/일';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _Translations$editProfile$sections$ko extends Translations$editProfile$sections$en {
	_Translations$editProfile$sections$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '개인 정보';
	@override String get physicalMeasurements => '신체 치수';
	@override String get goalsAndActivity => '목표 및 활동';
}

// Path: editProfile.genders
class _Translations$editProfile$genders$ko extends Translations$editProfile$genders$en {
	_Translations$editProfile$genders$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get male => '남성';
	@override String get female => '여성';
	@override String get other => '기타';
}

// Path: editProfile.weightGoals
class _Translations$editProfile$weightGoals$ko extends Translations$editProfile$weightGoals$en {
	_Translations$editProfile$weightGoals$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$weightGoals$loseWeight$ko loseWeight = _Translations$editProfile$weightGoals$loseWeight$ko._(_root);
	@override late final _Translations$editProfile$weightGoals$maintainWeight$ko maintainWeight = _Translations$editProfile$weightGoals$maintainWeight$ko._(_root);
	@override late final _Translations$editProfile$weightGoals$gainWeight$ko gainWeight = _Translations$editProfile$weightGoals$gainWeight$ko._(_root);
}

// Path: editProfile.activityLevels
class _Translations$editProfile$activityLevels$ko extends Translations$editProfile$activityLevels$en {
	_Translations$editProfile$activityLevels$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _Translations$editProfile$activityLevels$sedentary$ko sedentary = _Translations$editProfile$activityLevels$sedentary$ko._(_root);
	@override late final _Translations$editProfile$activityLevels$lightlyActive$ko lightlyActive = _Translations$editProfile$activityLevels$lightlyActive$ko._(_root);
	@override late final _Translations$editProfile$activityLevels$moderatelyActive$ko moderatelyActive = _Translations$editProfile$activityLevels$moderatelyActive$ko._(_root);
	@override late final _Translations$editProfile$activityLevels$veryActive$ko veryActive = _Translations$editProfile$activityLevels$veryActive$ko._(_root);
	@override late final _Translations$editProfile$activityLevels$extremelyActive$ko extremelyActive = _Translations$editProfile$activityLevels$extremelyActive$ko._(_root);
}

// Path: settings.sections
class _Translations$settings$sections$ko extends Translations$settings$sections$en {
	_Translations$settings$sections$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get profile => '프로필';
	@override String get localization => '지역화';
	@override String get notifications => '알림';
	@override String get healthConnect => 'HEALTH CONNECT 설정';
	@override String get supportAndLegal => '지원 및 법적 고지';
	@override String get about => '앱 정보';
	@override String get dangerZone => '위험 구역';
	@override String get developer => '개발자';
}

// Path: settings.editProfile
class _Translations$settings$editProfile$ko extends Translations$settings$editProfile$en {
	_Translations$settings$editProfile$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 편집';
	@override String get subtitle => '개인 정보를 업데이트하세요';
}

// Path: settings.language
class _Translations$settings$language$ko extends Translations$settings$language$en {
	_Translations$settings$language$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '언어';
	@override String get subtitle => '선호하는 언어를 선택하세요';
	@override String get searchHint => '언어 검색...';
	@override String get noResults => '결과를 찾을 수 없습니다';
}

// Path: settings.heightUnit
class _Translations$settings$heightUnit$ko extends Translations$settings$heightUnit$en {
	_Translations$settings$heightUnit$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '키 단위';
}

// Path: settings.weightUnit
class _Translations$settings$weightUnit$ko extends Translations$settings$weightUnit$en {
	_Translations$settings$weightUnit$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '체중 단위';
}

// Path: settings.mealReminders
class _Translations$settings$mealReminders$ko extends Translations$settings$mealReminders$en {
	_Translations$settings$mealReminders$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 알림';
	@override String get subtitle => '정시 알림으로 계획을 지키세요';
}

// Path: settings.theme
class _Translations$settings$theme$ko extends Translations$settings$theme$en {
	_Translations$settings$theme$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '테마';
	@override String get light => '라이트';
	@override String get dark => '다크';
	@override String get system => '시스템';
}

// Path: settings.sendFeedback
class _Translations$settings$sendFeedback$ko extends Translations$settings$sendFeedback$en {
	_Translations$settings$sendFeedback$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '피드백 보내기';
	@override String subtitle({required Object appLabel}) => '${appLabel} 개선에 도움을 주세요';
	@override String emailSubject({required Object appLabel}) => '${appLabel} 앱 피드백';
	@override String get emailBodyPrefix => '다음에 피드백을 작성해주세요:';
	@override String get appVersion => '앱 버전';
	@override String get device => '기기';
	@override String get osVersion => 'OS 버전';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _Translations$settings$exportMealHistory$ko extends Translations$settings$exportMealHistory$en {
	_Translations$settings$exportMealHistory$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 기록 내보내기';
	@override String get subtitle => '기록한 식사를 CSV로 공유하세요';
	@override String get shareText => 'Calorify 식사 기록 내보내기';
	@override String failed({required Object error}) => '식사 기록을 내보낼 수 없습니다: ${error}';
}

// Path: settings.clearAllData
class _Translations$settings$clearAllData$ko extends Translations$settings$clearAllData$en {
	_Translations$settings$clearAllData$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '모든 데이터 삭제';
	@override String get subtitle => '모든 정보를 되돌릴 수 없이 삭제합니다';
	@override String get localOnlySubtitle => '이 기기에 저장된 Calorify 데이터 삭제';
	@override String get confirmationTitle => '모든 데이터를 삭제하시겠습니까?';
	@override String get confirmationMessage => '이 작업은 되돌릴 수 없습니다. 기록된 모든 식사, 즐겨찾기 및 프로필 설정이 영구적으로 삭제됩니다.';
	@override String get localOnlyConfirmationMessage => '이 기기에서 기록한 식사, 즐겨찾기 및 프로필 설정을 영구적으로 삭제합니다. Health Connect에 이미 공유한 식사와 Health Connect 접근 권한은 설정 > Health Connect에서 별도로 관리됩니다.';
	@override String get cancel => '취소';
	@override String get clearEverything => '모두 삭제';
}

// Path: settings.debugOptions
class _Translations$settings$debugOptions$ko extends Translations$settings$debugOptions$en {
	_Translations$settings$debugOptions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '디버그 옵션';
}

// Path: settings.healthConnect
class _Translations$settings$healthConnect$ko extends Translations$settings$healthConnect$en {
	_Translations$settings$healthConnect$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '권한 보기 및 관리';
	@override late final _Translations$settings$healthConnect$unavailable$ko unavailable = _Translations$settings$healthConnect$unavailable$ko._(_root);
	@override late final _Translations$settings$healthConnect$updateRequired$ko updateRequired = _Translations$settings$healthConnect$updateRequired$ko._(_root);
	@override late final _Translations$settings$healthConnect$permissions$ko permissions = _Translations$settings$healthConnect$permissions$ko._(_root);
	@override String get managePermissions => '권한 관리';
	@override String get openSettings => 'Health Connect 설정 열기';
	@override String get disconnect => 'Health Connect 연결 해제';
	@override String get disconnectConfirmationTitle => 'Health Connect 연결을 해제할까요?';
	@override String get disconnectConfirmationMessage => 'Calorify의 Health Connect 접근 권한이 해제됩니다. 이미 기록된 데이터는 삭제되지 않습니다.';
	@override String get disconnectConfirmationAction => '연결 해제';
	@override String get deleteSyncedMeals => 'Health Connect에서 Calorify 식사 삭제';
	@override String get deleteSyncedMealsConfirmationTitle => '동기화된 식사를 삭제할까요?';
	@override String get deleteSyncedMealsConfirmationMessage => '이 버전의 Calorify가 Health Connect에 동기화한 식사를 삭제할까요? 기기의 식사 기록은 변경되지 않습니다. 이전 Calorify 항목은 Health Connect의 데이터 관리에서 별도로 삭제해야 할 수 있습니다.';
	@override String get deleteSyncedMealsConfirmationAction => '동기화된 식사 삭제';
	@override String get deleteSyncedMealsSuccess => 'Health Connect에서 Calorify 식사를 삭제했습니다.';
	@override String get deleteSyncedMealsFailed => '동기화된 식사를 삭제하지 못했습니다. 다시 시도해 주세요.';
	@override String get connectionPartial => '일부 Health Connect 기능이 활성화되었습니다.';
	@override String get connectionComplete => 'Health Connect 기능 두 개가 모두 활성화되었습니다.';
	@override String get actionFailed => 'Health Connect를 열 수 없습니다. 다시 시도해 주세요.';
	@override String get requestPermissions => '권한 요청';
	@override String get permissionRequestCancelledOrFailed => '권한 요청이 취소되었거나 실패했습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용하세요.';
	@override String get permissionRequestFailed => '권한을 요청할 수 없습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용하세요.';
	@override String get requestingPermissions => '요청 중...';
}

// Path: settings.about
class _Translations$settings$about$ko extends Translations$settings$about$en {
	_Translations$settings$about$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '앱 정보';
	@override String get tagline => '빠르고 무료이며 프라이버시를 우선시하는 칼로리 인식';
	@override late final _Translations$settings$about$ourStory$ko ourStory = _Translations$settings$about$ourStory$ko._(_root);
	@override late final _Translations$settings$about$privacy$ko privacy = _Translations$settings$about$privacy$ko._(_root);
	@override late final _Translations$settings$about$developer$ko developer = _Translations$settings$about$developer$ko._(_root);
	@override late final _Translations$settings$about$feedback$ko feedback = _Translations$settings$about$feedback$ko._(_root);
}

// Path: settings.appInfo
class _Translations$settings$appInfo$ko extends Translations$settings$appInfo$en {
	_Translations$settings$appInfo$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify 버전 ${version}';
	@override String build({required Object buildNumber}) => '빌드 ${buildNumber}';
}

// Path: notifications.breakfast
class _Translations$notifications$breakfast$ko extends Translations$notifications$breakfast$en {
	_Translations$notifications$breakfast$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '아침 시간이에요! 🍳';
	@override String get body => '아침 기록하는 것을 잊지 마세요';
}

// Path: notifications.lunch
class _Translations$notifications$lunch$ko extends Translations$notifications$lunch$en {
	_Translations$notifications$lunch$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '점심 시간이에요! 🥗';
	@override String get body => '점심을 기록할 시간이에요';
}

// Path: notifications.dinner
class _Translations$notifications$dinner$ko extends Translations$notifications$dinner$en {
	_Translations$notifications$dinner$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '저녁 시간이에요! 🍽️';
	@override String get body => '저녁 기록하는 것을 잊지 마세요';
}

// Path: notifications.snack
class _Translations$notifications$snack$ko extends Translations$notifications$snack$en {
	_Translations$notifications$snack$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '간식 시간이에요! 🍎';
	@override String get body => '건강한 간식을 기록할 시간이에요';
}

// Path: notifications.test
class _Translations$notifications$test$ko extends Translations$notifications$test$en {
	_Translations$notifications$test$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '테스트 알림';
}

// Path: disclaimer.snap
class _Translations$disclaimer$snap$ko extends Translations$disclaimer$snap$en {
	_Translations$disclaimer$snap$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel}는 추정된 영양 정보를 제공합니다. 정확성은 입력과 음식의 변이에 따라 달라집니다. 참고용으로 사용하시고, 개인화된 식단 조언은 전문가와 상담하세요.';
	@override late final _Translations$disclaimer$snap$portionSize$ko portionSize = _Translations$disclaimer$snap$portionSize$ko._(_root);
	@override late final _Translations$disclaimer$snap$preparationMethods$ko preparationMethods = _Translations$disclaimer$snap$preparationMethods$ko._(_root);
	@override late final _Translations$disclaimer$snap$ingredients$ko ingredients = _Translations$disclaimer$snap$ingredients$ko._(_root);
	@override late final _Translations$disclaimer$snap$databaseLimitations$ko databaseLimitations = _Translations$disclaimer$snap$databaseLimitations$ko._(_root);
}

// Path: disclaimer.weightEstimate
class _Translations$disclaimer$weightEstimate$ko extends Translations$disclaimer$weightEstimate$en {
	_Translations$disclaimer$weightEstimate$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '체중 예측에 관하여';
	@override String get description => '예상 체중 변화는 단순한 칼로리 소비 vs 섭취 모델에 기반한 이론적 추정치입니다. 이는 동기부여용 안내이며 실제 체중 예측을 위한 수단이 아닙니다.';
	@override late final _Translations$disclaimer$weightEstimate$calorieAccuracy$ko calorieAccuracy = _Translations$disclaimer$weightEstimate$calorieAccuracy$ko._(_root);
	@override late final _Translations$disclaimer$weightEstimate$biologicalFactors$ko biologicalFactors = _Translations$disclaimer$weightEstimate$biologicalFactors$ko._(_root);
	@override late final _Translations$disclaimer$weightEstimate$waterWeight$ko waterWeight = _Translations$disclaimer$weightEstimate$waterWeight$ko._(_root);
	@override late final _Translations$disclaimer$weightEstimate$professionalGuidance$ko professionalGuidance = _Translations$disclaimer$weightEstimate$professionalGuidance$ko._(_root);
}

// Path: disclaimer.healthMetrics
class _Translations$disclaimer$healthMetrics$ko extends Translations$disclaimer$healthMetrics$en {
	_Translations$disclaimer$healthMetrics$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get description => '이 지표들은 신체의 에너지 필요량을 이해하고 영양 목표를 안내하는 데 도움이 됩니다.';
	@override late final _Translations$disclaimer$healthMetrics$bmr$ko bmr = _Translations$disclaimer$healthMetrics$bmr$ko._(_root);
	@override late final _Translations$disclaimer$healthMetrics$tdee$ko tdee = _Translations$disclaimer$healthMetrics$tdee$ko._(_root);
	@override late final _Translations$disclaimer$healthMetrics$dailyGoal$ko dailyGoal = _Translations$disclaimer$healthMetrics$dailyGoal$ko._(_root);
}

// Path: disclaimer.calorieExpenditure
class _Translations$disclaimer$calorieExpenditure$ko extends Translations$disclaimer$calorieExpenditure$en {
	_Translations$disclaimer$calorieExpenditure$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '칼로리 소모 추정';
	@override String get description => 'Health Connect 데이터가 없을 때, 우리는 기초대사량(BMR)과 활동 수준(TDEE)을 사용해 오늘 소모한 칼로리를 하루 경과 비율에 맞춰 추정합니다.';
	@override late final _Translations$disclaimer$calorieExpenditure$howCalculated$ko howCalculated = _Translations$disclaimer$calorieExpenditure$howCalculated$ko._(_root);
	@override late final _Translations$disclaimer$calorieExpenditure$professionalGuidance$ko professionalGuidance = _Translations$disclaimer$calorieExpenditure$professionalGuidance$ko._(_root);
}

// Path: watch.common
class _Translations$watch$common$ko extends Translations$watch$common$en {
	_Translations$watch$common$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get back => '뒤로';
	@override String get cancel => '취소';
	@override String get delete => '삭제';
	@override String get retry => '다시 시도';
	@override String get kcal => 'kcal';
	@override String get gramsShort => 'g';
}

// Path: watch.nutrition
class _Translations$watch$nutrition$ko extends Translations$watch$nutrition$en {
	_Translations$watch$nutrition$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get nutrient => '영양소';
	@override String grams({required Object label, required Object value}) => '${label}, ${value} g';
	@override String get protein => '단백질';
	@override String get carbs => '탄수화물';
	@override String get fat => '지방';
	@override String get fiber => '식이섬유';
}

// Path: watch.sync
class _Translations$watch$sync$ko extends Translations$watch$sync$en {
	_Translations$watch$sync$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get syncWithPhone => '휴대전화와 동기화';
	@override String get syncing => '동기화 중…';
	@override String get synced => '동기화됨';
	@override String get syncedJustNow => '방금 동기화됨';
	@override String syncedMinutesAgo({required Object minutes}) => '${minutes}분 전 동기화됨';
	@override String get failed => '동기화 실패';
	@override String get phoneDisconnected => '휴대전화 연결 끊김';
	@override String get tapToSync => '탭하여 동기화';
	@override String get refreshFailed => '새로고침할 수 없습니다. 휴대전화 연결을 확인하세요.';
	@override String get openPhone => '휴대전화에서 Calorify를 열고 새로고침을 탭하세요.';
}

// Path: watch.home
class _Translations$watch$home$ko extends Translations$watch$home$en {
	_Translations$watch$home$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get today => '오늘';
	@override String calorieSummary({required Object goal, required Object consumed, required Object status}) => '${goal} 중 ${consumed} kcal 섭취했습니다. ${status}.';
	@override String overGoal({required Object calories}) => '${calories} 목표 초과';
	@override String remaining({required Object calories}) => '${calories} 남음';
	@override String left({required Object calories}) => '${calories} 남음';
	@override String goal({required Object calories}) => '${calories} kcal 목표';
	@override String get logMeal => '식사 기록';
	@override String get todayMeals => '오늘의 식사';
	@override String todayMealsCount({required Object count}) => '오늘의 식사, ${count}';
	@override String viewMore({required Object count}) => '${count}개 더 보기';
	@override String viewMoreSemantics({required Object count}) => '${count}개의 식사, 모두 보려면 탭하세요';
	@override String get noMeals => '기록된 식사가 없습니다';
	@override String get noMealsSemantics => '오늘 기록된 식사가 없습니다';
	@override String get tapLog => '시작하려면 \'기록\'을 탭하세요';
	@override String get removedFromQueue => '식사가 오프라인 대기열에서 제거되었습니다.';
	@override String get removedOffline => '식사가 오프라인에서 제거되었습니다. 휴대전화가 다시 연결되면 동기화됩니다.';
	@override String get deleteFailed => '식사를 삭제할 수 없습니다';
}

// Path: watch.history
class _Translations$watch$history$ko extends Translations$watch$history$en {
	_Translations$watch$history$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오늘의 식사';
	@override String get refresh => '식사 새로고침';
	@override String get loadFailed => '식사를 불러올 수 없습니다';
	@override String get syncFailed => '동기화할 수 없습니다';
	@override String get emptyTitle => '아직 식사가 없습니다';
	@override String get emptyMessage => '홈에서 식사를 기록하면 여기에 표시됩니다.';
}

// Path: watch.favorites
class _Translations$watch$favorites$ko extends Translations$watch$favorites$en {
	_Translations$watch$favorites$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즐겨찾기';
	@override String get refresh => '즐겨찾기 새로고침';
	@override String get loadFailed => '즐겨찾기를 불러올 수 없습니다';
	@override String get syncFailed => '동기화할 수 없습니다';
	@override String get emptyTitle => '아직 즐겨찾기가 없습니다';
	@override String get emptyMessage => '휴대전화 앱에서 식사를 별표로 표시하면 여기에서 원터치로 기록할 수 있습니다.';
	@override String mealSemantics({required Object name, required Object calories}) => '${name}, ${calories} kcal. 탭하여 기록하세요.';
	@override String logged({required Object name}) => '${name}이(가) 기록되었어요!';
	@override String savedOffline({required Object name}) => '${name}이(가) 오프라인으로 저장되었습니다. 휴대전화가 다시 연결되면 동기화됩니다.';
	@override String get saveFailed => '식사를 저장할 수 없습니다. 다시 시도하세요.';
	@override String get log => '기록';
}

// Path: watch.meal
class _Translations$watch$meal$ko extends Translations$watch$meal$en {
	_Translations$watch$meal$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String semantics({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, ${time}에 기록됨.';
	@override String get longPressDelete => '삭제하려면 길게 누르세요.';
	@override String get deleteTitle => '이 식사를 삭제하시겠어요?';
}

// Path: watch.voice
class _Translations$watch$voice$ko extends Translations$watch$voice$en {
	_Translations$watch$voice$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '음성 식사 기록';
	@override String get processing => '식사를 확인하는 중…';
	@override String get processingDescription => '량과 영양성분을 추정 중입니다';
	@override String get listening => '듣는 중';
	@override String secondsLeft({required Object seconds}) => '${seconds}초';
	@override String get stop => '녹음 중지';
	@override String get start => '탭하여 녹음 시작';
	@override String get starting => '마이크 시작 중…';
	@override String get prompt => '탭한 후 식사를 설명하세요';
	@override String get tapToRetry => '다시 시도하려면 탭하세요';
	@override String get example => '예: “로티 2장과 달”';
	@override String get unavailable => '음성 입력을 사용할 수 없습니다. 시계 설정에서 마이크 권한을 확인하세요.';
	@override String get didNotStart => '마이크가 시작되지 않았습니다. 탭하여 다시 시도하세요.';
	@override String get startFailed => '녹음을 시작할 수 없습니다. 마이크 권한을 확인하세요.';
	@override String get allowMicrophone => '음성으로 식사를 기록하려면 마이크 접근을 허용하세요.';
	@override String get needsConnection => '음성 인식에는 연결이 필요합니다. 탭하여 다시 시도하세요.';
	@override String get microphoneUnavailable => '마이크를 사용할 수 없습니다. 탭하여 다시 시도하세요.';
	@override String get microphoneBusy => '마이크가 사용 중입니다. 잠시 기다린 후 다시 시도하세요.';
	@override String get languageUnsupported => '음성 입력이 시계 언어를 지원하지 않습니다.';
	@override String get temporarilyBusy => '음성 입력이 일시적으로 바쁩니다. 잠시 기다렸다가 다시 시도하세요.';
	@override String get notRecognized => '잘 인식되지 않았습니다. 마이크를 탭하여 다시 시도하세요.';
	@override String get noSpeech => '음성이 감지되지 않았습니다. 마이크를 탭하여 다시 시도하세요.';
	@override String get analysisFailed => '분석에 실패했습니다. 다시 시도하세요.';
	@override String get mealNotIdentified => '해당 식사를 식별할 수 없습니다. 다르게 설명해 보세요.';
}

// Path: watch.result
class _Translations$watch$result$ko extends Translations$watch$result$en {
	_Translations$watch$result$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 세부정보';
	@override String get savedOffline => '오프라인으로 저장됨';
	@override String get logged => '기록되었어요!';
	@override String get mealFound => '식사 확인됨';
	@override String get estimatedEnergy => '추정 열량';
	@override String get logMeal => '식사 기록';
	@override String get logging => '기록 중…';
	@override String get logAnother => '다른 식사 기록';
	@override String get goingBack => '뒤로 이동 중…';
	@override String get savedOfflineMessage => '식사가 오프라인으로 저장되었습니다. 휴대전화가 다시 연결되면 동기화됩니다.';
	@override String get saveFailed => '식사를 저장할 수 없습니다. 다시 시도하세요.';
}

// Path: onboarding.features.foodRecognition
class _Translations$onboarding$features$foodRecognition$ko extends Translations$onboarding$features$foodRecognition$en {
	_Translations$onboarding$features$foodRecognition$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '스마트 음식 인식';
	@override String get description => '사진을 찍으면 AI가 식단을 식별해줍니다';
}

// Path: onboarding.features.aiAnalysis
class _Translations$onboarding$features$aiAnalysis$ko extends Translations$onboarding$features$aiAnalysis$en {
	_Translations$onboarding$features$aiAnalysis$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 분석';
	@override String get description => '설명만으로도 즉시 영양 정보를 확인하세요';
}

// Path: onboarding.features.healthIntegration
class _Translations$onboarding$features$healthIntegration$ko extends Translations$onboarding$features$healthIntegration$en {
	_Translations$onboarding$features$healthIntegration$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 연동';
	@override String get description => '더 나은 인사이트를 위해 Health Connect와 연결하세요';
}

// Path: onboarding.bmiScale.categories
class _Translations$onboarding$bmiScale$categories$ko extends Translations$onboarding$bmiScale$categories$en {
	_Translations$onboarding$bmiScale$categories$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '저체중';
	@override String get healthyWeight => '건강 체중';
	@override String get overweight => '과체중';
	@override String get obese => '비만';
}

// Path: onboarding.bmiScale.messages
class _Translations$onboarding$bmiScale$messages$ko extends Translations$onboarding$bmiScale$messages$en {
	_Translations$onboarding$bmiScale$messages$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '영양이 풍부한 식단으로 균형 잡힌 체중을 목표로 하는 건강한 계획을 도와드릴게요.';
	@override String get healthy => '잘하고 계세요! 건강한 범위에 있습니다. 활력과 에너지를 유지하도록 도와드릴게요.';
	@override String overweight({required Object appLabel}) => '${appLabel}가 AI 기반 추적으로 목표 체중에 편안하게 도달할 수 있도록 여정을 단순화해 드립니다.';
	@override String get obese => '개인 맞춤형 안내와 지속 가능한 전략으로 목표 건강 상태를 달성할 수 있도록 지원합니다.';
}

// Path: onboarding.healthConnect.automaticTracking
class _Translations$onboarding$healthConnect$automaticTracking$ko extends Translations$onboarding$healthConnect$automaticTracking$en {
	_Translations$onboarding$healthConnect$automaticTracking$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자동 칼로리 추적';
	@override String get description => '피트니스 앱에서 소모한 칼로리를 추적합니다';
}

// Path: onboarding.healthConnect.caloriesBurned
class _Translations$onboarding$healthConnect$caloriesBurned$ko extends Translations$onboarding$healthConnect$caloriesBurned$en {
	_Translations$onboarding$healthConnect$caloriesBurned$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '소모 칼로리';
	@override String get description => 'Health Connect에서 오늘의 총 소모 칼로리를 읽습니다';
}

// Path: onboarding.healthConnect.progressInsights
class _Translations$onboarding$healthConnect$progressInsights$ko extends Translations$onboarding$healthConnect$progressInsights$en {
	_Translations$onboarding$healthConnect$progressInsights$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '진행 인사이트';
	@override String get description => '건강 추세에 대한 자세한 인사이트를 제공합니다';
}

// Path: onboarding.healthConnect.shareLoggedMeals
class _Translations$onboarding$healthConnect$shareLoggedMeals$ko extends Translations$onboarding$healthConnect$shareLoggedMeals$en {
	_Translations$onboarding$healthConnect$shareLoggedMeals$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기록한 식사 공유';
	@override String get description => 'Calorify에 기록한 식사를 Health Connect에 씁니다';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _Translations$onboarding$healthConnect$seamlessIntegration$ko extends Translations$onboarding$healthConnect$seamlessIntegration$en {
	_Translations$onboarding$healthConnect$seamlessIntegration$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '원활한 통합';
	@override String get description => '자주 사용하는 건강 앱의 데이터를 동기화하세요';
}

// Path: onboarding.healthConnect.userControl
class _Translations$onboarding$healthConnect$userControl$ko extends Translations$onboarding$healthConnect$userControl$en {
	_Translations$onboarding$healthConnect$userControl$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '사용자가 직접 관리합니다';
	@override String get description => '원하는 권한을 선택하고 언제든지 접근 설정을 변경하세요';
}

// Path: onboarding.reinforcement.trackingSuccess
class _Translations$onboarding$reinforcement$trackingSuccess$ko extends Translations$onboarding$reinforcement$trackingSuccess$en {
	_Translations$onboarding$reinforcement$trackingSuccess$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '혼자가 아니에요';
	@override String get genericMessage => '연구에 따르면 일관된 기록이 장기 성공의 가장 큰 예측 요인입니다.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age}세 ${gender}가 ${goal}하려면 일관된 기록이 성공의 가장 큰 예측 요인입니다.';
	@override String closingMessage({required Object appLabel}) => '${appLabel}는 수동으로 하는 것보다 10배 더 쉽게 만들어줍니다.';
	@override String get getStartedTitle => '시작할 준비가 되셨나요?';
	@override String get tipPhoto => '식사를 사진으로 찍어 즉시 분석받으세요';
	@override String get tipConsistency => '의미 있는 변화를 보려면 꾸준히 기록하세요';
	@override String get tipProgress => '동기 부여를 위해 매일 진행 상황을 기록하세요';
	@override String get button => '시작하기';
	@override String get defaultGender => '개인';
	@override String get defaultGoal => '더 건강한 당신';
}

// Path: onboarding.reinforcement.healthProfile
class _Translations$onboarding$reinforcement$healthProfile$ko extends Translations$onboarding$reinforcement$healthProfile$en {
	_Translations$onboarding$reinforcement$healthProfile$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '건강 프로필';
	@override String bmiDescription({required Object bmi}) => '측정값으로 계산한 귀하의 BMI는 ${bmi}입니다.';
	@override String get finalizeDescription => '경험을 개인화하기 위해 프로필을 마무리해봅시다.';
	@override String get goalGain => '증가';
	@override String get goalLose => '감소';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '목표에 도달하려면 ${direction} ${diff} ${unit} 해야 합니다.';
	@override String get goalReached => '목표 체중에 도달했습니다! 유지하도록 도와드릴게요.';
	@override String get button => '시작하기';
}

// Path: onboarding.reinforcement.goalLifestyle
class _Translations$onboarding$reinforcement$goalLifestyle$ko extends Translations$onboarding$reinforcement$goalLifestyle$en {
	_Translations$onboarding$reinforcement$goalLifestyle$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '훌륭한 시작입니다!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}를 향해 첫걸음을 내디뎠습니다. ${activityText} 활동 수준이므로 ${appLabel}가 라이프스타일에 맞춰 목표를 조정합니다.';
	@override String get personalizedTargets => '개인화된 칼로리 목표';
	@override String get aiMealDetection => 'AI 기반 식사 인식';
	@override String get macroBreakdowns => '자세한 매크로 영양소 분해';
	@override String get button => '시작하기';
	@override String get defaultGoal => '목표';
	@override String get defaultActivity => '활동적';
}

// Path: editProfile.weightGoals.loseWeight
class _Translations$editProfile$weightGoals$loseWeight$ko extends Translations$editProfile$weightGoals$loseWeight$en {
	_Translations$editProfile$weightGoals$loseWeight$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 감량';
	@override String get description => '체중을 줄이기 위해 칼로리 적자를 만듭니다';
}

// Path: editProfile.weightGoals.maintainWeight
class _Translations$editProfile$weightGoals$maintainWeight$ko extends Translations$editProfile$weightGoals$maintainWeight$en {
	_Translations$editProfile$weightGoals$maintainWeight$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 유지';
	@override String get description => '현재 체중을 유지합니다';
}

// Path: editProfile.weightGoals.gainWeight
class _Translations$editProfile$weightGoals$gainWeight$ko extends Translations$editProfile$weightGoals$gainWeight$en {
	_Translations$editProfile$weightGoals$gainWeight$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 증가';
	@override String get description => '체중을 늘리기 위해 칼로리 잉여를 만듭니다';
}

// Path: editProfile.activityLevels.sedentary
class _Translations$editProfile$activityLevels$sedentary$ko extends Translations$editProfile$activityLevels$sedentary$en {
	_Translations$editProfile$activityLevels$sedentary$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '거의 활동 없음';
	@override String get description => '운동 거의 또는 전혀 없음';
}

// Path: editProfile.activityLevels.lightlyActive
class _Translations$editProfile$activityLevels$lightlyActive$ko extends Translations$editProfile$activityLevels$lightlyActive$en {
	_Translations$editProfile$activityLevels$lightlyActive$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '가벼운 활동';
	@override String get description => '주 1-3회 가벼운 운동';
}

// Path: editProfile.activityLevels.moderatelyActive
class _Translations$editProfile$activityLevels$moderatelyActive$ko extends Translations$editProfile$activityLevels$moderatelyActive$en {
	_Translations$editProfile$activityLevels$moderatelyActive$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '보통 활동';
	@override String get description => '주 3-5회 중간 강도 운동';
}

// Path: editProfile.activityLevels.veryActive
class _Translations$editProfile$activityLevels$veryActive$ko extends Translations$editProfile$activityLevels$veryActive$en {
	_Translations$editProfile$activityLevels$veryActive$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '매우 활동적';
	@override String get description => '주 6-7회 고강도 운동';
}

// Path: editProfile.activityLevels.extremelyActive
class _Translations$editProfile$activityLevels$extremelyActive$ko extends Translations$editProfile$activityLevels$extremelyActive$en {
	_Translations$editProfile$activityLevels$extremelyActive$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '극도로 활동적';
	@override String get description => '매우 고강도 운동 또는 육체 노동';
}

// Path: settings.healthConnect.unavailable
class _Translations$settings$healthConnect$unavailable$ko extends Translations$settings$healthConnect$unavailable$en {
	_Translations$settings$healthConnect$unavailable$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 사용 불가';
	@override String get description => '이 기기에서는 Health Connect를 사용할 수 없습니다. Android 9 이상에서는 Play Store에서 Health Connect를 설치하거나 Android 14 이상으로 업데이트하세요.';
	@override String get unsupportedDescription => '이 기기는 Health Connect를 지원하지 않습니다.';
}

// Path: settings.healthConnect.updateRequired
class _Translations$settings$healthConnect$updateRequired$ko extends Translations$settings$healthConnect$updateRequired$en {
	_Translations$settings$healthConnect$updateRequired$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 확인이 필요합니다';
	@override String get description => '접근 권한을 관리하기 전에 Health Connect를 설치하거나 업데이트하세요.';
	@override String get action => '설치 또는 업데이트';
}

// Path: settings.healthConnect.permissions
class _Translations$settings$healthConnect$permissions$ko extends Translations$settings$healthConnect$permissions$en {
	_Translations$settings$healthConnect$permissions$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '권한';
	@override String get description => 'Health Connect 통합을 제공하기 위해 다음 권한이 요청됩니다:';
	@override String get granted => '허용됨';
	@override String get notGranted => '허용되지 않음';
	@override late final _Translations$settings$healthConnect$permissions$caloriesBurned$ko caloriesBurned = _Translations$settings$healthConnect$permissions$caloriesBurned$ko._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionRead$ko nutritionRead = _Translations$settings$healthConnect$permissions$nutritionRead$ko._(_root);
	@override late final _Translations$settings$healthConnect$permissions$nutritionWrite$ko nutritionWrite = _Translations$settings$healthConnect$permissions$nutritionWrite$ko._(_root);
}

// Path: settings.about.ourStory
class _Translations$settings$about$ourStory$ko extends Translations$settings$about$ourStory$en {
	_Translations$settings$about$ourStory$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '우리의 이야기';
	@override String content({required Object appLabel}) => '${appLabel}는 단순한 불편함에서 시작했습니다: 대부분의 칼로리 추적 앱은 지나치게 복잡하거나, 끊임없는 수동 입력을 요구하거나, 높은 구독료를 청구하거나, 프라이버시를 희생합니다.\n\n혼자 개발자로서 저는 더 간단하고 공정한 무언가를 만들고 싶었습니다 — 노력을 줄이는 AI를 사용하고, 빠르고 무료로 유지되며, 건강 데이터를 존중하는 앱을요.\n\n${appLabel}는 제가 존재하길 바랐던 앱입니다: 계정 불필요, 추적 없음, 광고 없음 — 명확하고 실용적인 인사이트와 당신의 건강 목표만 남깁니다.';
}

// Path: settings.about.privacy
class _Translations$settings$about$privacy$ko extends Translations$settings$about$privacy$en {
	_Translations$settings$about$privacy$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인정보 보호는 중요합니다';
	@override String get description => '개인정보 보호는 부수적인 고려사항이 아니라 설계 원칙입니다. 실제로 이것이 의미하는 바는 다음과 같습니다:';
	@override String get noAccounts => '계정 불필요\n바로 앱을 사용하세요. 가입이나 신원 확인이 필요 없습니다.';
	@override String noTracking({required Object appLabel}) => '추적 없음\n${appLabel}는 활동을 모니터링하거나 사용 프로필을 만들거나 다른 앱이나 웹사이트에서 사용자를 추적하지 않습니다.';
	@override String analyticsDisclosure({required Object appLabel}) => '제한적인 분석 및 진단\n${appLabel}은 안정성 향상을 위해 기본 앱 이벤트와 충돌 진단을 사용합니다. 건강 기록 값은 광고에 사용되거나 판매되지 않습니다.';
	@override String noAds({required Object appLabel}) => '광고 없음으로 설계됨\n${appLabel}는 광고나 데이터 기반 수익화 없이 작동하도록 만들어졌습니다.';
	@override String get noDataSelling => '데이터 판매 없음\n건강 데이터는 제3자에게 판매되거나 공유되지 않습니다.';
	@override String get localStorage => '로컬 우선 저장\n데이터는 기기에 저장됩니다.';
	@override String get privacyPolicy => '개인정보 처리방침';
}

// Path: settings.about.developer
class _Translations$settings$about$developer$ko extends Translations$settings$about$developer$en {
	_Translations$settings$about$developer$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '단독 개발자가 제작';
	@override String description({required Object appLabel}) => '${appLabel}는 차분하고 프라이버시를 존중하는 건강 소프트웨어를 만드는 데 집중하는 단독 개발자가 제작 및 유지합니다.\n\n피드백은 직접 읽히며 앱의 방향을 결정하는 데 도움이 됩니다.';
	@override String get website => '웹사이트';
	@override String get email => '이메일';
}

// Path: settings.about.feedback
class _Translations$settings$about$feedback$ko extends Translations$settings$about$feedback$en {
	_Translations$settings$about$feedback$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}이 마음에 드시나요?';
	@override String description({required Object appLabel}) => '여러분의 피드백은 ${appLabel}을 모두에게 더 좋게 만듭니다.';
	@override String get rateApp => 'Play Store에 평가하기';
	@override String get sendFeedback => '피드백 보내기';
}

// Path: disclaimer.snap.portionSize
class _Translations$disclaimer$snap$portionSize$ko extends Translations$disclaimer$snap$portionSize$en {
	_Translations$disclaimer$snap$portionSize$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '분량';
	@override String get description => '추정치의 정확성은 분량을 얼마나 정확히 평가하느냐에 크게 좌우됩니다.';
}

// Path: disclaimer.snap.preparationMethods
class _Translations$disclaimer$snap$preparationMethods$ko extends Translations$disclaimer$snap$preparationMethods$en {
	_Translations$disclaimer$snap$preparationMethods$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '조리 방법';
	@override String description({required Object appLabel}) => '조리 방법은 음식의 영양 성분을 크게 바꿀 수 있습니다. ${appLabel}의 추정치는 항상 이러한 변이를 모두 반영하지 않을 수 있습니다.';
}

// Path: disclaimer.snap.ingredients
class _Translations$disclaimer$snap$ingredients$ko extends Translations$disclaimer$snap$ingredients$en {
	_Translations$disclaimer$snap$ingredients$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '재료';
	@override String get description => '숨겨진 재료가 많은 복잡한 요리는 정확도가 떨어질 수 있습니다.';
}

// Path: disclaimer.snap.databaseLimitations
class _Translations$disclaimer$snap$databaseLimitations$ko extends Translations$disclaimer$snap$databaseLimitations$en {
	_Translations$disclaimer$snap$databaseLimitations$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터베이스 한계';
	@override String description({required Object appLabel}) => '${appLabel}의 음식 데이터베이스는 광범위하지만 모든 음식 항목이나 변형을 포함하지 않을 수 있습니다.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _Translations$disclaimer$weightEstimate$calorieAccuracy$ko extends Translations$disclaimer$weightEstimate$calorieAccuracy$en {
	_Translations$disclaimer$weightEstimate$calorieAccuracy$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '칼로리 정확도';
	@override String get description => '이 추정치는 기록된 칼로리 섭취 및 소비의 정확성에 따라 달라집니다. 부정확한 기록은 부정확한 예측을 초래합니다.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _Translations$disclaimer$weightEstimate$biologicalFactors$ko extends Translations$disclaimer$weightEstimate$biologicalFactors$en {
	_Translations$disclaimer$weightEstimate$biologicalFactors$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인 생리적 요인';
	@override String description({required Object appLabel}) => '실제 체중 변화는 신진대사, 호르몬, 수면, 스트레스, 수분 상태 및 ${appLabel}가 측정할 수 없는 기타 개인적 요인의 영향을 받습니다.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _Translations$disclaimer$weightEstimate$waterWeight$ko extends Translations$disclaimer$weightEstimate$waterWeight$en {
	_Translations$disclaimer$weightEstimate$waterWeight$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '수분 체중 및 변동';
	@override String get description => '일상적인 체중은 수분 보유, 소화 및 시간에 따라 크게 변동할 수 있습니다. 이 추정치는 이러한 일일 변화를 반영하지 않습니다.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _Translations$disclaimer$weightEstimate$professionalGuidance$ko extends Translations$disclaimer$weightEstimate$professionalGuidance$en {
	_Translations$disclaimer$weightEstimate$professionalGuidance$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가 조언';
	@override String get description => '이 추정치를 의료 결정에 사용하지 마세요. 개인화된 체중 관리 조언은 항상 의료 전문가나 공인 영양사와 상담하세요.';
}

// Path: disclaimer.healthMetrics.bmr
class _Translations$disclaimer$healthMetrics$bmr$ko extends Translations$disclaimer$healthMetrics$bmr$en {
	_Translations$disclaimer$healthMetrics$bmr$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '기초대사량(BMR)은 호흡 및 순환 같은 기본 기능을 유지하기 위해 휴식 시 신체가 소모하는 칼로리 수입니다. BMR은 나이, 성별, 키 및 체중에 따라 달라집니다. 더 높은 BMR은 일반적으로 근육량이 많거나 젊거나 남성일 때 나타나며, 더 낮은 BMR은 근육량이 적거나 고령이거나 여성일 때 나타나는 경향이 있습니다.';
}

// Path: disclaimer.healthMetrics.tdee
class _Translations$disclaimer$healthMetrics$tdee$ko extends Translations$disclaimer$healthMetrics$tdee$en {
	_Translations$disclaimer$healthMetrics$tdee$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '총 일일 에너지 소비량(TDEE)은 BMR에 신체 활동 및 일상적인 움직임에 의한 칼로리를 포함한 하루 전체 소모 칼로리입니다. TDEE는 BMR과 활동 수준에 따라 달라집니다. 더 높은 TDEE는 일반적으로 더 활동적이거나 BMR이 높은 경우에 해당하며, 더 낮은 TDEE는 일상 활동이 적거나 BMR이 낮음을 시사합니다.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _Translations$disclaimer$healthMetrics$dailyGoal$ko extends Translations$disclaimer$healthMetrics$dailyGoal$en {
	_Translations$disclaimer$healthMetrics$dailyGoal$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 목표';
	@override String get description => '일일 목표는 TDEE와 체중 목표를 기반으로 권장되는 일일 칼로리 섭취량입니다. 체중 감량은 TDEE보다 적게 섭취하고, 체중 유지 시 TDEE와 비슷하게 섭취하며, 체중 증가 시 TDEE보다 더 많이 섭취합니다. 이는 건강한 속도로 원하는 체중 변화를 달성하는 데 도움을 줍니다.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _Translations$disclaimer$calorieExpenditure$howCalculated$ko extends Translations$disclaimer$calorieExpenditure$howCalculated$en {
	_Translations$disclaimer$calorieExpenditure$howCalculated$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '추정 계산 방법';
	@override String get description => '프로필을 기반으로 TDEE를 계산하고 경과한 시간(시 + 분) / 24를 곱해 지금까지 소모한 칼로리를 추정합니다.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _Translations$disclaimer$calorieExpenditure$professionalGuidance$ko extends Translations$disclaimer$calorieExpenditure$professionalGuidance$en {
	_Translations$disclaimer$calorieExpenditure$professionalGuidance$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가 조언';
	@override String get description => '이 추정치를 의료 결정에 사용하지 마세요. 개인화된 체중 관리 조언은 항상 의료 전문가나 공인 영양사와 상담하세요.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _Translations$settings$healthConnect$permissions$caloriesBurned$ko extends Translations$settings$healthConnect$permissions$caloriesBurned$en {
	_Translations$settings$healthConnect$permissions$caloriesBurned$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '총 소모 칼로리 읽기';
	@override String get description => '앱이 Health Connect에서 총 소모 칼로리를 읽을 수 있게 합니다.';
	@override String get usage => '이 권한은 앱에 일일 소모 칼로리를 표시하여 하루 전체 에너지 소비를 이해하는 데 사용됩니다.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _Translations$settings$healthConnect$permissions$nutritionRead$ko extends Translations$settings$healthConnect$permissions$nutritionRead$en {
	_Translations$settings$healthConnect$permissions$nutritionRead$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영양 데이터 읽기';
	@override String get description => '앱이 Health Connect에서 영양 데이터를 읽을 수 있게 합니다.';
	@override String get usage => '이 권한은 다른 앱이 Health Connect에 기록한 영양 정보를 읽어 영양의 종합적인 뷰를 제공합니다.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _Translations$settings$healthConnect$permissions$nutritionWrite$ko extends Translations$settings$healthConnect$permissions$nutritionWrite$en {
	_Translations$settings$healthConnect$permissions$nutritionWrite$ko._(TranslationsKo root) : this._root = root, super.internal(root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영양 데이터 쓰기';
	@override String get description => '앱이 Health Connect에 영양 데이터를 쓸 수 있게 합니다.';
	@override String get usage => '이 권한은 기록한 식사를 Health Connect와 동기화하여 다른 건강 및 피트니스 앱에서도 영양 데이터를 사용할 수 있게 합니다.';
}

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'language' => '한국어',
			'flag' => '🇰🇷',
			'appLabel' => ({required Object env}) => 'Calorify${env}',
			'errors.rateLimitExceeded' => '요청이 너무 많습니다. 잠시 기다린 후 다시 시도하세요.',
			'errors.networkError' => '네트워크 오류입니다. 인터넷 연결을 확인해주세요.',
			'errors.unknownError' => '문제가 발생했습니다. 나중에 다시 시도해주세요.',
			'errors.loadingProfileData' => '프로필 데이터 로드 중 오류',
			'errors.somethingWentWrong' => '문제가 발생했습니다.',
			'errors.retry' => '다시 시도',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}에 오신 것을 환영합니다',
			'onboarding.subtitle' => 'AI가 지원하는 개인 영양 파트너',
			'onboarding.getStarted' => '시작하기',
			'onboarding.features.foodRecognition.title' => '스마트 음식 인식',
			'onboarding.features.foodRecognition.description' => '사진을 찍으면 AI가 식단을 식별해줍니다',
			'onboarding.features.aiAnalysis.title' => 'AI 분석',
			'onboarding.features.aiAnalysis.description' => '설명만으로도 즉시 영양 정보를 확인하세요',
			'onboarding.features.healthIntegration.title' => 'Health Connect 연동',
			'onboarding.features.healthIntegration.description' => '더 나은 인사이트를 위해 Health Connect와 연결하세요',
			'onboarding.gender.title' => '성별이 어떻게 되세요?',
			'onboarding.gender.description' => '성별 정보는 기초대사량(BMR)을 정확히 계산하는 데 도움이 됩니다.',
			'onboarding.gender.next' => '다음',
			'onboarding.height.title' => '키가 어떻게 되세요?',
			'onboarding.height.description' => '키 정보는 BMI와 에너지 필요량을 정확히 계산하는 데 필요합니다.',
			'onboarding.height.metric' => '미터법',
			'onboarding.height.imperial' => '영국식(인치/피트)',
			'onboarding.height.next' => '다음',
			'onboarding.weight.currentTitle' => '현재 체중은 얼마인가요?',
			'onboarding.weight.currentDescription' => '현재 체중은 일일 목표를 개인화하는 데 중요합니다.',
			'onboarding.weight.targetTitle' => '목표 체중은 얼마인가요?',
			'onboarding.weight.targetDescription' => '목표 체중을 설정하면 장기 계획을 세우는 데 도움이 됩니다.',
			'onboarding.weight.metric' => '미터법',
			'onboarding.weight.imperial' => '영국식(파운드)',
			'onboarding.weight.next' => '다음',
			'onboarding.age.title' => '생일은 언제인가요?',
			'onboarding.age.description' => '나이는 칼로리 필요량을 정확히 계산하는 데 도움이 됩니다.',
			'onboarding.age.next' => '다음',
			'onboarding.bmiScale.underweight' => '저체중',
			'onboarding.bmiScale.healthy' => '건강',
			'onboarding.bmiScale.overweight' => '과체중',
			'onboarding.bmiScale.obese' => '비만',
			'onboarding.bmiScale.categories.underweight' => '저체중',
			'onboarding.bmiScale.categories.healthyWeight' => '건강 체중',
			'onboarding.bmiScale.categories.overweight' => '과체중',
			'onboarding.bmiScale.categories.obese' => '비만',
			'onboarding.bmiScale.messages.underweight' => '영양이 풍부한 식단으로 균형 잡힌 체중을 목표로 하는 건강한 계획을 도와드릴게요.',
			'onboarding.bmiScale.messages.healthy' => '잘하고 계세요! 건강한 범위에 있습니다. 활력과 에너지를 유지하도록 도와드릴게요.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}가 AI 기반 추적으로 목표 체중에 편안하게 도달할 수 있도록 여정을 단순화해 드립니다.',
			'onboarding.bmiScale.messages.obese' => '개인 맞춤형 안내와 지속 가능한 전략으로 목표 건강 상태를 달성할 수 있도록 지원합니다.',
			'onboarding.weightGoal.title' => '목표는 무엇인가요?',
			'onboarding.weightGoal.description' => '달성하고자 하는 목표에 가장 가까운 항목을 선택하세요',
			'onboarding.activityLevel.title' => '평소 활동량은 어느 정도인가요?',
			'onboarding.activityLevel.description' => '이는 일일 칼로리 필요량을 보다 정확히 계산하는 데 도움이 됩니다',
			'onboarding.healthConnect.title' => 'Health Connect에 연결하기',
			'onboarding.healthConnect.description' => '더 나은 인사이트와 자동 칼로리 추적을 위해 건강 데이터를 동기화하세요',
			'onboarding.healthConnect.overviewDescription' => '일일 목표에 소모 칼로리를 반영하고 원하는 경우 기록한 식사를 Health Connect와 공유합니다.',
			'onboarding.healthConnect.automaticTracking.title' => '자동 칼로리 추적',
			'onboarding.healthConnect.automaticTracking.description' => '피트니스 앱에서 소모한 칼로리를 추적합니다',
			'onboarding.healthConnect.caloriesBurned.title' => '소모 칼로리',
			'onboarding.healthConnect.caloriesBurned.description' => 'Health Connect에서 오늘의 총 소모 칼로리를 읽습니다',
			'onboarding.healthConnect.progressInsights.title' => '진행 인사이트',
			'onboarding.healthConnect.progressInsights.description' => '건강 추세에 대한 자세한 인사이트를 제공합니다',
			'onboarding.healthConnect.shareLoggedMeals.title' => '기록한 식사 공유',
			'onboarding.healthConnect.shareLoggedMeals.description' => 'Calorify에 기록한 식사를 Health Connect에 씁니다',
			'onboarding.healthConnect.seamlessIntegration.title' => '원활한 통합',
			'onboarding.healthConnect.seamlessIntegration.description' => '자주 사용하는 건강 앱의 데이터를 동기화하세요',
			'onboarding.healthConnect.userControl.title' => '사용자가 직접 관리합니다',
			'onboarding.healthConnect.userControl.description' => '원하는 권한을 선택하고 언제든지 접근 설정을 변경하세요',
			'onboarding.healthConnect.connected' => 'Health Connect 연결됨',
			'onboarding.healthConnect.notConnected' => 'Health Connect 연결 안 됨',
			'onboarding.healthConnect.setup' => 'Health Connect 설정',
			'onboarding.healthConnect.skipForNow' => '일단 건너뛰기',
			'onboarding.healthConnect.statusConnected' => 'Health Connect가 연결되어 있습니다.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect가 성공적으로 연결되었습니다!',
			'onboarding.healthConnect.statusNotConnected' => '사용할 Health Connect 기능을 선택하세요.',
			'onboarding.healthConnect.statusPartial' => 'Health Connect가 일부 연결되었습니다. 두 기능을 모두 사용하려면 남은 권한을 활성화하세요.',
			'onboarding.healthConnect.statusProviderUpdateRequired' => '계속하려면 Health Connect를 설치하거나 업데이트하세요.',
			'onboarding.healthConnect.statusUnavailable' => '이 기기는 Health Connect를 지원하지 않습니다.',
			'onboarding.healthConnect.installOrUpdate' => '설치 또는 업데이트',
			'onboarding.healthConnect.manageAccess' => '접근 권한 관리',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '권한이 거부되었습니다. ${appLabel}에 대한 Health Connect 권한을 휴대폰 설정에서 활성화해주세요.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect 설정 오류: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '혼자가 아니에요',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '연구에 따르면 일관된 기록이 장기 성공의 가장 큰 예측 요인입니다.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age}세 ${gender}가 ${goal}하려면 일관된 기록이 성공의 가장 큰 예측 요인입니다.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel}는 수동으로 하는 것보다 10배 더 쉽게 만들어줍니다.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '시작할 준비가 되셨나요?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '식사를 사진으로 찍어 즉시 분석받으세요',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '의미 있는 변화를 보려면 꾸준히 기록하세요',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '동기 부여를 위해 매일 진행 상황을 기록하세요',
			'onboarding.reinforcement.trackingSuccess.button' => '시작하기',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '개인',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '더 건강한 당신',
			'onboarding.reinforcement.healthProfile.title' => '건강 프로필',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '측정값으로 계산한 귀하의 BMI는 ${bmi}입니다.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '경험을 개인화하기 위해 프로필을 마무리해봅시다.',
			'onboarding.reinforcement.healthProfile.goalGain' => '증가',
			'onboarding.reinforcement.healthProfile.goalLose' => '감소',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '목표에 도달하려면 ${direction} ${diff} ${unit} 해야 합니다.',
			'onboarding.reinforcement.healthProfile.goalReached' => '목표 체중에 도달했습니다! 유지하도록 도와드릴게요.',
			'onboarding.reinforcement.healthProfile.button' => '시작하기',
			'onboarding.reinforcement.goalLifestyle.title' => '훌륭한 시작입니다!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}를 향해 첫걸음을 내디뎠습니다. ${activityText} 활동 수준이므로 ${appLabel}가 라이프스타일에 맞춰 목표를 조정합니다.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '개인화된 칼로리 목표',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI 기반 식사 인식',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '자세한 매크로 영양소 분해',
			'onboarding.reinforcement.goalLifestyle.button' => '시작하기',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '목표',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '활동적',
			'tabs.dashboard' => '대시보드',
			'tabs.history' => '기록',
			'home.aiSummary.title' => 'AI 요약',
			'home.aiSummary.logMore' => '개인화된 AI 인사이트를 얻으려면 다음 며칠 동안 식사를 더 기록하세요.',
			'home.aiSummary.loading' => '요약 불러오는 중...',
			'home.aiSummary.mealCount' => ({required Object count}) => '기록된 식사 ${count}건',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => '균형 점수 ${score}',
			'home.aiSummary.topFoods' => '자주 먹는 음식',
			'home.aiSummary.trendUp' => '칼로리 증가 추세',
			'home.aiSummary.trendDown' => '칼로리 감소 추세',
			'home.aiSummary.trendSteady' => '칼로리 안정적',
			'home.aiSummary.generatedAt' => ({required Object time}) => '업데이트: ${time}',
			'home.dailyGoal.title' => '일일 목표 설정',
			'home.dailyGoal.titleSet' => '설정된 일일 목표',
			'home.dailyGoal.description' => '웰니스 여정을 시작할 준비가 되셨나요? 아래에 일일 칼로리 목표를 설정하여 진행을 시작하세요.',
			'home.dailyGoal.descriptionSet' => '나침반이 설정되었습니다! 이것이 안내할 일일 칼로리 목표입니다.',
			'home.dailyGoal.yourGoal' => '당신의 목표',
			'home.dailyGoal.goal' => '목표',
			'home.dailyGoal.dailyCalories' => '일일 칼로리 (kcal)',
			'home.dailyGoal.setGoal' => '목표 설정',
			'home.dailyGoal.intake' => '섭취',
			'home.dailyGoal.burned' => '소모',
			'home.dailyGoal.weightImpact' => '체중 영향',
			'home.dailyGoal.estLoss' => '예상 감소',
			'home.dailyGoal.estGain' => '예상 증가',
			'home.dailyGoal.kcal' => '킬로칼로리(kcal)',
			'home.dailySummary.title' => '오늘 요약',
			'home.dailySummary.calories' => '칼로리',
			'home.dailySummary.carbs' => '탄수화물',
			'home.dailySummary.protein' => '단백질',
			'home.dailySummary.fat' => '지방',
			'home.dailySummary.fiber' => '식이섬유',
			'home.dailySummary.grams' => '그램',
			'home.dailySummary.chartAccessibilityLabel' => '매크로 차트',
			'home.intakeProgress.title' => '오늘의 매크로 분포',
			'home.intakeProgress.target' => '목표',
			'home.intakeProgress.current' => '현재',
			'home.intakeHistory.title' => '7일 매크로 기록',
			'home.intakeHistory.trendTitle' => '오늘 추세',
			'home.intakeHistory.peakHour' => ({required Object hour}) => '최대: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => '아직 기록이 없습니다',
			'home.intakeHistory.startLogging' => '식사를 기록하면\n7일 매크로 추세를 여기서 볼 수 있습니다',
			'home.mealLog.title' => '기록된 식사',
			'home.mealLog.emptyMessage' => '마지막 식사를 사진으로 찍어 여기서 기록하세요.',
			'home.mealLog.noMealsToday' => '오늘 기록된 식사가 없습니다',
			'home.mealLog.seeAllMeals' => '모든 식사 보기',
			'home.mealDescription.title' => 'AI로 빠르게 추가',
			'home.mealDescription.description' => '식사를 설명하면 AI가 세부사항을 처리합니다.',
			'home.mealDescription.hint' => '예: 아침으로 큰 오트밀 한 그릇에 바나나 슬라이스 한 개와 웨이 한 스쿱을 먹었어요 ...',
			'home.mealDescription.analyzeMeal' => '식사 분석',
			'home.favoriteMeals.title' => '즐겨찾기 식사',
			'home.favoriteMeals.description' => '자주 먹는 식사를 빠르게 추가하세요.',
			'home.favoriteMeals.noFavorites' => '아직 즐겨찾기 식사가 없습니다.',
			'home.favoriteMeals.addFavoriteHint' => '식사에 있는 별표를 눌러 즐겨찾기로 표시하세요.',
			'home.favoriteMeals.seeAll' => '모두 보기',
			'home.favoriteMeals.add' => '추가',
			'home.mealSnap.title' => '식사를 찍고 추적하기',
			'home.mealSnap.description' => '카메라로 음식을 촬영해 AI 분석을 받아보세요.',
			'home.mealSnap.openCamera' => '카메라 열기',
			'home.mealSnap.gallery' => '갤러리',
			'home.mealSnap.compressingPhoto' => '사진 최적화 중…',
			'home.mealSnap.uploadingPhoto' => '사진 업로드 중…',
			'home.connectHealth.title' => 'Health Connect와 동기화',
			'home.connectHealth.description' => '영양 데이터를 Health Connect와 동기화하세요',
			'home.connectHealth.install' => '설치',
			'home.connectHealth.dataUseDescription' => '목표에 소모 칼로리를 반영하고 기록한 식사를 공유합니다',
			'home.connectHealth.installOrUpdate' => '설치 또는 업데이트',
			'home.connectHealth.connect' => '연결',
			'history.noMeals' => '기록된 식사가 없습니다',
			'history.emptyMessage' => '마지막 식사를 사진으로 찍어 여기서 기록하세요.',
			'history.today' => '오늘',
			'history.yesterday' => '어제',
			'meal.ohNo' => '앗!',
			'meal.delete' => '삭제',
			'meal.editMeal' => '식사 편집',
			'meal.addMeal' => '식사 추가',
			'meal.saveMeal' => '식사 저장',
			'meal.save' => '저장',
			'meal.mealName' => '식사 이름',
			'meal.mealNameHint' => '예: 스크램블 에그와 토스트',
			'meal.nameRequired' => '저장하기 전에 식사 이름을 입력하세요.',
			'meal.mealQuantity' => '식사 수량',
			'meal.mealQuantityHint' => '예: 1그릇, 2조각',
			'meal.timeOfMeal' => '식사 시간',
			'meal.timeOfMealHint' => '식사한 시간을 선택하세요',
			'meal.mealType' => '식사 유형',
			'meal.nutrition.calories' => '칼로리',
			'meal.nutrition.carbs' => '탄수화물 (g)',
			'meal.nutrition.protein' => '단백질 (g)',
			'meal.nutrition.fat' => '지방 (g)',
			'meal.nutrition.fiber' => '식이섬유 (g)',
			'meal.deleteConfirmation.title' => '식사 삭제',
			'meal.deleteConfirmation.message' => '이 식사 항목을 삭제하시겠습니까?',
			'meal.deleteConfirmation.cancel' => '취소',
			'meal.deleteConfirmation.delete' => '삭제',
			'meal.addedToLog' => '식사가 기록에 추가되었습니다!',
			'meal.couldNotAdd' => ({required Object error}) => '식사를 추가할 수 없습니다: ${error}',
			'meal.savedSuccessfully' => '식사가 성공적으로 추가되었습니다!',
			'meal.updatedSuccessfully' => '식사가 성공적으로 업데이트되었습니다!',
			'meal.errorSaving' => ({required Object error}) => '식사 저장 오류: ${error}',
			'meal.removedFromFavorites' => '즐겨찾기에서 제거되었습니다!',
			'meal.savedAsFavorite' => '식사가 즐겨찾기로 저장되었습니다!',
			'meal.unfavorite' => '즐겨찾기 해제',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '즐겨찾기 업데이트 실패: ${error}',
			'meal.feedbackThanks' => '피드백 감사합니다!',
			'meal.reanalysisUpdated' => '피드백을 반영해 식사 분석을 업데이트했습니다.',
			'meal.failedToProcess' => ({required Object error}) => '처리 실패: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '이미지 처리 실패: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '이미지 압축 오류: ${error}',
			'meal.imageTooLarge' => '이 사진은 압축한 후에도 여전히 1 MB를 초과합니다. 다른 사진을 선택해 주세요.',
			'meal.failedToSave' => '데이터 저장 실패. 다시 시도해주세요.',
			'meal.skip' => '건너뛰기',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => '질문 ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => '사용 가능한 질문이 없습니다',
			'meal.questionFlow.next' => '다음',
			'meal.questionFlow.continueLabel' => '계속',
			'meal.questionFlow.countQuestion' => '수량 선택',
			'meal.questionFlow.itemSizeQuestion' => '크기 선택',
			'meal.questionFlow.portionSizeQuestion' => '분량 선택',
			'meal.questionFlow.option6plus' => '6개 이상',
			'meal.questionFlow.optionSmall' => '작음',
			'meal.questionFlow.optionRegular' => '보통',
			'meal.questionFlow.optionLarge' => '큼',
			'meal.questionFlow.optionThin' => '얇음',
			'meal.questionFlow.optionThick' => '두꺼움',
			'meal.questionFlow.optionMini' => '미니',
			'meal.questionFlow.optionStuffed' => '속 채움',
			'meal.questionFlow.optionHeavy' => '무거움',
			'meal.questionFlow.optionSmaller' => '더 작게',
			'meal.questionFlow.optionTypical' => '일반',
			'meal.questionFlow.optionLarger' => '더 크게',
			'meal.questionFlow.useEstimate' => '추정값 사용',
			'meal.questionFlow.numberRange' => ({required Object min, required Object max, required Object step}) => '${min}부터 ${max}까지, ${step} 간격',
			'meal.questionFlow.invalidNumber' => '허용 범위 내의 값을 입력하세요',
			'meal.analysis.title' => '식사 분석 중',
			'meal.analysis.stepStarted' => '시작 중…',
			'meal.analysis.stepDecomposition' => '식사 파악 중…',
			'meal.analysis.stepIngredients' => '재료를 영양 데이터와 매칭하는 중…',
			'meal.analysis.stepUncertainty' => '신뢰도 확인 중…',
			'meal.analysis.stepMealTypeQuestion' => '거의 완료되었습니다…',
			'meal.analysis.stepResult' => '결과 정리 중…',
			'meal.analysis.stepError' => '문제가 발생했습니다',
			'meal.analysis.providerUnavailable' => '식사 분석 서비스가 일시적으로 이용할 수 없습니다. 다시 시도해 주세요.',
			'meal.analysis.invalidModelOutput' => '식사 분석 결과를 이해할 수 없었습니다. 다시 시도해 주세요.',
			'meal.analysis.nutritionDataUnavailable' => '영양 정보를 일시적으로 이용할 수 없습니다. 다시 시도해 주세요.',
			'meal.analysis.analysisUnavailable' => '식사 분석을 일시적으로 이용할 수 없습니다. 다시 시도해 주세요.',
			'meal.analysis.unresolvedNutrition' => '이 식사에 대한 영양 정보를 안전하게 일치시킬 수 없었습니다. 더 자세한 정보를 추가해 보세요.',
			'meal.analysis.noFoodTip' => '음식이 감지되지 않았습니다. 다른 사진이나 설명을 시도해 보세요.',
			'meal.analysis.stepDefault' => '식사 분석 중…',
			'meal.analysis.progressUnderstand' => '식사 파악 중',
			'meal.analysis.progressMatch' => '재료 영양 조회 중',
			'meal.analysis.progressCheck' => '분량 및 신뢰도 확인 중',
			'meal.analysis.progressMealType' => '식사 유형 선택 중',
			'meal.analysis.progressFinish' => '칼로리 및 매크로 계산 중',
			'meal.analysis.detectedIngredientHeading' => '식별된 재료',
			'meal.analysis.ingredientsOverflow' => ({required Object count}) => '${count}개 더',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '${count}개의 재료가 감지되었습니다',
			'meal.analysis.ingredientsPending' => '재료 스캔 중…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '“${text}”',
			'meal.analysis.calorieRange' => ({required Object min, required Object max}) => '추정 범위: ${min}–${max} kcal',
			'meal.analysis.offlineTip0' => '팁: 완벽함보다 꾸준함이 중요합니다—정기적인 기록이 중요한 패턴을 드러냅니다.',
			'meal.analysis.offlineTip1' => '팁: 사진은 자연광과 위에서 내려다보는 구도가 분량 추정에 도움이 됩니다.',
			'meal.analysis.offlineTip2' => '팁: 음료, 소스, 식용유도 칼로리를 추가하니 꼭 언급하세요.',
			'meal.analysis.offlineTip3' => '팁: 빠른 분량 표시(예: 1그릇, 큰 커피)는 추정을 훨씬 정확하게 만듭니다.',
			'meal.analysis.offlineTip4' => '팁: 식사 후 기록해도 습관을 기르는 데 도움이 됩니다; 완벽할 필요는 없습니다.',
			'meal.analysis.offlineTip5' => '팁: 조리 방식(튀김 vs 구이 등)에 따라 칼로리가 많이 달라지면 조리법을 알려주세요.',
			'meal.feedback.title' => '어떤 점이 잘못되었나요?',
			'meal.feedback.subtitle' => '분석 개선을 위해 한 가지 이상 문제를 선택해주세요.',
			'meal.feedback.tellUsMore' => '자세히 알려주세요',
			'meal.feedback.describeIncorrect' => '무엇이 잘못되었는지 설명해주세요',
			'meal.feedback.submit' => '제출',
			'meal.feedback.issueFoodIdentification' => '음식 식별',
			'meal.feedback.issuePortionSize' => '분량',
			'meal.feedback.issueCalorieDistribution' => '칼로리 분포',
			'meal.feedback.issueMacrosWrong' => '매크로가 잘못됨',
			'meal.feedback.issueMissingItems' => '누락된 항목',
			'meal.feedback.issueExtraItems' => '불필요한 항목',
			'meal.feedback.issueOther' => '기타',
			'favorites.title' => '즐겨찾기',
			'favorites.empty' => '아직 즐겨찾기 식사가 없습니다.',
			'favorites.searchPlaceholder' => '즐겨찾기 식사 검색',
			'favorites.searchEmptyTitle' => '검색과 일치하는 즐겨찾기가 없습니다',
			'favorites.searchEmptySubtitle' => '다른 식사 이름, 수량 또는 식사 유형을 시도해보세요.',
			'favorites.sortLabel' => '즐겨찾기 정렬',
			'favorites.undo' => '되돌리기',
			'favorites.removed' => ({required Object name}) => '${name}을(를) 즐겨찾기에서 제거했습니다',
			'favorites.sortOptions.recent' => '최근',
			'favorites.sortOptions.calories' => '칼로리',
			'favorites.sortOptions.alphabetical' => '가-나',
			'profile.title' => '프로필',
			'profile.noProfileData' => '프로필 데이터가 없습니다',
			'profile.yourProfile' => '내 프로필',
			'profile.viewAndManage' => '건강 정보를 보고 관리하세요',
			'profile.sections.profile' => '프로필',
			'profile.sections.basicInformation' => '기본 정보',
			'profile.sections.goalsAndActivity' => '목표 및 활동',
			'profile.sections.calculatedValues' => '계산된 값',
			'profile.gender' => '성별',
			'profile.height' => '키',
			'profile.weight' => '체중',
			'profile.age' => '나이',
			'profile.weightGoal' => '체중 목표',
			'profile.targetWeight' => '목표 체중',
			'profile.activityLevel' => '활동 수준',
			'profile.healthMetrics' => '건강 지표',
			'profile.notSet' => '설정 안 됨',
			'profile.years' => '세',
			'profile.updatedSuccessfully' => '프로필이 성공적으로 업데이트되었습니다!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '일일 목표',
			'profile.calculatedValues.calPerDay' => 'cal/일',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => '건강 점수',
			'healthScore.whyThisScore' => '이 점수는 왜?',
			'healthScore.note' => '이 점수는 식별된 재료와 영양 밀도를 기반으로 한 AI 추정치입니다. 개인화된 식단 조언은 전문가와 상담하세요.',
			'healthScore.unhealthy' => '건강하지 않음',
			'healthScore.healthy' => '건강함',
			'healthScore.neutral' => '보통',
			'editProfile.title' => '프로필 편집',
			'editProfile.sections.personalInformation' => '개인 정보',
			'editProfile.sections.physicalMeasurements' => '신체 치수',
			'editProfile.sections.goalsAndActivity' => '목표 및 활동',
			'editProfile.gender' => '성별',
			'editProfile.dateOfBirth' => '생년월일',
			'editProfile.height' => '키',
			'editProfile.weight' => '체중',
			'editProfile.weightGoal' => '체중 목표',
			'editProfile.activityLevel' => '활동 수준',
			'editProfile.metric' => '미터법',
			'editProfile.imperial' => '영국식',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => '파운드(lbs)',
			'editProfile.metricCm' => '미터법 (cm)',
			'editProfile.imperialFtIn' => '피트/인치 (ft/in)',
			'editProfile.metricKg' => '미터법 (kg)',
			'editProfile.imperialLbs' => '파운드 (lbs)',
			'editProfile.genders.male' => '남성',
			'editProfile.genders.female' => '여성',
			'editProfile.genders.other' => '기타',
			'editProfile.weightGoals.loseWeight.name' => '체중 감량',
			'editProfile.weightGoals.loseWeight.description' => '체중을 줄이기 위해 칼로리 적자를 만듭니다',
			'editProfile.weightGoals.maintainWeight.name' => '체중 유지',
			'editProfile.weightGoals.maintainWeight.description' => '현재 체중을 유지합니다',
			'editProfile.weightGoals.gainWeight.name' => '체중 증가',
			'editProfile.weightGoals.gainWeight.description' => '체중을 늘리기 위해 칼로리 잉여를 만듭니다',
			'editProfile.activityLevels.sedentary.name' => '거의 활동 없음',
			'editProfile.activityLevels.sedentary.description' => '운동 거의 또는 전혀 없음',
			'editProfile.activityLevels.lightlyActive.name' => '가벼운 활동',
			'editProfile.activityLevels.lightlyActive.description' => '주 1-3회 가벼운 운동',
			'editProfile.activityLevels.moderatelyActive.name' => '보통 활동',
			'editProfile.activityLevels.moderatelyActive.description' => '주 3-5회 중간 강도 운동',
			'editProfile.activityLevels.veryActive.name' => '매우 활동적',
			'editProfile.activityLevels.veryActive.description' => '주 6-7회 고강도 운동',
			'editProfile.activityLevels.extremelyActive.name' => '극도로 활동적',
			'editProfile.activityLevels.extremelyActive.description' => '매우 고강도 운동 또는 육체 노동',
			'settings.title' => '설정',
			'settings.sections.profile' => '프로필',
			'settings.sections.localization' => '지역화',
			'settings.sections.notifications' => '알림',
			'settings.sections.healthConnect' => 'HEALTH CONNECT 설정',
			'settings.sections.supportAndLegal' => '지원 및 법적 고지',
			'settings.sections.about' => '앱 정보',
			'settings.sections.dangerZone' => '위험 구역',
			'settings.sections.developer' => '개발자',
			'settings.editProfile.title' => '프로필 편집',
			'settings.editProfile.subtitle' => '개인 정보를 업데이트하세요',
			'settings.language.title' => '언어',
			'settings.language.subtitle' => '선호하는 언어를 선택하세요',
			'settings.language.searchHint' => '언어 검색...',
			'settings.language.noResults' => '결과를 찾을 수 없습니다',
			'settings.heightUnit.title' => '키 단위',
			'settings.weightUnit.title' => '체중 단위',
			'settings.mealReminders.title' => '식사 알림',
			'settings.mealReminders.subtitle' => '정시 알림으로 계획을 지키세요',
			'settings.theme.title' => '테마',
			'settings.theme.light' => '라이트',
			'settings.theme.dark' => '다크',
			'settings.theme.system' => '시스템',
			'settings.sendFeedback.title' => '피드백 보내기',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} 개선에 도움을 주세요',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} 앱 피드백',
			'settings.sendFeedback.emailBodyPrefix' => '다음에 피드백을 작성해주세요:',
			'settings.sendFeedback.appVersion' => '앱 버전',
			'settings.sendFeedback.device' => '기기',
			'settings.sendFeedback.osVersion' => 'OS 버전',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '식사 기록 내보내기',
			'settings.exportMealHistory.subtitle' => '기록한 식사를 CSV로 공유하세요',
			'settings.exportMealHistory.shareText' => 'Calorify 식사 기록 내보내기',
			'settings.exportMealHistory.failed' => ({required Object error}) => '식사 기록을 내보낼 수 없습니다: ${error}',
			'settings.clearAllData.title' => '모든 데이터 삭제',
			'settings.clearAllData.subtitle' => '모든 정보를 되돌릴 수 없이 삭제합니다',
			'settings.clearAllData.localOnlySubtitle' => '이 기기에 저장된 Calorify 데이터 삭제',
			'settings.clearAllData.confirmationTitle' => '모든 데이터를 삭제하시겠습니까?',
			'settings.clearAllData.confirmationMessage' => '이 작업은 되돌릴 수 없습니다. 기록된 모든 식사, 즐겨찾기 및 프로필 설정이 영구적으로 삭제됩니다.',
			'settings.clearAllData.localOnlyConfirmationMessage' => '이 기기에서 기록한 식사, 즐겨찾기 및 프로필 설정을 영구적으로 삭제합니다. Health Connect에 이미 공유한 식사와 Health Connect 접근 권한은 설정 > Health Connect에서 별도로 관리됩니다.',
			'settings.clearAllData.cancel' => '취소',
			'settings.clearAllData.clearEverything' => '모두 삭제',
			'settings.debugOptions.title' => '디버그 옵션',
			'settings.developerModeEnabled' => '개발자 모드가 활성화되었습니다!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '권한 보기 및 관리',
			'settings.healthConnect.unavailable.title' => 'Health Connect 사용 불가',
			'settings.healthConnect.unavailable.description' => '이 기기에서는 Health Connect를 사용할 수 없습니다. Android 9 이상에서는 Play Store에서 Health Connect를 설치하거나 Android 14 이상으로 업데이트하세요.',
			'settings.healthConnect.unavailable.unsupportedDescription' => '이 기기는 Health Connect를 지원하지 않습니다.',
			'settings.healthConnect.updateRequired.title' => 'Health Connect 확인이 필요합니다',
			'settings.healthConnect.updateRequired.description' => '접근 권한을 관리하기 전에 Health Connect를 설치하거나 업데이트하세요.',
			'settings.healthConnect.updateRequired.action' => '설치 또는 업데이트',
			'settings.healthConnect.permissions.title' => '권한',
			'settings.healthConnect.permissions.description' => 'Health Connect 통합을 제공하기 위해 다음 권한이 요청됩니다:',
			'settings.healthConnect.permissions.granted' => '허용됨',
			'settings.healthConnect.permissions.notGranted' => '허용되지 않음',
			'settings.healthConnect.permissions.caloriesBurned.title' => '총 소모 칼로리 읽기',
			'settings.healthConnect.permissions.caloriesBurned.description' => '앱이 Health Connect에서 총 소모 칼로리를 읽을 수 있게 합니다.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '이 권한은 앱에 일일 소모 칼로리를 표시하여 하루 전체 에너지 소비를 이해하는 데 사용됩니다.',
			'settings.healthConnect.permissions.nutritionRead.title' => '영양 데이터 읽기',
			'settings.healthConnect.permissions.nutritionRead.description' => '앱이 Health Connect에서 영양 데이터를 읽을 수 있게 합니다.',
			'settings.healthConnect.permissions.nutritionRead.usage' => '이 권한은 다른 앱이 Health Connect에 기록한 영양 정보를 읽어 영양의 종합적인 뷰를 제공합니다.',
			'settings.healthConnect.permissions.nutritionWrite.title' => '영양 데이터 쓰기',
			'settings.healthConnect.permissions.nutritionWrite.description' => '앱이 Health Connect에 영양 데이터를 쓸 수 있게 합니다.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '이 권한은 기록한 식사를 Health Connect와 동기화하여 다른 건강 및 피트니스 앱에서도 영양 데이터를 사용할 수 있게 합니다.',
			'settings.healthConnect.managePermissions' => '권한 관리',
			'settings.healthConnect.openSettings' => 'Health Connect 설정 열기',
			'settings.healthConnect.disconnect' => 'Health Connect 연결 해제',
			'settings.healthConnect.disconnectConfirmationTitle' => 'Health Connect 연결을 해제할까요?',
			'settings.healthConnect.disconnectConfirmationMessage' => 'Calorify의 Health Connect 접근 권한이 해제됩니다. 이미 기록된 데이터는 삭제되지 않습니다.',
			'settings.healthConnect.disconnectConfirmationAction' => '연결 해제',
			'settings.healthConnect.deleteSyncedMeals' => 'Health Connect에서 Calorify 식사 삭제',
			'settings.healthConnect.deleteSyncedMealsConfirmationTitle' => '동기화된 식사를 삭제할까요?',
			'settings.healthConnect.deleteSyncedMealsConfirmationMessage' => '이 버전의 Calorify가 Health Connect에 동기화한 식사를 삭제할까요? 기기의 식사 기록은 변경되지 않습니다. 이전 Calorify 항목은 Health Connect의 데이터 관리에서 별도로 삭제해야 할 수 있습니다.',
			'settings.healthConnect.deleteSyncedMealsConfirmationAction' => '동기화된 식사 삭제',
			'settings.healthConnect.deleteSyncedMealsSuccess' => 'Health Connect에서 Calorify 식사를 삭제했습니다.',
			'settings.healthConnect.deleteSyncedMealsFailed' => '동기화된 식사를 삭제하지 못했습니다. 다시 시도해 주세요.',
			'settings.healthConnect.connectionPartial' => '일부 Health Connect 기능이 활성화되었습니다.',
			'settings.healthConnect.connectionComplete' => 'Health Connect 기능 두 개가 모두 활성화되었습니다.',
			'settings.healthConnect.actionFailed' => 'Health Connect를 열 수 없습니다. 다시 시도해 주세요.',
			'settings.healthConnect.requestPermissions' => '권한 요청',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '권한 요청이 취소되었거나 실패했습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용하세요.',
			'settings.healthConnect.permissionRequestFailed' => '권한을 요청할 수 없습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용하세요.',
			'settings.healthConnect.requestingPermissions' => '요청 중...',
			'settings.about.title' => '앱 정보',
			'settings.about.tagline' => '빠르고 무료이며 프라이버시를 우선시하는 칼로리 인식',
			'settings.about.ourStory.title' => '우리의 이야기',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel}는 단순한 불편함에서 시작했습니다: 대부분의 칼로리 추적 앱은 지나치게 복잡하거나, 끊임없는 수동 입력을 요구하거나, 높은 구독료를 청구하거나, 프라이버시를 희생합니다.\n\n혼자 개발자로서 저는 더 간단하고 공정한 무언가를 만들고 싶었습니다 — 노력을 줄이는 AI를 사용하고, 빠르고 무료로 유지되며, 건강 데이터를 존중하는 앱을요.\n\n${appLabel}는 제가 존재하길 바랐던 앱입니다: 계정 불필요, 추적 없음, 광고 없음 — 명확하고 실용적인 인사이트와 당신의 건강 목표만 남깁니다.',
			'settings.about.privacy.title' => '개인정보 보호는 중요합니다',
			'settings.about.privacy.description' => '개인정보 보호는 부수적인 고려사항이 아니라 설계 원칙입니다. 실제로 이것이 의미하는 바는 다음과 같습니다:',
			'settings.about.privacy.noAccounts' => '계정 불필요\n바로 앱을 사용하세요. 가입이나 신원 확인이 필요 없습니다.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '추적 없음\n${appLabel}는 활동을 모니터링하거나 사용 프로필을 만들거나 다른 앱이나 웹사이트에서 사용자를 추적하지 않습니다.',
			'settings.about.privacy.analyticsDisclosure' => ({required Object appLabel}) => '제한적인 분석 및 진단\n${appLabel}은 안정성 향상을 위해 기본 앱 이벤트와 충돌 진단을 사용합니다. 건강 기록 값은 광고에 사용되거나 판매되지 않습니다.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '광고 없음으로 설계됨\n${appLabel}는 광고나 데이터 기반 수익화 없이 작동하도록 만들어졌습니다.',
			'settings.about.privacy.noDataSelling' => '데이터 판매 없음\n건강 데이터는 제3자에게 판매되거나 공유되지 않습니다.',
			'settings.about.privacy.localStorage' => '로컬 우선 저장\n데이터는 기기에 저장됩니다.',
			'settings.about.privacy.privacyPolicy' => '개인정보 처리방침',
			'settings.about.developer.title' => '단독 개발자가 제작',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}는 차분하고 프라이버시를 존중하는 건강 소프트웨어를 만드는 데 집중하는 단독 개발자가 제작 및 유지합니다.\n\n피드백은 직접 읽히며 앱의 방향을 결정하는 데 도움이 됩니다.',
			'settings.about.developer.website' => '웹사이트',
			'settings.about.developer.email' => '이메일',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel}이 마음에 드시나요?',
			'settings.about.feedback.description' => ({required Object appLabel}) => '여러분의 피드백은 ${appLabel}을 모두에게 더 좋게 만듭니다.',
			'settings.about.feedback.rateApp' => 'Play Store에 평가하기',
			'settings.about.feedback.sendFeedback' => '피드백 보내기',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify 버전 ${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => '빌드 ${buildNumber}',
			'reminders.title' => '알림으로 계획을 지키세요',
			'reminders.description' => '식사 기록을 잊지 않도록 부드러운 알림을 받아 일관된 영양 목표를 유지하세요',
			'reminders.notificationsEnabled' => '알림 사용 설정됨',
			'reminders.notificationsDisabled' => '알림 사용 중지됨',
			'reminders.enabledSubtitle' => '식사 알림을 받습니다',
			'reminders.disabledSubtitle' => '식사 알림을 받으려면 알림을 활성화하세요',
			'reminders.mealReminders' => '식사 알림',
			'reminders.breakfast' => '아침',
			'reminders.lunch' => '점심',
			'reminders.dinner' => '저녁',
			'reminders.snack' => '간식',
			'reminders.unknown' => '알 수 없음',
			'reminders.change' => '변경',
			'reminders.enableNotifications' => '알림 활성화',
			'reminders.skipForNow' => '일단 건너뛰기',
			'reminders.saveChanges' => '변경사항 저장',
			'reminders.enabledSuccessfully' => '알림이 성공적으로 활성화되었습니다!',
			'reminders.permissionDenied' => '알림 권한이 거부되었습니다',
			'reminders.errorEnabling' => ({required Object error}) => '알림 활성화 오류: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '설정 완료 오류: ${error}',
			'notifications.breakfast.title' => '아침 시간이에요! 🍳',
			'notifications.breakfast.body' => '아침 기록하는 것을 잊지 마세요',
			'notifications.lunch.title' => '점심 시간이에요! 🥗',
			'notifications.lunch.body' => '점심을 기록할 시간이에요',
			'notifications.dinner.title' => '저녁 시간이에요! 🍽️',
			'notifications.dinner.body' => '저녁 기록하는 것을 잊지 마세요',
			'notifications.snack.title' => '간식 시간이에요! 🍎',
			'notifications.snack.body' => '건강한 간식을 기록할 시간이에요',
			'notifications.test.title' => '테스트 알림',
			'login.title' => '로그인',
			'login.signInWithGoogle' => 'Google로 로그인',
			'login.signInFailed' => 'Google 로그인에 실패했거나 취소되었습니다.',
			'disclaimer.pleaseNote' => '알아두세요',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel}는 추정된 영양 정보를 제공합니다. 정확성은 입력과 음식의 변이에 따라 달라집니다. 참고용으로 사용하시고, 개인화된 식단 조언은 전문가와 상담하세요.',
			'disclaimer.snap.portionSize.title' => '분량',
			'disclaimer.snap.portionSize.description' => '추정치의 정확성은 분량을 얼마나 정확히 평가하느냐에 크게 좌우됩니다.',
			'disclaimer.snap.preparationMethods.title' => '조리 방법',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '조리 방법은 음식의 영양 성분을 크게 바꿀 수 있습니다. ${appLabel}의 추정치는 항상 이러한 변이를 모두 반영하지 않을 수 있습니다.',
			_ => null,
		} ?? switch (path) {
			'disclaimer.snap.ingredients.title' => '재료',
			'disclaimer.snap.ingredients.description' => '숨겨진 재료가 많은 복잡한 요리는 정확도가 떨어질 수 있습니다.',
			'disclaimer.snap.databaseLimitations.title' => '데이터베이스 한계',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}의 음식 데이터베이스는 광범위하지만 모든 음식 항목이나 변형을 포함하지 않을 수 있습니다.',
			'disclaimer.weightEstimate.title' => '체중 예측에 관하여',
			'disclaimer.weightEstimate.description' => '예상 체중 변화는 단순한 칼로리 소비 vs 섭취 모델에 기반한 이론적 추정치입니다. 이는 동기부여용 안내이며 실제 체중 예측을 위한 수단이 아닙니다.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '칼로리 정확도',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '이 추정치는 기록된 칼로리 섭취 및 소비의 정확성에 따라 달라집니다. 부정확한 기록은 부정확한 예측을 초래합니다.',
			'disclaimer.weightEstimate.biologicalFactors.title' => '개인 생리적 요인',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '실제 체중 변화는 신진대사, 호르몬, 수면, 스트레스, 수분 상태 및 ${appLabel}가 측정할 수 없는 기타 개인적 요인의 영향을 받습니다.',
			'disclaimer.weightEstimate.waterWeight.title' => '수분 체중 및 변동',
			'disclaimer.weightEstimate.waterWeight.description' => '일상적인 체중은 수분 보유, 소화 및 시간에 따라 크게 변동할 수 있습니다. 이 추정치는 이러한 일일 변화를 반영하지 않습니다.',
			'disclaimer.weightEstimate.professionalGuidance.title' => '전문가 조언',
			'disclaimer.weightEstimate.professionalGuidance.description' => '이 추정치를 의료 결정에 사용하지 마세요. 개인화된 체중 관리 조언은 항상 의료 전문가나 공인 영양사와 상담하세요.',
			'disclaimer.healthMetrics.description' => '이 지표들은 신체의 에너지 필요량을 이해하고 영양 목표를 안내하는 데 도움이 됩니다.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '기초대사량(BMR)은 호흡 및 순환 같은 기본 기능을 유지하기 위해 휴식 시 신체가 소모하는 칼로리 수입니다. BMR은 나이, 성별, 키 및 체중에 따라 달라집니다. 더 높은 BMR은 일반적으로 근육량이 많거나 젊거나 남성일 때 나타나며, 더 낮은 BMR은 근육량이 적거나 고령이거나 여성일 때 나타나는 경향이 있습니다.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '총 일일 에너지 소비량(TDEE)은 BMR에 신체 활동 및 일상적인 움직임에 의한 칼로리를 포함한 하루 전체 소모 칼로리입니다. TDEE는 BMR과 활동 수준에 따라 달라집니다. 더 높은 TDEE는 일반적으로 더 활동적이거나 BMR이 높은 경우에 해당하며, 더 낮은 TDEE는 일상 활동이 적거나 BMR이 낮음을 시사합니다.',
			'disclaimer.healthMetrics.dailyGoal.title' => '일일 목표',
			'disclaimer.healthMetrics.dailyGoal.description' => '일일 목표는 TDEE와 체중 목표를 기반으로 권장되는 일일 칼로리 섭취량입니다. 체중 감량은 TDEE보다 적게 섭취하고, 체중 유지 시 TDEE와 비슷하게 섭취하며, 체중 증가 시 TDEE보다 더 많이 섭취합니다. 이는 건강한 속도로 원하는 체중 변화를 달성하는 데 도움을 줍니다.',
			'disclaimer.calorieExpenditure.title' => '칼로리 소모 추정',
			'disclaimer.calorieExpenditure.description' => 'Health Connect 데이터가 없을 때, 우리는 기초대사량(BMR)과 활동 수준(TDEE)을 사용해 오늘 소모한 칼로리를 하루 경과 비율에 맞춰 추정합니다.',
			'disclaimer.calorieExpenditure.howCalculated.title' => '추정 계산 방법',
			'disclaimer.calorieExpenditure.howCalculated.description' => '프로필을 기반으로 TDEE를 계산하고 경과한 시간(시 + 분) / 24를 곱해 지금까지 소모한 칼로리를 추정합니다.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '전문가 조언',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '이 추정치를 의료 결정에 사용하지 마세요. 개인화된 체중 관리 조언은 항상 의료 전문가나 공인 영양사와 상담하세요.',
			'watch.appTitle' => 'Calorify Watch',
			'watch.common.back' => '뒤로',
			'watch.common.cancel' => '취소',
			'watch.common.delete' => '삭제',
			'watch.common.retry' => '다시 시도',
			'watch.common.kcal' => 'kcal',
			'watch.common.gramsShort' => 'g',
			'watch.nutrition.nutrient' => '영양소',
			'watch.nutrition.grams' => ({required Object label, required Object value}) => '${label}, ${value} g',
			'watch.nutrition.protein' => '단백질',
			'watch.nutrition.carbs' => '탄수화물',
			'watch.nutrition.fat' => '지방',
			'watch.nutrition.fiber' => '식이섬유',
			'watch.sync.syncWithPhone' => '휴대전화와 동기화',
			'watch.sync.syncing' => '동기화 중…',
			'watch.sync.synced' => '동기화됨',
			'watch.sync.syncedJustNow' => '방금 동기화됨',
			'watch.sync.syncedMinutesAgo' => ({required Object minutes}) => '${minutes}분 전 동기화됨',
			'watch.sync.failed' => '동기화 실패',
			'watch.sync.phoneDisconnected' => '휴대전화 연결 끊김',
			'watch.sync.tapToSync' => '탭하여 동기화',
			'watch.sync.refreshFailed' => '새로고침할 수 없습니다. 휴대전화 연결을 확인하세요.',
			'watch.sync.openPhone' => '휴대전화에서 Calorify를 열고 새로고침을 탭하세요.',
			'watch.home.today' => '오늘',
			'watch.home.calorieSummary' => ({required Object goal, required Object consumed, required Object status}) => '${goal} 중 ${consumed} kcal 섭취했습니다. ${status}.',
			'watch.home.overGoal' => ({required Object calories}) => '${calories} 목표 초과',
			'watch.home.remaining' => ({required Object calories}) => '${calories} 남음',
			'watch.home.left' => ({required Object calories}) => '${calories} 남음',
			'watch.home.goal' => ({required Object calories}) => '${calories} kcal 목표',
			'watch.home.logMeal' => '식사 기록',
			'watch.home.todayMeals' => '오늘의 식사',
			'watch.home.todayMealsCount' => ({required Object count}) => '오늘의 식사, ${count}',
			'watch.home.viewMore' => ({required Object count}) => '${count}개 더 보기',
			'watch.home.viewMoreSemantics' => ({required Object count}) => '${count}개의 식사, 모두 보려면 탭하세요',
			'watch.home.noMeals' => '기록된 식사가 없습니다',
			'watch.home.noMealsSemantics' => '오늘 기록된 식사가 없습니다',
			'watch.home.tapLog' => '시작하려면 \'기록\'을 탭하세요',
			'watch.home.removedFromQueue' => '식사가 오프라인 대기열에서 제거되었습니다.',
			'watch.home.removedOffline' => '식사가 오프라인에서 제거되었습니다. 휴대전화가 다시 연결되면 동기화됩니다.',
			'watch.home.deleteFailed' => '식사를 삭제할 수 없습니다',
			'watch.history.title' => '오늘의 식사',
			'watch.history.refresh' => '식사 새로고침',
			'watch.history.loadFailed' => '식사를 불러올 수 없습니다',
			'watch.history.syncFailed' => '동기화할 수 없습니다',
			'watch.history.emptyTitle' => '아직 식사가 없습니다',
			'watch.history.emptyMessage' => '홈에서 식사를 기록하면 여기에 표시됩니다.',
			'watch.favorites.title' => '즐겨찾기',
			'watch.favorites.refresh' => '즐겨찾기 새로고침',
			'watch.favorites.loadFailed' => '즐겨찾기를 불러올 수 없습니다',
			'watch.favorites.syncFailed' => '동기화할 수 없습니다',
			'watch.favorites.emptyTitle' => '아직 즐겨찾기가 없습니다',
			'watch.favorites.emptyMessage' => '휴대전화 앱에서 식사를 별표로 표시하면 여기에서 원터치로 기록할 수 있습니다.',
			'watch.favorites.mealSemantics' => ({required Object name, required Object calories}) => '${name}, ${calories} kcal. 탭하여 기록하세요.',
			'watch.favorites.logged' => ({required Object name}) => '${name}이(가) 기록되었어요!',
			'watch.favorites.savedOffline' => ({required Object name}) => '${name}이(가) 오프라인으로 저장되었습니다. 휴대전화가 다시 연결되면 동기화됩니다.',
			'watch.favorites.saveFailed' => '식사를 저장할 수 없습니다. 다시 시도하세요.',
			'watch.favorites.log' => '기록',
			'watch.meal.semantics' => ({required Object name, required Object calories, required Object time}) => '${name}, ${calories} kcal, ${time}에 기록됨.',
			'watch.meal.longPressDelete' => '삭제하려면 길게 누르세요.',
			'watch.meal.deleteTitle' => '이 식사를 삭제하시겠어요?',
			'watch.voice.title' => '음성 식사 기록',
			'watch.voice.processing' => '식사를 확인하는 중…',
			'watch.voice.processingDescription' => '량과 영양성분을 추정 중입니다',
			'watch.voice.listening' => '듣는 중',
			'watch.voice.secondsLeft' => ({required Object seconds}) => '${seconds}초',
			'watch.voice.stop' => '녹음 중지',
			'watch.voice.start' => '탭하여 녹음 시작',
			'watch.voice.starting' => '마이크 시작 중…',
			'watch.voice.prompt' => '탭한 후 식사를 설명하세요',
			'watch.voice.tapToRetry' => '다시 시도하려면 탭하세요',
			'watch.voice.example' => '예: “로티 2장과 달”',
			'watch.voice.unavailable' => '음성 입력을 사용할 수 없습니다. 시계 설정에서 마이크 권한을 확인하세요.',
			'watch.voice.didNotStart' => '마이크가 시작되지 않았습니다. 탭하여 다시 시도하세요.',
			'watch.voice.startFailed' => '녹음을 시작할 수 없습니다. 마이크 권한을 확인하세요.',
			'watch.voice.allowMicrophone' => '음성으로 식사를 기록하려면 마이크 접근을 허용하세요.',
			'watch.voice.needsConnection' => '음성 인식에는 연결이 필요합니다. 탭하여 다시 시도하세요.',
			'watch.voice.microphoneUnavailable' => '마이크를 사용할 수 없습니다. 탭하여 다시 시도하세요.',
			'watch.voice.microphoneBusy' => '마이크가 사용 중입니다. 잠시 기다린 후 다시 시도하세요.',
			'watch.voice.languageUnsupported' => '음성 입력이 시계 언어를 지원하지 않습니다.',
			'watch.voice.temporarilyBusy' => '음성 입력이 일시적으로 바쁩니다. 잠시 기다렸다가 다시 시도하세요.',
			'watch.voice.notRecognized' => '잘 인식되지 않았습니다. 마이크를 탭하여 다시 시도하세요.',
			'watch.voice.noSpeech' => '음성이 감지되지 않았습니다. 마이크를 탭하여 다시 시도하세요.',
			'watch.voice.analysisFailed' => '분석에 실패했습니다. 다시 시도하세요.',
			'watch.voice.mealNotIdentified' => '해당 식사를 식별할 수 없습니다. 다르게 설명해 보세요.',
			'watch.result.title' => '식사 세부정보',
			'watch.result.savedOffline' => '오프라인으로 저장됨',
			'watch.result.logged' => '기록되었어요!',
			'watch.result.mealFound' => '식사 확인됨',
			'watch.result.estimatedEnergy' => '추정 열량',
			'watch.result.logMeal' => '식사 기록',
			'watch.result.logging' => '기록 중…',
			'watch.result.logAnother' => '다른 식사 기록',
			'watch.result.goingBack' => '뒤로 이동 중…',
			'watch.result.savedOfflineMessage' => '식사가 오프라인으로 저장되었습니다. 휴대전화가 다시 연결되면 동기화됩니다.',
			'watch.result.saveFailed' => '식사를 저장할 수 없습니다. 다시 시도하세요.',
			'common.betaTag' => '베타',
			'common.close' => '닫기',
			'common.kContinue' => '계속',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel}이 마음에 드시나요?',
			'feedbackRating.yes' => '네, 만족합니다',
			'feedbackRating.no' => '별로예요',
			'feedbackRating.rateStepHeading' => 'Play Store에 평가하기',
			'feedbackRating.emailStepHeading' => '이메일로 피드백 보내기',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '간단한 평점은 다른 사람들이 ${appLabel}을 찾는 데 도움이 되고 개발을 지속할 수 있게 합니다. 잠깐 평가해주실래요?',
			'feedbackRating.shareFeedbackViaEmail' => '여러분의 피드백이 다음 기능을 만듭니다 — 모든 메시지를 직접 읽습니다. 이메일로 의견을 보내시겠어요?',
			'feedbackRating.rateCta' => 'Play Store에 평가하기',
			'feedbackRating.maybeLater' => '나중에 할게요',
			'feedbackRating.sendFeedback' => '피드백 보내기',
			'feedbackRating.noThanks' => '괜찮아요',
			'feedbackRating.aboutUsDescription' => '작은 팀이 정성을 담아 만들었습니다. 우리는 프라이버시, 단순성, 더 나은 식습관 형성에 집중합니다.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel}의 제작자는 누구인지 궁금하신가요? ',
			'feedbackRating.aboutUsLinkLabel' => '회사 소개',
			'feedbackRating.thankYouMessage' => '감사합니다! 다음에 다시 묻겠습니다.',
			'health.syncFailed' => 'Health Connect로 동기화할 수 없습니다',
			'health.mealSynced' => '식사가 Health Connect에 동기화되었습니다',
			_ => null,
		};
	}
}
