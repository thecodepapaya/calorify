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
class TranslationsKo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override String get language => '한국어';
	@override String get flag => '🇰🇷';
	@override String appLabel({required Object env}) => 'Calorify${env}';
	@override late final _TranslationsErrorsKo errors = _TranslationsErrorsKo._(_root);
	@override late final _TranslationsOnboardingKo onboarding = _TranslationsOnboardingKo._(_root);
	@override late final _TranslationsTabsKo tabs = _TranslationsTabsKo._(_root);
	@override late final _TranslationsHomeKo home = _TranslationsHomeKo._(_root);
	@override late final _TranslationsHistoryKo history = _TranslationsHistoryKo._(_root);
	@override late final _TranslationsMealKo meal = _TranslationsMealKo._(_root);
	@override late final _TranslationsFavoritesKo favorites = _TranslationsFavoritesKo._(_root);
	@override late final _TranslationsProfileKo profile = _TranslationsProfileKo._(_root);
	@override late final _TranslationsHealthScoreKo healthScore = _TranslationsHealthScoreKo._(_root);
	@override late final _TranslationsEditProfileKo editProfile = _TranslationsEditProfileKo._(_root);
	@override late final _TranslationsSettingsKo settings = _TranslationsSettingsKo._(_root);
	@override late final _TranslationsRemindersKo reminders = _TranslationsRemindersKo._(_root);
	@override late final _TranslationsNotificationsKo notifications = _TranslationsNotificationsKo._(_root);
	@override late final _TranslationsLoginKo login = _TranslationsLoginKo._(_root);
	@override late final _TranslationsDisclaimerKo disclaimer = _TranslationsDisclaimerKo._(_root);
	@override late final _TranslationsCommonKo common = _TranslationsCommonKo._(_root);
	@override late final _TranslationsFeedbackRatingKo feedbackRating = _TranslationsFeedbackRatingKo._(_root);
	@override late final _TranslationsHealthKo health = _TranslationsHealthKo._(_root);
}

// Path: errors
class _TranslationsErrorsKo implements TranslationsErrorsEn {
	_TranslationsErrorsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get rateLimitExceeded => '요청이 너무 많습니다. 잠시 후 다시 시도해 주세요.';
	@override String get networkError => '네트워크 오류입니다. 인터넷 연결을 확인해 주세요.';
	@override String get unknownError => '문제가 발생했습니다. 잠시 후 다시 시도해 주세요.';
	@override String get loadingProfileData => '프로필 데이터를 불러오는 중 오류가 발생했습니다';
	@override String get somethingWentWrong => '문제가 발생했습니다.';
	@override String get retry => '재시도';
}

// Path: onboarding
class _TranslationsOnboardingKo implements TranslationsOnboardingEn {
	_TranslationsOnboardingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}에 오신 것을 환영합니다';
	@override String get subtitle => 'AI로 더 똑똑해진 개인 영양 동반자';
	@override String get getStarted => '시작하기';
	@override late final _TranslationsOnboardingFeaturesKo features = _TranslationsOnboardingFeaturesKo._(_root);
	@override late final _TranslationsOnboardingGenderKo gender = _TranslationsOnboardingGenderKo._(_root);
	@override late final _TranslationsOnboardingHeightKo height = _TranslationsOnboardingHeightKo._(_root);
	@override late final _TranslationsOnboardingWeightKo weight = _TranslationsOnboardingWeightKo._(_root);
	@override late final _TranslationsOnboardingAgeKo age = _TranslationsOnboardingAgeKo._(_root);
	@override late final _TranslationsOnboardingBmiScaleKo bmiScale = _TranslationsOnboardingBmiScaleKo._(_root);
	@override late final _TranslationsOnboardingWeightGoalKo weightGoal = _TranslationsOnboardingWeightGoalKo._(_root);
	@override late final _TranslationsOnboardingActivityLevelKo activityLevel = _TranslationsOnboardingActivityLevelKo._(_root);
	@override late final _TranslationsOnboardingHealthConnectKo healthConnect = _TranslationsOnboardingHealthConnectKo._(_root);
	@override late final _TranslationsOnboardingReinforcementKo reinforcement = _TranslationsOnboardingReinforcementKo._(_root);
}

// Path: tabs
class _TranslationsTabsKo implements TranslationsTabsEn {
	_TranslationsTabsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get dashboard => '대시보드';
	@override String get history => '기록';
}

// Path: home
class _TranslationsHomeKo implements TranslationsHomeEn {
	_TranslationsHomeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeAiSummaryKo aiSummary = _TranslationsHomeAiSummaryKo._(_root);
	@override late final _TranslationsHomeDailyGoalKo dailyGoal = _TranslationsHomeDailyGoalKo._(_root);
	@override late final _TranslationsHomeDailySummaryKo dailySummary = _TranslationsHomeDailySummaryKo._(_root);
	@override late final _TranslationsHomeIntakeProgressKo intakeProgress = _TranslationsHomeIntakeProgressKo._(_root);
	@override late final _TranslationsHomeIntakeHistoryKo intakeHistory = _TranslationsHomeIntakeHistoryKo._(_root);
	@override late final _TranslationsHomeMealLogKo mealLog = _TranslationsHomeMealLogKo._(_root);
	@override late final _TranslationsHomeMealDescriptionKo mealDescription = _TranslationsHomeMealDescriptionKo._(_root);
	@override late final _TranslationsHomeFavoriteMealsKo favoriteMeals = _TranslationsHomeFavoriteMealsKo._(_root);
	@override late final _TranslationsHomeMealSnapKo mealSnap = _TranslationsHomeMealSnapKo._(_root);
	@override late final _TranslationsHomeConnectHealthKo connectHealth = _TranslationsHomeConnectHealthKo._(_root);
}

// Path: history
class _TranslationsHistoryKo implements TranslationsHistoryEn {
	_TranslationsHistoryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get noMeals => '기록된 식사가 없습니다';
	@override String get emptyMessage => '마지막 식사를 사진으로 찍어 여기에서 기록해 보세요.';
	@override String get today => '오늘';
	@override String get yesterday => '어제';
}

// Path: meal
class _TranslationsMealKo implements TranslationsMealEn {
	_TranslationsMealKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '이런!';
	@override String get delete => '삭제';
	@override String get editMeal => '식사 편집';
	@override String get addMeal => '식사 추가';
	@override String get saveMeal => '식사 저장';
	@override String get save => '저장';
	@override String get mealName => '식사 이름';
	@override String get mealNameHint => '예: 스크램블 에그와 토스트';
	@override String get mealQuantity => '식사 수량';
	@override String get mealQuantityHint => '예: 그릇 1개, 조각 2개';
	@override String get timeOfMeal => '식사 시간';
	@override String get timeOfMealHint => '식사한 시간을 선택하세요';
	@override String get mealType => '식사 유형';
	@override late final _TranslationsMealNutritionKo nutrition = _TranslationsMealNutritionKo._(_root);
	@override late final _TranslationsMealDeleteConfirmationKo deleteConfirmation = _TranslationsMealDeleteConfirmationKo._(_root);
	@override String get addedToLog => '식사가 기록에 추가되었습니다!';
	@override String couldNotAdd({required Object error}) => '식사를 추가할 수 없습니다: ${error}';
	@override String get savedSuccessfully => '식사가 성공적으로 추가되었습니다!';
	@override String get updatedSuccessfully => '식사가 성공적으로 업데이트되었습니다!';
	@override String errorSaving({required Object error}) => '저장 중 오류가 발생했습니다: ${error}';
	@override String get removedFromFavorites => '즐겨찾기에서 제거되었습니다!';
	@override String get savedAsFavorite => '식사를 즐겨찾기에 저장했습니다!';
	@override String get unfavorite => '즐겨찾기 해제';
	@override String couldNotUpdateFavorite({required Object error}) => '즐겨찾기를 업데이트할 수 없습니다: ${error}';
	@override String get feedbackThanks => '피드백 감사합니다!';
	@override String get reanalysisUpdated => '피드백을 반영해 식사 분석을 업데이트했어요.';
	@override String failedToProcess({required Object error}) => '처리하지 못했습니다: ${error}';
	@override String failedToProcessImage({required Object error}) => '이미지를 처리하지 못했습니다: ${error}';
	@override String errorCompressingImage({required Object error}) => '이미지 압축 중 오류: ${error}';
	@override String get failedToSave => '데이터를 저장하지 못했습니다. 다시 시도해 주세요.';
	@override String get skip => '건너뛰기';
	@override late final _TranslationsMealVariationKo variation = _TranslationsMealVariationKo._(_root);
	@override late final _TranslationsMealAnalysisKo analysis = _TranslationsMealAnalysisKo._(_root);
	@override late final _TranslationsMealFeedbackKo feedback = _TranslationsMealFeedbackKo._(_root);
}

// Path: favorites
class _TranslationsFavoritesKo implements TranslationsFavoritesEn {
	_TranslationsFavoritesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즐겨찾기';
	@override String get empty => '즐겨찾는 식사가 아직 없습니다.';
	@override String get searchPlaceholder => '즐겨찾는 식사 검색';
	@override String get searchEmptyTitle => '검색과 일치하는 즐겨찾기가 없습니다';
	@override String get searchEmptySubtitle => '다른 식사 이름, 수량 또는 식사 유형으로 시도해 보세요.';
	@override String get sortLabel => '즐겨찾기 정렬';
	@override String get undo => '실행 취소';
	@override String removed({required Object name}) => '${name}이(가) 즐겨찾기에서 제거되었습니다';
	@override late final _TranslationsFavoritesSortOptionsKo sortOptions = _TranslationsFavoritesSortOptionsKo._(_root);
}

// Path: profile
class _TranslationsProfileKo implements TranslationsProfileEn {
	_TranslationsProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필';
	@override String get noProfileData => '프로필 데이터를 찾을 수 없습니다';
	@override String get yourProfile => '내 프로필';
	@override String get viewAndManage => '건강 정보를 확인하고 관리하세요';
	@override late final _TranslationsProfileSectionsKo sections = _TranslationsProfileSectionsKo._(_root);
	@override String get gender => '성별';
	@override String get height => '키';
	@override String get weight => '체중';
	@override String get age => '나이';
	@override String get weightGoal => '체중 목표';
	@override String get targetWeight => '목표 체중';
	@override String get activityLevel => '활동 수준';
	@override String get healthMetrics => '건강 지표';
	@override String get notSet => '미설정';
	@override String get years => '세';
	@override String get updatedSuccessfully => '프로필이 성공적으로 업데이트되었습니다!';
	@override late final _TranslationsProfileCalculatedValuesKo calculatedValues = _TranslationsProfileCalculatedValuesKo._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreKo implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '건강 점수';
	@override String get whyThisScore => '왜 이런 점수일까요?';
	@override String get note => '이 점수는 확인된 재료와 영양 밀도를 기반으로 한 AI 추정치입니다. 개인 맞춤 식단은 전문가와 상의하세요.';
	@override String get unhealthy => '건강하지 않음';
	@override String get healthy => '건강함';
	@override String get neutral => '중립';
}

// Path: editProfile
class _TranslationsEditProfileKo implements TranslationsEditProfileEn {
	_TranslationsEditProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 편집';
	@override late final _TranslationsEditProfileSectionsKo sections = _TranslationsEditProfileSectionsKo._(_root);
	@override String get gender => '성별';
	@override String get dateOfBirth => '생년월일';
	@override String get height => '키';
	@override String get weight => '체중';
	@override String get weightGoal => '체중 목표';
	@override String get activityLevel => '활동 수준';
	@override String get metric => '미터법';
	@override String get imperial => '야드파운드법';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => '미터법 (cm)';
	@override String get imperialFtIn => '야드파운드법 (ft/in)';
	@override String get metricKg => '미터법 (kg)';
	@override String get imperialLbs => '야드파운드법 (lbs)';
	@override late final _TranslationsEditProfileGendersKo genders = _TranslationsEditProfileGendersKo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsKo weightGoals = _TranslationsEditProfileWeightGoalsKo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsKo activityLevels = _TranslationsEditProfileActivityLevelsKo._(_root);
}

// Path: settings
class _TranslationsSettingsKo implements TranslationsSettingsEn {
	_TranslationsSettingsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '설정';
	@override late final _TranslationsSettingsSectionsKo sections = _TranslationsSettingsSectionsKo._(_root);
	@override late final _TranslationsSettingsEditProfileKo editProfile = _TranslationsSettingsEditProfileKo._(_root);
	@override late final _TranslationsSettingsLanguageKo language = _TranslationsSettingsLanguageKo._(_root);
	@override late final _TranslationsSettingsHeightUnitKo heightUnit = _TranslationsSettingsHeightUnitKo._(_root);
	@override late final _TranslationsSettingsWeightUnitKo weightUnit = _TranslationsSettingsWeightUnitKo._(_root);
	@override late final _TranslationsSettingsMealRemindersKo mealReminders = _TranslationsSettingsMealRemindersKo._(_root);
	@override late final _TranslationsSettingsThemeKo theme = _TranslationsSettingsThemeKo._(_root);
	@override late final _TranslationsSettingsSendFeedbackKo sendFeedback = _TranslationsSettingsSendFeedbackKo._(_root);
	@override late final _TranslationsSettingsExportMealHistoryKo exportMealHistory = _TranslationsSettingsExportMealHistoryKo._(_root);
	@override late final _TranslationsSettingsClearAllDataKo clearAllData = _TranslationsSettingsClearAllDataKo._(_root);
	@override late final _TranslationsSettingsDebugOptionsKo debugOptions = _TranslationsSettingsDebugOptionsKo._(_root);
	@override String get developerModeEnabled => '개발자 모드가 활성화되었습니다!';
	@override late final _TranslationsSettingsHealthConnectKo healthConnect = _TranslationsSettingsHealthConnectKo._(_root);
	@override late final _TranslationsSettingsAboutKo about = _TranslationsSettingsAboutKo._(_root);
	@override late final _TranslationsSettingsAppInfoKo appInfo = _TranslationsSettingsAppInfoKo._(_root);
}

// Path: reminders
class _TranslationsRemindersKo implements TranslationsRemindersEn {
	_TranslationsRemindersKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '알림으로 꾸준함 유지하기';
	@override String get description => '식사를 기록하고 영양 목표를 꾸준히 달성할 수 있도록 부드러운 알림을 받아보세요';
	@override String get notificationsEnabled => '알림 사용 중';
	@override String get notificationsDisabled => '알림 꺼짐';
	@override String get enabledSubtitle => '식사 알림을 받게 됩니다';
	@override String get disabledSubtitle => '알림을 활성화하면 식사 알림을 받을 수 있어요';
	@override String get mealReminders => '식사 알림';
	@override String get breakfast => '아침';
	@override String get lunch => '점심';
	@override String get dinner => '저녁';
	@override String get snack => '간식';
	@override String get unknown => '알 수 없음';
	@override String get change => '변경';
	@override String get enableNotifications => '알림 활성화';
	@override String get skipForNow => '나중에 하기';
	@override String get saveChanges => '변경 사항 저장';
	@override String get enabledSuccessfully => '알림이 성공적으로 활성화되었습니다!';
	@override String get permissionDenied => '알림 권한이 거부되었습니다';
	@override String errorEnabling({required Object error}) => '알림을 활성화하는 중 오류: ${error}';
	@override String errorCompletingSetup({required Object error}) => '설정을 완료하는 중 오류: ${error}';
}

// Path: notifications
class _TranslationsNotificationsKo implements TranslationsNotificationsEn {
	_TranslationsNotificationsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsBreakfastKo breakfast = _TranslationsNotificationsBreakfastKo._(_root);
	@override late final _TranslationsNotificationsLunchKo lunch = _TranslationsNotificationsLunchKo._(_root);
	@override late final _TranslationsNotificationsDinnerKo dinner = _TranslationsNotificationsDinnerKo._(_root);
	@override late final _TranslationsNotificationsSnackKo snack = _TranslationsNotificationsSnackKo._(_root);
	@override late final _TranslationsNotificationsTestKo test = _TranslationsNotificationsTestKo._(_root);
}

// Path: login
class _TranslationsLoginKo implements TranslationsLoginEn {
	_TranslationsLoginKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '로그인';
	@override String get signInWithGoogle => 'Google로 로그인';
	@override String get signInFailed => 'Google 로그인에 실패했거나 취소되었습니다.';
}

// Path: disclaimer
class _TranslationsDisclaimerKo implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => '유의하세요';
	@override late final _TranslationsDisclaimerSnapKo snap = _TranslationsDisclaimerSnapKo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateKo weightEstimate = _TranslationsDisclaimerWeightEstimateKo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsKo healthMetrics = _TranslationsDisclaimerHealthMetricsKo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureKo calorieExpenditure = _TranslationsDisclaimerCalorieExpenditureKo._(_root);
}

// Path: common
class _TranslationsCommonKo implements TranslationsCommonEn {
	_TranslationsCommonKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get close => '닫기';
	@override String get kContinue => '계속';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingKo implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel}가 마음에 드시나요?';
	@override String get yes => '네, 마음에 들어요';
	@override String get no => '아니요, 별로예요';
	@override String get rateStepHeading => 'Play 스토어에서 평가하기';
	@override String get emailStepHeading => '이메일로 피드백 보내기';
	@override String soloDevMessage({required Object appLabel}) => '짧은 평가가 다른 분들이 ${appLabel}를 찾는 데 도움이 되고 개발을 지속시키는 힘이 됩니다. 잠시만 시간을 내 주실 수 있나요?';
	@override String get shareFeedbackViaEmail => '여러분의 피드백이 다음 업데이트를 만듭니다 — 모든 메시지를 직접 읽고 있습니다. 이메일로 의견을 보내주시겠어요?';
	@override String get rateCta => 'Play 스토어에서 평가하기';
	@override String get maybeLater => '다음에 할게요';
	@override String get sendFeedback => '피드백 보내기';
	@override String get noThanks => '괜찮아요';
	@override String get aboutUsDescription => '작은 팀이 정성껏 만들었습니다. 우리는 프라이버시, 단순함, 더 나은 식습관 형성에 집중합니다.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel}를 만든 사람들이 궁금하신가요? ';
	@override String get aboutUsLinkLabel => '소개 보기';
	@override String get thankYouMessage => '감사합니다! 다음에 다시 여쭤볼게요.';
}

// Path: health
class _TranslationsHealthKo implements TranslationsHealthEn {
	_TranslationsHealthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect에 동기화하지 못했습니다';
	@override String get mealSynced => '식사가 Health Connect와 동기화되었습니다';
}

// Path: onboarding.features
class _TranslationsOnboardingFeaturesKo implements TranslationsOnboardingFeaturesEn {
	_TranslationsOnboardingFeaturesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingFeaturesFoodRecognitionKo foodRecognition = _TranslationsOnboardingFeaturesFoodRecognitionKo._(_root);
	@override late final _TranslationsOnboardingFeaturesAiAnalysisKo aiAnalysis = _TranslationsOnboardingFeaturesAiAnalysisKo._(_root);
	@override late final _TranslationsOnboardingFeaturesHealthIntegrationKo healthIntegration = _TranslationsOnboardingFeaturesHealthIntegrationKo._(_root);
}

// Path: onboarding.gender
class _TranslationsOnboardingGenderKo implements TranslationsOnboardingGenderEn {
	_TranslationsOnboardingGenderKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '성별이 무엇인가요?';
	@override String get description => '성별은 기초대사량(BMR)을 정확하게 계산하는 데 도움을 줍니다.';
	@override String get next => '다음';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightKo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '키가 어떻게 되시나요?';
	@override String get description => '키 정보는 BMI와 에너지 요구량을 정확하게 계산하는 데 사용됩니다.';
	@override String get metric => '미터법';
	@override String get imperial => '야드파운드법';
	@override String get next => '다음';
}

// Path: onboarding.weight
class _TranslationsOnboardingWeightKo implements TranslationsOnboardingWeightEn {
	_TranslationsOnboardingWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get currentTitle => '현재 체중은 얼마인가요?';
	@override String get currentDescription => '현재 체중은 일일 목표를 개인화하는 데 중요합니다.';
	@override String get targetTitle => '목표 체중은 얼마인가요?';
	@override String get targetDescription => '목표 체중을 설정하면 장기 계획을 세우는 데 도움이 됩니다.';
	@override String get metric => '미터법';
	@override String get imperial => '야드파운드법';
	@override String get next => '다음';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeKo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '생년월일이 언제인가요?';
	@override String get description => '나이는 칼로리 필요량을 정확히 계산하는 데 사용됩니다.';
	@override String get next => '다음';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleKo implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '저체중';
	@override String get healthy => '건강';
	@override String get overweight => '과체중';
	@override String get obese => '비만';
	@override late final _TranslationsOnboardingBmiScaleCategoriesKo categories = _TranslationsOnboardingBmiScaleCategoriesKo._(_root);
	@override late final _TranslationsOnboardingBmiScaleMessagesKo messages = _TranslationsOnboardingBmiScaleMessagesKo._(_root);
}

// Path: onboarding.weightGoal
class _TranslationsOnboardingWeightGoalKo implements TranslationsOnboardingWeightGoalEn {
	_TranslationsOnboardingWeightGoalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '어떤 목표가 있나요?';
	@override String get description => '당신의 목적에 가장 가까운 목표를 선택해 주세요';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelKo implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '평소 활동량은 어떤 편인가요?';
	@override String get description => '활동 수준은 일일 칼로리 필요량을 더 정확히 계산하는 데 도움이 됩니다';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectKo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect와 연결';
	@override String get description => '건강 데이터를 동기화해 더 나은 인사이트와 자동 칼로리 추적 받기';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingKo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingKo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsKo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsKo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationKo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationKo._(_root);
	@override String get connected => 'Health Connect 연결됨';
	@override String get notConnected => 'Health Connect 연결 안 됨';
	@override String get setup => 'Health Connect 설정';
	@override String get skipForNow => '나중에 하기';
	@override String get statusConnected => 'Health Connect가 연결되었습니다.';
	@override String get statusSuccess => 'Health Connect가 성공적으로 연결되었어요!';
	@override String statusPermissionDenied({required Object appLabel}) => '권한이 거부되었습니다. 휴대폰 설정에서 ${appLabel}의 Health Connect 권한을 활성화해 주세요.';
	@override String statusError({required Object error}) => 'Health Connect 설정 중 오류: ${error}';
}

// Path: onboarding.reinforcement
class _TranslationsOnboardingReinforcementKo implements TranslationsOnboardingReinforcementEn {
	_TranslationsOnboardingReinforcementKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsOnboardingReinforcementTrackingSuccessKo trackingSuccess = _TranslationsOnboardingReinforcementTrackingSuccessKo._(_root);
	@override late final _TranslationsOnboardingReinforcementHealthProfileKo healthProfile = _TranslationsOnboardingReinforcementHealthProfileKo._(_root);
	@override late final _TranslationsOnboardingReinforcementGoalLifestyleKo goalLifestyle = _TranslationsOnboardingReinforcementGoalLifestyleKo._(_root);
}

// Path: home.aiSummary
class _TranslationsHomeAiSummaryKo implements TranslationsHomeAiSummaryEn {
	_TranslationsHomeAiSummaryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 요약';
	@override String get logMore => '앞으로 며칠간 더 많은 식사를 기록하면 개인 맞춤 AI 인사이트가 제공됩니다.';
	@override String get loading => '요약을 불러오는 중...';
	@override String mealCount({required Object count}) => '총 ${count}끼 기록됨';
	@override String macroBalanceScore({required Object score}) => '균형 점수 ${score}';
	@override String get topFoods => '자주 먹은 음식';
	@override String get trendUp => '칼로리가 증가 추세예요';
	@override String get trendDown => '칼로리가 감소 추세예요';
	@override String get trendSteady => '칼로리가 안정적으로 유지돼요';
	@override String generatedAt({required Object time}) => '업데이트: ${time}';
}

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalKo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 목표 설정';
	@override String get titleSet => '나의 일일 목표';
	@override String get description => '웰니스 여정을 시작해 볼까요? 아래에서 일일 칼로리 목표를 설정해 보세요.';
	@override String get descriptionSet => '나침반이 설정됐어요! 이것이 당신을 이끌 일일 칼로리 목표입니다.';
	@override String get yourGoal => '내 목표';
	@override String get goal => '목표';
	@override String get dailyCalories => '일일 칼로리 (kcal)';
	@override String get setGoal => '목표 설정';
	@override String get intake => '섭취';
	@override String get burned => '소모';
	@override String get weightImpact => '체중 변화 영향';
	@override String get estLoss => '예상 감량';
	@override String get estGain => '예상 증량';
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryKo implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 요약';
	@override String get calories => '칼로리';
	@override String get carbs => '탄수화물';
	@override String get protein => '단백질';
	@override String get fat => '지방';
	@override String get fiber => '식이섬유';
	@override String get grams => '그램';
	@override String get chartAccessibilityLabel => '매크로 차트';
}

// Path: home.intakeProgress
class _TranslationsHomeIntakeProgressKo implements TranslationsHomeIntakeProgressEn {
	_TranslationsHomeIntakeProgressKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오늘의 매크로 분포';
	@override String get target => '목표';
	@override String get current => '현재';
}

// Path: home.intakeHistory
class _TranslationsHomeIntakeHistoryKo implements TranslationsHomeIntakeHistoryEn {
	_TranslationsHomeIntakeHistoryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '7일 매크로 기록';
	@override String get trendTitle => '오늘의 추세';
	@override String peakHour({required Object hour}) => '피크: ${hour}:00';
	@override String get noHistoryYet => '아직 기록이 없어요';
	@override String get startLogging => '식사를 기록하면\n여기에서 7일 매크로 추세를 볼 수 있어요';
}

// Path: home.mealLog
class _TranslationsHomeMealLogKo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기록된 식사';
	@override String get emptyMessage => '마지막 식사를 사진으로 찍어 여기에서 기록해 보세요.';
	@override String get noMealsToday => '오늘 기록된 식사가 없습니다';
	@override String get seeAllMeals => '모든 식사 보기';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionKo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI로 빠르게 추가';
	@override String get description => '식사를 간단히 설명하면 AI가 알아서 세부 정보를 채워드려요.';
	@override String get hint => '예: 아침으로 오트밀 큰 그릇에 바나나 한 개를 썰어 넣고, 웨이 단백질 한 스쿱을 넣어 먹었어요 ...';
	@override String get analyzeMeal => '식사 분석';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsKo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즐겨찾는 식사';
	@override String get description => '자주 먹는 식사를 빠르게 추가하세요.';
	@override String get noFavorites => '즐겨찾는 식사가 아직 없습니다.';
	@override String get addFavoriteHint => '식사에서 별표를 눌러 즐겨찾기에 추가해 보세요.';
	@override String get seeAll => '모두 보기';
	@override String get add => '추가';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapKo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '찍고 식사 추적하기';
	@override String get description => '카메라로 음식을 촬영하면 AI가 분석해 드립니다.';
	@override String get openCamera => '카메라 열기';
	@override String get gallery => '갤러리';
	@override String get compressingPhoto => '사진 최적화 중…';
	@override String get uploadingPhoto => '사진 업로드 중…';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthKo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 동기화';
	@override String get description => '영양 데이터를 Health Connect와 동기화';
	@override String get install => '설치';
	@override String get connect => '연결';
}

// Path: meal.nutrition
class _TranslationsMealNutritionKo implements TranslationsMealNutritionEn {
	_TranslationsMealNutritionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get calories => '칼로리';
	@override String get carbs => '탄수화물 (g)';
	@override String get protein => '단백질 (g)';
	@override String get fat => '지방 (g)';
	@override String get fiber => '식이섬유 (g)';
}

// Path: meal.deleteConfirmation
class _TranslationsMealDeleteConfirmationKo implements TranslationsMealDeleteConfirmationEn {
	_TranslationsMealDeleteConfirmationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 삭제';
	@override String get message => '이 식사 기록을 정말 삭제하시겠어요?';
	@override String get cancel => '취소';
	@override String get delete => '삭제';
}

// Path: meal.variation
class _TranslationsMealVariationKo implements TranslationsMealVariationEn {
	_TranslationsMealVariationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => '질문 ${current}/${total}';
	@override String get noVariationsAvailable => '사용 가능한 변형이 없습니다';
}

// Path: meal.analysis
class _TranslationsMealAnalysisKo implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 식사 분석';
	@override String get reassurance => '보통 몇 초면 완료됩니다.';
	@override String get stepStarted => '시작하는 중…';
	@override String get stepDecomposition => '식사 이해 중…';
	@override String get stepIngredients => '재료를 영양 데이터와 매칭 중…';
	@override String get stepUncertainty => '신뢰도 확인 중…';
	@override String get stepMealTypeQuestion => '거의 완료…';
	@override String get stepResult => '결과 마무리 중…';
	@override String get stepError => '문제가 발생했습니다';
	@override String get stepDefault => '식사를 분석하는 중…';
	@override String get progressUnderstand => '이해';
	@override String get progressMatch => '매칭';
	@override String get progressCheck => '검토';
	@override String get progressFinish => '완료';
	@override String ingredientsLine({required Object count}) => '재료 ${count}개 감지됨';
	@override String get ingredientsPending => '재료 스캔 중…';
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.';
	@override String get offlineTip1 => 'Tip: For photos, natural light and a top-down view help with portion accuracy.';
	@override String get offlineTip2 => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.';
	@override String get offlineTip3 => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.';
	@override String get offlineTip4 => 'Tip: Logging after the meal still builds the habit; perfection is optional.';
	@override String get offlineTip5 => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).';
}

// Path: meal.feedback
class _TranslationsMealFeedbackKo implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'What looks wrong?';
	@override String get subtitle => 'Help us improve the analysis by selecting one or more issues.';
	@override String get tellUsMore => 'Tell us more';
	@override String get describeIncorrect => 'Describe what was incorrect';
	@override String get submit => 'Submit';
	@override String get issueFoodIdentification => 'Food identification';
	@override String get issuePortionSize => 'Portion size';
	@override String get issueCalorieDistribution => 'Calorie distribution';
	@override String get issueMacrosWrong => 'Macros are wrong';
	@override String get issueMissingItems => 'Missing items';
	@override String get issueExtraItems => 'Extra items';
	@override String get issueOther => 'Other';
}

// Path: favorites.sortOptions
class _TranslationsFavoritesSortOptionsKo implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get recent => '최근순';
	@override String get calories => '칼로리순';
	@override String get alphabetical => '가나다순';
}

// Path: profile.sections
class _TranslationsProfileSectionsKo implements TranslationsProfileSectionsEn {
	_TranslationsProfileSectionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get profile => '프로필';
	@override String get basicInformation => '기본 정보';
	@override String get goalsAndActivity => '목표 및 활동';
	@override String get calculatedValues => '계산된 값';
}

// Path: profile.calculatedValues
class _TranslationsProfileCalculatedValuesKo implements TranslationsProfileCalculatedValuesEn {
	_TranslationsProfileCalculatedValuesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get bmr => 'BMR';
	@override String get tdee => 'TDEE';
	@override String get dailyGoal => '일일 목표';
	@override String get calPerDay => 'cal/일';
	@override String get notAvailable => 'N/A';
}

// Path: editProfile.sections
class _TranslationsEditProfileSectionsKo implements TranslationsEditProfileSectionsEn {
	_TranslationsEditProfileSectionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get personalInformation => '개인 정보';
	@override String get physicalMeasurements => '신체 치수';
	@override String get goalsAndActivity => '목표 및 활동';
}

// Path: editProfile.genders
class _TranslationsEditProfileGendersKo implements TranslationsEditProfileGendersEn {
	_TranslationsEditProfileGendersKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get male => '남성';
	@override String get female => '여성';
	@override String get other => '기타';
}

// Path: editProfile.weightGoals
class _TranslationsEditProfileWeightGoalsKo implements TranslationsEditProfileWeightGoalsEn {
	_TranslationsEditProfileWeightGoalsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileWeightGoalsLoseWeightKo loseWeight = _TranslationsEditProfileWeightGoalsLoseWeightKo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsMaintainWeightKo maintainWeight = _TranslationsEditProfileWeightGoalsMaintainWeightKo._(_root);
	@override late final _TranslationsEditProfileWeightGoalsGainWeightKo gainWeight = _TranslationsEditProfileWeightGoalsGainWeightKo._(_root);
}

// Path: editProfile.activityLevels
class _TranslationsEditProfileActivityLevelsKo implements TranslationsEditProfileActivityLevelsEn {
	_TranslationsEditProfileActivityLevelsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEditProfileActivityLevelsSedentaryKo sedentary = _TranslationsEditProfileActivityLevelsSedentaryKo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsLightlyActiveKo lightlyActive = _TranslationsEditProfileActivityLevelsLightlyActiveKo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsModeratelyActiveKo moderatelyActive = _TranslationsEditProfileActivityLevelsModeratelyActiveKo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsVeryActiveKo veryActive = _TranslationsEditProfileActivityLevelsVeryActiveKo._(_root);
	@override late final _TranslationsEditProfileActivityLevelsExtremelyActiveKo extremelyActive = _TranslationsEditProfileActivityLevelsExtremelyActiveKo._(_root);
}

// Path: settings.sections
class _TranslationsSettingsSectionsKo implements TranslationsSettingsSectionsEn {
	_TranslationsSettingsSectionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get profile => '프로필';
	@override String get localization => '언어 및 단위';
	@override String get notifications => '알림';
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => '지원 및 약관';
	@override String get about => '정보';
	@override String get dangerZone => '주의 영역';
	@override String get developer => '개발자';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileKo implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 편집';
	@override String get subtitle => '개인 정보를 업데이트하세요';
}

// Path: settings.language
class _TranslationsSettingsLanguageKo implements TranslationsSettingsLanguageEn {
	_TranslationsSettingsLanguageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '언어';
	@override String get subtitle => '선호하는 언어를 선택하세요';
	@override String get searchHint => '언어 검색...';
	@override String get noResults => '검색 결과가 없습니다';
}

// Path: settings.heightUnit
class _TranslationsSettingsHeightUnitKo implements TranslationsSettingsHeightUnitEn {
	_TranslationsSettingsHeightUnitKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '키 단위';
}

// Path: settings.weightUnit
class _TranslationsSettingsWeightUnitKo implements TranslationsSettingsWeightUnitEn {
	_TranslationsSettingsWeightUnitKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '체중 단위';
}

// Path: settings.mealReminders
class _TranslationsSettingsMealRemindersKo implements TranslationsSettingsMealRemindersEn {
	_TranslationsSettingsMealRemindersKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 알림';
	@override String get subtitle => '제때 알림으로 꾸준함을 유지하세요';
}

// Path: settings.theme
class _TranslationsSettingsThemeKo implements TranslationsSettingsThemeEn {
	_TranslationsSettingsThemeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '테마';
	@override String get light => '라이트';
	@override String get dark => '다크';
	@override String get system => '시스템';
}

// Path: settings.sendFeedback
class _TranslationsSettingsSendFeedbackKo implements TranslationsSettingsSendFeedbackEn {
	_TranslationsSettingsSendFeedbackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '피드백 보내기';
	@override String subtitle({required Object appLabel}) => '${appLabel} 개선에 도움을 주세요';
	@override String emailSubject({required Object appLabel}) => '${appLabel} 앱 피드백';
	@override String get emailBodyPrefix => '아래에 피드백을 작성해 주세요:';
	@override String get appVersion => '앱 버전';
	@override String get device => '기기';
	@override String get osVersion => 'OS 버전';
	@override String get uid => 'UID';
}

// Path: settings.exportMealHistory
class _TranslationsSettingsExportMealHistoryKo implements TranslationsSettingsExportMealHistoryEn {
	_TranslationsSettingsExportMealHistoryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 기록 내보내기';
	@override String get subtitle => '기록한 식사를 CSV로 공유';
	@override String get shareText => 'Calorify 식사 기록 내보내기';
	@override String failed({required Object error}) => '식사 기록을 내보낼 수 없습니다: ${error}';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataKo implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '모든 데이터 삭제';
	@override String get subtitle => '모든 정보를 되돌릴 수 없이 삭제합니다';
	@override String get confirmationTitle => '모든 데이터를 삭제할까요?';
	@override String get confirmationMessage => '이 작업은 취소할 수 없습니다. 기록된 식사, 즐겨찾기, 프로필 설정이 모두 영구적으로 삭제됩니다.';
	@override String get cancel => '취소';
	@override String get clearEverything => '모두 삭제';
}

// Path: settings.debugOptions
class _TranslationsSettingsDebugOptionsKo implements TranslationsSettingsDebugOptionsEn {
	_TranslationsSettingsDebugOptionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '디버그 옵션';
}

// Path: settings.healthConnect
class _TranslationsSettingsHealthConnectKo implements TranslationsSettingsHealthConnectEn {
	_TranslationsSettingsHealthConnectKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect';
	@override String get subtitle => '권한을 확인하고 관리하세요';
	@override late final _TranslationsSettingsHealthConnectUnavailableKo unavailable = _TranslationsSettingsHealthConnectUnavailableKo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsKo permissions = _TranslationsSettingsHealthConnectPermissionsKo._(_root);
	@override String get managePermissions => '권한 관리';
	@override String get openSettings => 'Health Connect 설정 열기';
	@override String get requestPermissions => '권한 요청';
	@override String get permissionRequestCancelledOrFailed => '권한 요청이 취소되었거나 실패했습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용해 주세요.';
	@override String get permissionRequestFailed => '권한을 요청할 수 없습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용해 주세요.';
	@override String get requestingPermissions => '요청 중...';
}

// Path: settings.about
class _TranslationsSettingsAboutKo implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '정보';
	@override String get tagline => '빠르고, 무료이며, 프라이버시를 최우선으로 한 칼로리 인식';
	@override late final _TranslationsSettingsAboutOurStoryKo ourStory = _TranslationsSettingsAboutOurStoryKo._(_root);
	@override late final _TranslationsSettingsAboutPrivacyKo privacy = _TranslationsSettingsAboutPrivacyKo._(_root);
	@override late final _TranslationsSettingsAboutDeveloperKo developer = _TranslationsSettingsAboutDeveloperKo._(_root);
	@override late final _TranslationsSettingsAboutFeedbackKo feedback = _TranslationsSettingsAboutFeedbackKo._(_root);
}

// Path: settings.appInfo
class _TranslationsSettingsAppInfoKo implements TranslationsSettingsAppInfoEn {
	_TranslationsSettingsAppInfoKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String version({required Object version}) => 'Calorify v${version}';
	@override String build({required Object buildNumber}) => '빌드 ${buildNumber}';
}

// Path: notifications.breakfast
class _TranslationsNotificationsBreakfastKo implements TranslationsNotificationsBreakfastEn {
	_TranslationsNotificationsBreakfastKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '아침 식사 시간이에요! 🍳';
	@override String get body => '아침 식사 기록을 잊지 마세요';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchKo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '점심 시간이에요! 🥗';
	@override String get body => '점심 식사를 기록해 보세요';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerKo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '저녁 시간이에요! 🍽️';
	@override String get body => '저녁 식사 기록을 잊지 마세요';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackKo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '간식 시간! 🍎';
	@override String get body => '건강한 간식 어떠세요?';
}

// Path: notifications.test
class _TranslationsNotificationsTestKo implements TranslationsNotificationsTestEn {
	_TranslationsNotificationsTestKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '테스트 알림';
}

// Path: disclaimer.snap
class _TranslationsDisclaimerSnapKo implements TranslationsDisclaimerSnapEn {
	_TranslationsDisclaimerSnapKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String description({required Object appLabel}) => '${appLabel}는 추정된 영양 정보를 제공합니다. 정확도는 입력 내용과 음식의 차이에 따라 달라질 수 있습니다. 절대적 지표가 아닌 참고용으로 사용하세요. 개인화된 식단은 전문가와 상담하세요.';
	@override late final _TranslationsDisclaimerSnapPortionSizeKo portionSize = _TranslationsDisclaimerSnapPortionSizeKo._(_root);
	@override late final _TranslationsDisclaimerSnapPreparationMethodsKo preparationMethods = _TranslationsDisclaimerSnapPreparationMethodsKo._(_root);
	@override late final _TranslationsDisclaimerSnapIngredientsKo ingredients = _TranslationsDisclaimerSnapIngredientsKo._(_root);
	@override late final _TranslationsDisclaimerSnapDatabaseLimitationsKo databaseLimitations = _TranslationsDisclaimerSnapDatabaseLimitationsKo._(_root);
}

// Path: disclaimer.weightEstimate
class _TranslationsDisclaimerWeightEstimateKo implements TranslationsDisclaimerWeightEstimateEn {
	_TranslationsDisclaimerWeightEstimateKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '체중 추정에 대하여';
	@override String get description => '예상 체중 변화는 단순한 섭취 칼로리 vs. 소모 칼로리 모델에 기반한 이론적 추정치입니다. 동기 부여를 위한 참고용일 뿐 실제 체중 변화를 예측하는 용도는 아닙니다.';
	@override late final _TranslationsDisclaimerWeightEstimateCalorieAccuracyKo calorieAccuracy = _TranslationsDisclaimerWeightEstimateCalorieAccuracyKo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateBiologicalFactorsKo biologicalFactors = _TranslationsDisclaimerWeightEstimateBiologicalFactorsKo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateWaterWeightKo waterWeight = _TranslationsDisclaimerWeightEstimateWaterWeightKo._(_root);
	@override late final _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo professionalGuidance = _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo._(_root);
}

// Path: disclaimer.healthMetrics
class _TranslationsDisclaimerHealthMetricsKo implements TranslationsDisclaimerHealthMetricsEn {
	_TranslationsDisclaimerHealthMetricsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get description => '이 지표들은 몸의 에너지 필요량을 이해하고 영양 목표를 세우는 데 도움을 줍니다.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrKo bmr = _TranslationsDisclaimerHealthMetricsBmrKo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeKo tdee = _TranslationsDisclaimerHealthMetricsTdeeKo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalKo dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalKo._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureKo implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '칼로리 소모 추정';
	@override String get description => 'Health Connect 데이터를 사용할 수 없는 경우, 오늘의 소모 칼로리는 기초대사량(BMR)과 활동 수준(TDEE)을 기반으로, 지나간 시간 비율에 맞게 추정합니다.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionKo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '스마트 음식 인식';
	@override String get description => '음식을 촬영하면 AI가 자동으로 식사를 인식해요';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisKo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 분석';
	@override String get description => '설명만으로도 즉시 영양 정보를 받아보세요';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationKo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '헬스 연동';
	@override String get description => 'Health Connect와 연결해 더 나은 인사이트 얻기';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesKo implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '저체중';
	@override String get healthyWeight => '정상 체중';
	@override String get overweight => '과체중';
	@override String get obese => '비만';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesKo implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '영양 밀도가 높은 식단으로 균형 잡힌 체중에 도달할 수 있도록 건강한 계획을 함께 세워드릴게요.';
	@override String get healthy => '잘하고 있어요! 건강한 범위입니다. 활력과 에너지를 유지하도록 도와드릴게요.';
	@override String overweight({required Object appLabel}) => '${appLabel}가 AI 기반 추적으로 여정을 더 간단하게 만들어 편안하게 목표에 도달하도록 돕습니다.';
	@override String get obese => '개인 맞춤형 안내와 지속 가능한 전략으로 건강 목표를 전폭 지원할게요.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingKo implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자동 칼로리 추적';
	@override String get description => '피트니스 앱의 소모 칼로리를 자동으로 추적';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsKo implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '진행 인사이트';
	@override String get description => '건강 트렌드에 대한 자세한 인사이트 제공';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationKo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '매끄러운 연동';
	@override String get description => '즐겨 쓰는 건강 앱의 데이터를 동기화';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessKo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '혼자가 아닙니다';
	@override String get genericMessage => '연구에 따르면 ‘꾸준한 기록’이 장기적인 성공의 가장 중요한 예측 지표입니다.';
	@override String personalizedMessage({required Object age, required Object gender, required Object goal}) => '${age}세 ${gender}가 ${goal} 목표를 갖고 있다면, 꾸준한 기록이 성공을 가장 잘 예측합니다.';
	@override String closingMessage({required Object appLabel}) => '${appLabel}는 수동으로 하는 것보다 10배는 더 쉽게 만들어 줍니다.';
	@override String get getStartedTitle => '시작할 준비 되셨나요?';
	@override String get tipPhoto => '식사 사진을 찍으면 즉시 분석됩니다';
	@override String get tipConsistency => '꾸준히 기록할수록 의미 있는 변화가 보입니다';
	@override String get tipProgress => '매일 진행 상황을 확인하며 동기 부여를 유지하세요';
	@override String get button => '시작하기';
	@override String get defaultGender => '개인';
	@override String get defaultGoal => '더 건강한 당신';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileKo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '나의 건강 프로필';
	@override String bmiDescription({required Object bmi}) => '입력하신 정보를 바탕으로 BMI는 ${bmi}입니다.';
	@override String get finalizeDescription => '경험을 개인화할 수 있도록 프로필을 마무리해요.';
	@override String get goalGain => '증량';
	@override String get goalLose => '감량';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '목표에 도달하려면 ${direction} ${diff}${unit}가 필요해요.';
	@override String get goalReached => '이미 목표 체중에 도달했어요! 유지하도록 도와드릴게요.';
	@override String get button => '시작하기';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleKo implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '멋진 시작이에요!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}을(를) 향해 첫걸음을 내디뎠어요. 현재 ${activityText} 생활이시니, ${appLabel}가 라이프스타일에 맞게 목표치를 조정해 드릴게요.';
	@override String get personalizedTargets => '개인 맞춤 칼로리 목표';
	@override String get aiMealDetection => 'AI 기반 식사 감지';
	@override String get macroBreakdowns => '자세한 매크로 영양소 분해';
	@override String get button => '시작하기';
	@override String get defaultGoal => '당신의 목표';
	@override String get defaultActivity => '활동적';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightKo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 감량';
	@override String get description => '칼로리 적자를 만들어 체중을 감량합니다';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightKo implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 유지';
	@override String get description => '현재 체중을 유지합니다';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightKo implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 증량';
	@override String get description => '칼로리 흑자를 만들어 체중을 늘립니다';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryKo implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '좌식 생활';
	@override String get description => '운동 거의 없음';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveKo implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '가벼운 활동';
	@override String get description => '가벼운 운동 주 1~3회';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveKo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '보통 활동';
	@override String get description => '중간 강도 운동 주 3~5회';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveKo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '활동적';
	@override String get description => '고강도 운동 주 6~7회';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveKo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '매우 활동적';
	@override String get description => '매우 고강도 운동 또는 육체 노동';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableKo implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 사용 불가';
	@override String get description => '이 기기에서는 Health Connect를 사용할 수 없습니다. Play 스토어에서 Health Connect를 설치(Android 9+)하거나 Android 14+로 업데이트해 주세요.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsKo implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '권한';
	@override String get description => '다음 권한은 Health Connect 연동을 제공하기 위해 요청됩니다:';
	@override String get granted => '허용됨';
	@override String get notGranted => '미허용';
	@override late final _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo caloriesBurned = _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionReadKo nutritionRead = _TranslationsSettingsHealthConnectPermissionsNutritionReadKo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsNutritionWriteKo nutritionWrite = _TranslationsSettingsHealthConnectPermissionsNutritionWriteKo._(_root);
}

// Path: settings.about.ourStory
class _TranslationsSettingsAboutOurStoryKo implements TranslationsSettingsAboutOurStoryEn {
	_TranslationsSettingsAboutOurStoryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '우리의 이야기';
	@override String content({required Object appLabel}) => '${appLabel}는 단순한 좌절에서 시작되었습니다. 대부분의 칼로리 추적 앱은 지나치게 복잡하거나, 끊임없는 수동 입력을 요구하거나, 비싼 구독료를 받거나, 프라이버시를 타협합니다.\n\n저는 솔로 개발자로서 더 단순하고 공정한 무언가를 만들고 싶었습니다 — AI로 수고를 줄이고, 빠르고 무료로 사용할 수 있으며, 당신의 건강 데이터를 존중하는 앱을요.\n\n${appLabel}는 제가 바라던 앱입니다: 계정 없음, 추적 없음, 광고 없음 — 명확하고 실용적인 인사이트와 당신의 건강 목표만 남겼습니다.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyKo implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '당신의 프라이버시가 우선입니다';
	@override String get description => '프라이버시는 사후 고려가 아니라 설계 원칙입니다. 실제로는 다음을 의미합니다:';
	@override String get noAccounts => '계정 불필요\n앱을 즉시 사용할 수 있습니다. 가입도, 신원도 필요 없습니다.';
	@override String noTracking({required Object appLabel}) => '행동 추적 없음\n${appLabel}는 활동을 모니터링하거나, 사용 프로필을 만들거나, 다른 앱/웹사이트에서 당신을 추적하지 않습니다.';
	@override String noAds({required Object appLabel}) => '광고 없는 설계\n${appLabel}는 광고나 데이터 기반 수익 모델 없이 작동하도록 설계되었습니다.';
	@override String get noDataSelling => '데이터 판매 없음\n당신의 건강 데이터는 제3자에게 판매되거나 공유되지 않습니다.';
	@override String get localStorage => '로컬 우선 저장\n데이터는 기기에 보관됩니다.';
	@override String get privacyPolicy => '개인정보 처리방침';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperKo implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '솔로 개발자가 만든 앱';
	@override String description({required Object appLabel}) => '${appLabel}는 한 명의 솔로 개발자가 차분하고 프라이버시를 존중하는 건강 소프트웨어를 만들기 위해 개발·유지하고 있습니다.\n\n보내주시는 피드백은 직접 읽고, 앱의 방향을 정하는 데 큰 도움이 됩니다.';
	@override String get website => '웹사이트';
	@override String get email => '이메일';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackKo implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}가 마음에 드시나요?';
	@override String description({required Object appLabel}) => '당신의 피드백은 ${appLabel}를 모두에게 더 나은 앱으로 만듭니다.';
	@override String get rateApp => 'Play 스토어에서 평가하기';
	@override String get sendFeedback => '피드백 보내기';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeKo implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '포션 크기';
	@override String get description => '추정 정확도는 올바른 포션 크기 판단에 크게 좌우됩니다.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsKo implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '조리 방법';
	@override String description({required Object appLabel}) => '조리 방법은 영양 성분을 크게 바꿀 수 있습니다. ${appLabel}의 추정치는 이러한 변화를 항상 반영하지 못할 수 있습니다.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsKo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '재료';
	@override String get description => '숨겨진 재료가 많은 복합 요리는 추정 정확도가 떨어질 수 있습니다.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsKo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터베이스 한계';
	@override String description({required Object appLabel}) => '${appLabel}의 식품 데이터베이스는 방대하지만 모든 식품이나 모든 변형을 포함하지는 않을 수 있습니다.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyKo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '칼로리 정확도';
	@override String get description => '이 추정치는 기록한 섭취/소모 칼로리의 정확도에 비례합니다. 부정확한 기록은 부정확한 예측을 초래합니다.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsKo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '생물학적 요인';
	@override String description({required Object appLabel}) => '실제 체중 변화는 대사, 호르몬, 수면, 스트레스, 수분 상태 등 ${appLabel}가 측정할 수 없는 개인적 요인의 영향을 받습니다.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightKo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '수분 및 변동';
	@override String get description => '일상 체중은 수분 보유, 소화, 시간대 등에 따라 크게 변동할 수 있습니다. 이 추정치는 이러한 일일 변동을 반영하지 않습니다.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가 상담';
	@override String get description => '의료적 결정을 내리는 데 이 추정치를 사용하지 마세요. 개인 맞춤 체중 관리는 반드시 의료 전문가나 공인 영양사와 상의하세요.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrKo implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '기초대사량(BMR)은 호흡과 혈액순환 같은 기본 기능을 유지하기 위해 휴식 중에 몸이 소비하는 칼로리입니다. BMR은 나이, 성별, 키, 체중에 따라 달라집니다. 일반적으로 근육량이 많거나, 나이가 젊거나, 남성일수록 BMR이 높아 휴식 중에도 더 많은 칼로리를 소모합니다. 반대로 근육량이 적거나, 나이가 많거나, 여성인 경우 BMR이 낮은 경향이 있습니다.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeKo implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '총일일에너지소비량(TDEE)은 BMR에 하루 동안의 신체 활동과 일상 움직임으로 소모되는 칼로리를 더한, 하루 총 소모 칼로리입니다. TDEE는 BMR과 활동 수준에 따라 달라집니다. 활동적이거나 BMR이 높을수록 TDEE가 높아지고, 활동이 적거나 BMR이 낮으면 TDEE가 낮아집니다.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalKo implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 목표';
	@override String get description => '일일 목표는 TDEE와 체중 목표를 기반으로 권장되는 하루 섭취 칼로리입니다. 감량은 TDEE보다 적게, 유지 는 TDEE와 같게, 증량은 TDEE보다 많이 섭취합니다. 이를 통해 건강한 속도로 원하는 체중 변화를 이룰 수 있습니다.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '계산 방식';
	@override String get description => '프로필을 기반으로 TDEE를 계산하고, 경과한 하루 비율(시간 + 분)/24를 곱해 현재까지의 소모 칼로리를 추정합니다.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가 상담';
	@override String get description => '의료적 결정을 내리는 데 이 추정치를 사용하지 마세요. 개인 맞춤 조언은 의료 전문가나 공인 영양사와 상의하세요.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '총 소모 칼로리 읽기';
	@override String get description => '앱이 Health Connect에서 총 소모 칼로리를 읽을 수 있도록 허용합니다.';
	@override String get usage => '이 권한은 일일 칼로리 소모량을 앱에 표시하여 하루 총 에너지 소비를 이해하는 데 도움을 줍니다.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadKo implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영양 데이터 읽기';
	@override String get description => '앱이 Health Connect에서 영양 데이터를 읽을 수 있도록 허용합니다.';
	@override String get usage => '이 권한은 다른 앱이 Health Connect에 기록한 영양 정보를 읽어, 보다 포괄적인 영양 현황을 제공하는 데 사용됩니다.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteKo implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영양 데이터 쓰기';
	@override String get description => '앱이 Health Connect에 영양 데이터를 쓸 수 있도록 허용합니다.';
	@override String get usage => '이 권한은 앱에서 기록한 식사를 Health Connect와 동기화하여, 사용하는 다른 건강/피트니스 앱에서도 영양 데이터를 활용할 수 있게 해줍니다.';
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
			'errors.rateLimitExceeded' => '요청이 너무 많습니다. 잠시 후 다시 시도해 주세요.',
			'errors.networkError' => '네트워크 오류입니다. 인터넷 연결을 확인해 주세요.',
			'errors.unknownError' => '문제가 발생했습니다. 잠시 후 다시 시도해 주세요.',
			'errors.loadingProfileData' => '프로필 데이터를 불러오는 중 오류가 발생했습니다',
			'errors.somethingWentWrong' => '문제가 발생했습니다.',
			'errors.retry' => '재시도',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}에 오신 것을 환영합니다',
			'onboarding.subtitle' => 'AI로 더 똑똑해진 개인 영양 동반자',
			'onboarding.getStarted' => '시작하기',
			'onboarding.features.foodRecognition.title' => '스마트 음식 인식',
			'onboarding.features.foodRecognition.description' => '음식을 촬영하면 AI가 자동으로 식사를 인식해요',
			'onboarding.features.aiAnalysis.title' => 'AI 분석',
			'onboarding.features.aiAnalysis.description' => '설명만으로도 즉시 영양 정보를 받아보세요',
			'onboarding.features.healthIntegration.title' => '헬스 연동',
			'onboarding.features.healthIntegration.description' => 'Health Connect와 연결해 더 나은 인사이트 얻기',
			'onboarding.gender.title' => '성별이 무엇인가요?',
			'onboarding.gender.description' => '성별은 기초대사량(BMR)을 정확하게 계산하는 데 도움을 줍니다.',
			'onboarding.gender.next' => '다음',
			'onboarding.height.title' => '키가 어떻게 되시나요?',
			'onboarding.height.description' => '키 정보는 BMI와 에너지 요구량을 정확하게 계산하는 데 사용됩니다.',
			'onboarding.height.metric' => '미터법',
			'onboarding.height.imperial' => '야드파운드법',
			'onboarding.height.next' => '다음',
			'onboarding.weight.currentTitle' => '현재 체중은 얼마인가요?',
			'onboarding.weight.currentDescription' => '현재 체중은 일일 목표를 개인화하는 데 중요합니다.',
			'onboarding.weight.targetTitle' => '목표 체중은 얼마인가요?',
			'onboarding.weight.targetDescription' => '목표 체중을 설정하면 장기 계획을 세우는 데 도움이 됩니다.',
			'onboarding.weight.metric' => '미터법',
			'onboarding.weight.imperial' => '야드파운드법',
			'onboarding.weight.next' => '다음',
			'onboarding.age.title' => '생년월일이 언제인가요?',
			'onboarding.age.description' => '나이는 칼로리 필요량을 정확히 계산하는 데 사용됩니다.',
			'onboarding.age.next' => '다음',
			'onboarding.bmiScale.underweight' => '저체중',
			'onboarding.bmiScale.healthy' => '건강',
			'onboarding.bmiScale.overweight' => '과체중',
			'onboarding.bmiScale.obese' => '비만',
			'onboarding.bmiScale.categories.underweight' => '저체중',
			'onboarding.bmiScale.categories.healthyWeight' => '정상 체중',
			'onboarding.bmiScale.categories.overweight' => '과체중',
			'onboarding.bmiScale.categories.obese' => '비만',
			'onboarding.bmiScale.messages.underweight' => '영양 밀도가 높은 식단으로 균형 잡힌 체중에 도달할 수 있도록 건강한 계획을 함께 세워드릴게요.',
			'onboarding.bmiScale.messages.healthy' => '잘하고 있어요! 건강한 범위입니다. 활력과 에너지를 유지하도록 도와드릴게요.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}가 AI 기반 추적으로 여정을 더 간단하게 만들어 편안하게 목표에 도달하도록 돕습니다.',
			'onboarding.bmiScale.messages.obese' => '개인 맞춤형 안내와 지속 가능한 전략으로 건강 목표를 전폭 지원할게요.',
			'onboarding.weightGoal.title' => '어떤 목표가 있나요?',
			'onboarding.weightGoal.description' => '당신의 목적에 가장 가까운 목표를 선택해 주세요',
			'onboarding.activityLevel.title' => '평소 활동량은 어떤 편인가요?',
			'onboarding.activityLevel.description' => '활동 수준은 일일 칼로리 필요량을 더 정확히 계산하는 데 도움이 됩니다',
			'onboarding.healthConnect.title' => 'Health Connect와 연결',
			'onboarding.healthConnect.description' => '건강 데이터를 동기화해 더 나은 인사이트와 자동 칼로리 추적 받기',
			'onboarding.healthConnect.automaticTracking.title' => '자동 칼로리 추적',
			'onboarding.healthConnect.automaticTracking.description' => '피트니스 앱의 소모 칼로리를 자동으로 추적',
			'onboarding.healthConnect.progressInsights.title' => '진행 인사이트',
			'onboarding.healthConnect.progressInsights.description' => '건강 트렌드에 대한 자세한 인사이트 제공',
			'onboarding.healthConnect.seamlessIntegration.title' => '매끄러운 연동',
			'onboarding.healthConnect.seamlessIntegration.description' => '즐겨 쓰는 건강 앱의 데이터를 동기화',
			'onboarding.healthConnect.connected' => 'Health Connect 연결됨',
			'onboarding.healthConnect.notConnected' => 'Health Connect 연결 안 됨',
			'onboarding.healthConnect.setup' => 'Health Connect 설정',
			'onboarding.healthConnect.skipForNow' => '나중에 하기',
			'onboarding.healthConnect.statusConnected' => 'Health Connect가 연결되었습니다.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect가 성공적으로 연결되었어요!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '권한이 거부되었습니다. 휴대폰 설정에서 ${appLabel}의 Health Connect 권한을 활성화해 주세요.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect 설정 중 오류: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '혼자가 아닙니다',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '연구에 따르면 ‘꾸준한 기록’이 장기적인 성공의 가장 중요한 예측 지표입니다.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object age, required Object gender, required Object goal}) => '${age}세 ${gender}가 ${goal} 목표를 갖고 있다면, 꾸준한 기록이 성공을 가장 잘 예측합니다.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel}는 수동으로 하는 것보다 10배는 더 쉽게 만들어 줍니다.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '시작할 준비 되셨나요?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '식사 사진을 찍으면 즉시 분석됩니다',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '꾸준히 기록할수록 의미 있는 변화가 보입니다',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '매일 진행 상황을 확인하며 동기 부여를 유지하세요',
			'onboarding.reinforcement.trackingSuccess.button' => '시작하기',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '개인',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '더 건강한 당신',
			'onboarding.reinforcement.healthProfile.title' => '나의 건강 프로필',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '입력하신 정보를 바탕으로 BMI는 ${bmi}입니다.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '경험을 개인화할 수 있도록 프로필을 마무리해요.',
			'onboarding.reinforcement.healthProfile.goalGain' => '증량',
			'onboarding.reinforcement.healthProfile.goalLose' => '감량',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '목표에 도달하려면 ${direction} ${diff}${unit}가 필요해요.',
			'onboarding.reinforcement.healthProfile.goalReached' => '이미 목표 체중에 도달했어요! 유지하도록 도와드릴게요.',
			'onboarding.reinforcement.healthProfile.button' => '시작하기',
			'onboarding.reinforcement.goalLifestyle.title' => '멋진 시작이에요!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '${goalText}을(를) 향해 첫걸음을 내디뎠어요. 현재 ${activityText} 생활이시니, ${appLabel}가 라이프스타일에 맞게 목표치를 조정해 드릴게요.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '개인 맞춤 칼로리 목표',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI 기반 식사 감지',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '자세한 매크로 영양소 분해',
			'onboarding.reinforcement.goalLifestyle.button' => '시작하기',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '당신의 목표',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '활동적',
			'tabs.dashboard' => '대시보드',
			'tabs.history' => '기록',
			'home.aiSummary.title' => 'AI 요약',
			'home.aiSummary.logMore' => '앞으로 며칠간 더 많은 식사를 기록하면 개인 맞춤 AI 인사이트가 제공됩니다.',
			'home.aiSummary.loading' => '요약을 불러오는 중...',
			'home.aiSummary.mealCount' => ({required Object count}) => '총 ${count}끼 기록됨',
			'home.aiSummary.macroBalanceScore' => ({required Object score}) => '균형 점수 ${score}',
			'home.aiSummary.topFoods' => '자주 먹은 음식',
			'home.aiSummary.trendUp' => '칼로리가 증가 추세예요',
			'home.aiSummary.trendDown' => '칼로리가 감소 추세예요',
			'home.aiSummary.trendSteady' => '칼로리가 안정적으로 유지돼요',
			'home.aiSummary.generatedAt' => ({required Object time}) => '업데이트: ${time}',
			'home.dailyGoal.title' => '일일 목표 설정',
			'home.dailyGoal.titleSet' => '나의 일일 목표',
			'home.dailyGoal.description' => '웰니스 여정을 시작해 볼까요? 아래에서 일일 칼로리 목표를 설정해 보세요.',
			'home.dailyGoal.descriptionSet' => '나침반이 설정됐어요! 이것이 당신을 이끌 일일 칼로리 목표입니다.',
			'home.dailyGoal.yourGoal' => '내 목표',
			'home.dailyGoal.goal' => '목표',
			'home.dailyGoal.dailyCalories' => '일일 칼로리 (kcal)',
			'home.dailyGoal.setGoal' => '목표 설정',
			'home.dailyGoal.intake' => '섭취',
			'home.dailyGoal.burned' => '소모',
			'home.dailyGoal.weightImpact' => '체중 변화 영향',
			'home.dailyGoal.estLoss' => '예상 감량',
			'home.dailyGoal.estGain' => '예상 증량',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => '일일 요약',
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
			'home.intakeHistory.trendTitle' => '오늘의 추세',
			'home.intakeHistory.peakHour' => ({required Object hour}) => '피크: ${hour}:00',
			'home.intakeHistory.noHistoryYet' => '아직 기록이 없어요',
			'home.intakeHistory.startLogging' => '식사를 기록하면\n여기에서 7일 매크로 추세를 볼 수 있어요',
			'home.mealLog.title' => '기록된 식사',
			'home.mealLog.emptyMessage' => '마지막 식사를 사진으로 찍어 여기에서 기록해 보세요.',
			'home.mealLog.noMealsToday' => '오늘 기록된 식사가 없습니다',
			'home.mealLog.seeAllMeals' => '모든 식사 보기',
			'home.mealDescription.title' => 'AI로 빠르게 추가',
			'home.mealDescription.description' => '식사를 간단히 설명하면 AI가 알아서 세부 정보를 채워드려요.',
			'home.mealDescription.hint' => '예: 아침으로 오트밀 큰 그릇에 바나나 한 개를 썰어 넣고, 웨이 단백질 한 스쿱을 넣어 먹었어요 ...',
			'home.mealDescription.analyzeMeal' => '식사 분석',
			'home.favoriteMeals.title' => '즐겨찾는 식사',
			'home.favoriteMeals.description' => '자주 먹는 식사를 빠르게 추가하세요.',
			'home.favoriteMeals.noFavorites' => '즐겨찾는 식사가 아직 없습니다.',
			'home.favoriteMeals.addFavoriteHint' => '식사에서 별표를 눌러 즐겨찾기에 추가해 보세요.',
			'home.favoriteMeals.seeAll' => '모두 보기',
			'home.favoriteMeals.add' => '추가',
			'home.mealSnap.title' => '찍고 식사 추적하기',
			'home.mealSnap.description' => '카메라로 음식을 촬영하면 AI가 분석해 드립니다.',
			'home.mealSnap.openCamera' => '카메라 열기',
			'home.mealSnap.gallery' => '갤러리',
			'home.mealSnap.compressingPhoto' => '사진 최적화 중…',
			'home.mealSnap.uploadingPhoto' => '사진 업로드 중…',
			'home.connectHealth.title' => 'Health Connect 동기화',
			'home.connectHealth.description' => '영양 데이터를 Health Connect와 동기화',
			'home.connectHealth.install' => '설치',
			'home.connectHealth.connect' => '연결',
			'history.noMeals' => '기록된 식사가 없습니다',
			'history.emptyMessage' => '마지막 식사를 사진으로 찍어 여기에서 기록해 보세요.',
			'history.today' => '오늘',
			'history.yesterday' => '어제',
			'meal.ohNo' => '이런!',
			'meal.delete' => '삭제',
			'meal.editMeal' => '식사 편집',
			'meal.addMeal' => '식사 추가',
			'meal.saveMeal' => '식사 저장',
			'meal.save' => '저장',
			'meal.mealName' => '식사 이름',
			'meal.mealNameHint' => '예: 스크램블 에그와 토스트',
			'meal.mealQuantity' => '식사 수량',
			'meal.mealQuantityHint' => '예: 그릇 1개, 조각 2개',
			'meal.timeOfMeal' => '식사 시간',
			'meal.timeOfMealHint' => '식사한 시간을 선택하세요',
			'meal.mealType' => '식사 유형',
			'meal.nutrition.calories' => '칼로리',
			'meal.nutrition.carbs' => '탄수화물 (g)',
			'meal.nutrition.protein' => '단백질 (g)',
			'meal.nutrition.fat' => '지방 (g)',
			'meal.nutrition.fiber' => '식이섬유 (g)',
			'meal.deleteConfirmation.title' => '식사 삭제',
			'meal.deleteConfirmation.message' => '이 식사 기록을 정말 삭제하시겠어요?',
			'meal.deleteConfirmation.cancel' => '취소',
			'meal.deleteConfirmation.delete' => '삭제',
			'meal.addedToLog' => '식사가 기록에 추가되었습니다!',
			'meal.couldNotAdd' => ({required Object error}) => '식사를 추가할 수 없습니다: ${error}',
			'meal.savedSuccessfully' => '식사가 성공적으로 추가되었습니다!',
			'meal.updatedSuccessfully' => '식사가 성공적으로 업데이트되었습니다!',
			'meal.errorSaving' => ({required Object error}) => '저장 중 오류가 발생했습니다: ${error}',
			'meal.removedFromFavorites' => '즐겨찾기에서 제거되었습니다!',
			'meal.savedAsFavorite' => '식사를 즐겨찾기에 저장했습니다!',
			'meal.unfavorite' => '즐겨찾기 해제',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '즐겨찾기를 업데이트할 수 없습니다: ${error}',
			'meal.feedbackThanks' => '피드백 감사합니다!',
			'meal.reanalysisUpdated' => '피드백을 반영해 식사 분석을 업데이트했어요.',
			'meal.failedToProcess' => ({required Object error}) => '처리하지 못했습니다: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '이미지를 처리하지 못했습니다: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '이미지 압축 중 오류: ${error}',
			'meal.failedToSave' => '데이터를 저장하지 못했습니다. 다시 시도해 주세요.',
			'meal.skip' => '건너뛰기',
			'meal.variation.question' => ({required Object current, required Object total}) => '질문 ${current}/${total}',
			'meal.variation.noVariationsAvailable' => '사용 가능한 변형이 없습니다',
			'meal.analysis.title' => 'AI 식사 분석',
			'meal.analysis.reassurance' => '보통 몇 초면 완료됩니다.',
			'meal.analysis.stepStarted' => '시작하는 중…',
			'meal.analysis.stepDecomposition' => '식사 이해 중…',
			'meal.analysis.stepIngredients' => '재료를 영양 데이터와 매칭 중…',
			'meal.analysis.stepUncertainty' => '신뢰도 확인 중…',
			'meal.analysis.stepMealTypeQuestion' => '거의 완료…',
			'meal.analysis.stepResult' => '결과 마무리 중…',
			'meal.analysis.stepError' => '문제가 발생했습니다',
			'meal.analysis.stepDefault' => '식사를 분석하는 중…',
			'meal.analysis.progressUnderstand' => '이해',
			'meal.analysis.progressMatch' => '매칭',
			'meal.analysis.progressCheck' => '검토',
			'meal.analysis.progressFinish' => '완료',
			'meal.analysis.ingredientsLine' => ({required Object count}) => '재료 ${count}개 감지됨',
			'meal.analysis.ingredientsPending' => '재료 스캔 중…',
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => 'Tip: Consistency beats perfection—regular logs reveal the patterns that matter.',
			'meal.analysis.offlineTip1' => 'Tip: For photos, natural light and a top-down view help with portion accuracy.',
			'meal.analysis.offlineTip2' => 'Tip: Mention drinks, sauces, and cooking oil—they add calories people often forget.',
			'meal.analysis.offlineTip3' => 'Tip: A quick portion note (1 bowl, large coffee) makes estimates much sharper.',
			'meal.analysis.offlineTip4' => 'Tip: Logging after the meal still builds the habit; perfection is optional.',
			'meal.analysis.offlineTip5' => 'Tip: Say how food was cooked when it changes calories a lot (fried vs baked).',
			'meal.feedback.title' => 'What looks wrong?',
			'meal.feedback.subtitle' => 'Help us improve the analysis by selecting one or more issues.',
			'meal.feedback.tellUsMore' => 'Tell us more',
			'meal.feedback.describeIncorrect' => 'Describe what was incorrect',
			'meal.feedback.submit' => 'Submit',
			'meal.feedback.issueFoodIdentification' => 'Food identification',
			'meal.feedback.issuePortionSize' => 'Portion size',
			'meal.feedback.issueCalorieDistribution' => 'Calorie distribution',
			'meal.feedback.issueMacrosWrong' => 'Macros are wrong',
			'meal.feedback.issueMissingItems' => 'Missing items',
			'meal.feedback.issueExtraItems' => 'Extra items',
			'meal.feedback.issueOther' => 'Other',
			'favorites.title' => '즐겨찾기',
			'favorites.empty' => '즐겨찾는 식사가 아직 없습니다.',
			'favorites.searchPlaceholder' => '즐겨찾는 식사 검색',
			'favorites.searchEmptyTitle' => '검색과 일치하는 즐겨찾기가 없습니다',
			'favorites.searchEmptySubtitle' => '다른 식사 이름, 수량 또는 식사 유형으로 시도해 보세요.',
			'favorites.sortLabel' => '즐겨찾기 정렬',
			'favorites.undo' => '실행 취소',
			'favorites.removed' => ({required Object name}) => '${name}이(가) 즐겨찾기에서 제거되었습니다',
			'favorites.sortOptions.recent' => '최근순',
			'favorites.sortOptions.calories' => '칼로리순',
			'favorites.sortOptions.alphabetical' => '가나다순',
			'profile.title' => '프로필',
			'profile.noProfileData' => '프로필 데이터를 찾을 수 없습니다',
			'profile.yourProfile' => '내 프로필',
			'profile.viewAndManage' => '건강 정보를 확인하고 관리하세요',
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
			'profile.notSet' => '미설정',
			'profile.years' => '세',
			'profile.updatedSuccessfully' => '프로필이 성공적으로 업데이트되었습니다!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '일일 목표',
			'profile.calculatedValues.calPerDay' => 'cal/일',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => '건강 점수',
			'healthScore.whyThisScore' => '왜 이런 점수일까요?',
			'healthScore.note' => '이 점수는 확인된 재료와 영양 밀도를 기반으로 한 AI 추정치입니다. 개인 맞춤 식단은 전문가와 상의하세요.',
			'healthScore.unhealthy' => '건강하지 않음',
			'healthScore.healthy' => '건강함',
			'healthScore.neutral' => '중립',
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
			'editProfile.imperial' => '야드파운드법',
			'editProfile.unitCm' => 'cm',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => 'kg',
			'editProfile.unitLbs' => 'lbs',
			'editProfile.metricCm' => '미터법 (cm)',
			'editProfile.imperialFtIn' => '야드파운드법 (ft/in)',
			'editProfile.metricKg' => '미터법 (kg)',
			'editProfile.imperialLbs' => '야드파운드법 (lbs)',
			'editProfile.genders.male' => '남성',
			'editProfile.genders.female' => '여성',
			'editProfile.genders.other' => '기타',
			'editProfile.weightGoals.loseWeight.name' => '체중 감량',
			'editProfile.weightGoals.loseWeight.description' => '칼로리 적자를 만들어 체중을 감량합니다',
			'editProfile.weightGoals.maintainWeight.name' => '체중 유지',
			'editProfile.weightGoals.maintainWeight.description' => '현재 체중을 유지합니다',
			'editProfile.weightGoals.gainWeight.name' => '체중 증량',
			'editProfile.weightGoals.gainWeight.description' => '칼로리 흑자를 만들어 체중을 늘립니다',
			'editProfile.activityLevels.sedentary.name' => '좌식 생활',
			'editProfile.activityLevels.sedentary.description' => '운동 거의 없음',
			'editProfile.activityLevels.lightlyActive.name' => '가벼운 활동',
			'editProfile.activityLevels.lightlyActive.description' => '가벼운 운동 주 1~3회',
			'editProfile.activityLevels.moderatelyActive.name' => '보통 활동',
			'editProfile.activityLevels.moderatelyActive.description' => '중간 강도 운동 주 3~5회',
			'editProfile.activityLevels.veryActive.name' => '활동적',
			'editProfile.activityLevels.veryActive.description' => '고강도 운동 주 6~7회',
			'editProfile.activityLevels.extremelyActive.name' => '매우 활동적',
			'editProfile.activityLevels.extremelyActive.description' => '매우 고강도 운동 또는 육체 노동',
			'settings.title' => '설정',
			'settings.sections.profile' => '프로필',
			'settings.sections.localization' => '언어 및 단위',
			'settings.sections.notifications' => '알림',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => '지원 및 약관',
			'settings.sections.about' => '정보',
			'settings.sections.dangerZone' => '주의 영역',
			'settings.sections.developer' => '개발자',
			'settings.editProfile.title' => '프로필 편집',
			'settings.editProfile.subtitle' => '개인 정보를 업데이트하세요',
			'settings.language.title' => '언어',
			'settings.language.subtitle' => '선호하는 언어를 선택하세요',
			'settings.language.searchHint' => '언어 검색...',
			'settings.language.noResults' => '검색 결과가 없습니다',
			'settings.heightUnit.title' => '키 단위',
			'settings.weightUnit.title' => '체중 단위',
			'settings.mealReminders.title' => '식사 알림',
			'settings.mealReminders.subtitle' => '제때 알림으로 꾸준함을 유지하세요',
			'settings.theme.title' => '테마',
			'settings.theme.light' => '라이트',
			'settings.theme.dark' => '다크',
			'settings.theme.system' => '시스템',
			'settings.sendFeedback.title' => '피드백 보내기',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel} 개선에 도움을 주세요',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} 앱 피드백',
			'settings.sendFeedback.emailBodyPrefix' => '아래에 피드백을 작성해 주세요:',
			'settings.sendFeedback.appVersion' => '앱 버전',
			'settings.sendFeedback.device' => '기기',
			'settings.sendFeedback.osVersion' => 'OS 버전',
			'settings.sendFeedback.uid' => 'UID',
			'settings.exportMealHistory.title' => '식사 기록 내보내기',
			'settings.exportMealHistory.subtitle' => '기록한 식사를 CSV로 공유',
			'settings.exportMealHistory.shareText' => 'Calorify 식사 기록 내보내기',
			'settings.exportMealHistory.failed' => ({required Object error}) => '식사 기록을 내보낼 수 없습니다: ${error}',
			'settings.clearAllData.title' => '모든 데이터 삭제',
			'settings.clearAllData.subtitle' => '모든 정보를 되돌릴 수 없이 삭제합니다',
			'settings.clearAllData.confirmationTitle' => '모든 데이터를 삭제할까요?',
			'settings.clearAllData.confirmationMessage' => '이 작업은 취소할 수 없습니다. 기록된 식사, 즐겨찾기, 프로필 설정이 모두 영구적으로 삭제됩니다.',
			'settings.clearAllData.cancel' => '취소',
			'settings.clearAllData.clearEverything' => '모두 삭제',
			'settings.debugOptions.title' => '디버그 옵션',
			'settings.developerModeEnabled' => '개발자 모드가 활성화되었습니다!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '권한을 확인하고 관리하세요',
			'settings.healthConnect.unavailable.title' => 'Health Connect 사용 불가',
			'settings.healthConnect.unavailable.description' => '이 기기에서는 Health Connect를 사용할 수 없습니다. Play 스토어에서 Health Connect를 설치(Android 9+)하거나 Android 14+로 업데이트해 주세요.',
			'settings.healthConnect.permissions.title' => '권한',
			'settings.healthConnect.permissions.description' => '다음 권한은 Health Connect 연동을 제공하기 위해 요청됩니다:',
			'settings.healthConnect.permissions.granted' => '허용됨',
			'settings.healthConnect.permissions.notGranted' => '미허용',
			'settings.healthConnect.permissions.caloriesBurned.title' => '총 소모 칼로리 읽기',
			'settings.healthConnect.permissions.caloriesBurned.description' => '앱이 Health Connect에서 총 소모 칼로리를 읽을 수 있도록 허용합니다.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '이 권한은 일일 칼로리 소모량을 앱에 표시하여 하루 총 에너지 소비를 이해하는 데 도움을 줍니다.',
			'settings.healthConnect.permissions.nutritionRead.title' => '영양 데이터 읽기',
			'settings.healthConnect.permissions.nutritionRead.description' => '앱이 Health Connect에서 영양 데이터를 읽을 수 있도록 허용합니다.',
			'settings.healthConnect.permissions.nutritionRead.usage' => '이 권한은 다른 앱이 Health Connect에 기록한 영양 정보를 읽어, 보다 포괄적인 영양 현황을 제공하는 데 사용됩니다.',
			'settings.healthConnect.permissions.nutritionWrite.title' => '영양 데이터 쓰기',
			'settings.healthConnect.permissions.nutritionWrite.description' => '앱이 Health Connect에 영양 데이터를 쓸 수 있도록 허용합니다.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '이 권한은 앱에서 기록한 식사를 Health Connect와 동기화하여, 사용하는 다른 건강/피트니스 앱에서도 영양 데이터를 활용할 수 있게 해줍니다.',
			'settings.healthConnect.managePermissions' => '권한 관리',
			'settings.healthConnect.openSettings' => 'Health Connect 설정 열기',
			'settings.healthConnect.requestPermissions' => '권한 요청',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '권한 요청이 취소되었거나 실패했습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용해 주세요.',
			'settings.healthConnect.permissionRequestFailed' => '권한을 요청할 수 없습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용해 주세요.',
			'settings.healthConnect.requestingPermissions' => '요청 중...',
			'settings.about.title' => '정보',
			'settings.about.tagline' => '빠르고, 무료이며, 프라이버시를 최우선으로 한 칼로리 인식',
			'settings.about.ourStory.title' => '우리의 이야기',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel}는 단순한 좌절에서 시작되었습니다. 대부분의 칼로리 추적 앱은 지나치게 복잡하거나, 끊임없는 수동 입력을 요구하거나, 비싼 구독료를 받거나, 프라이버시를 타협합니다.\n\n저는 솔로 개발자로서 더 단순하고 공정한 무언가를 만들고 싶었습니다 — AI로 수고를 줄이고, 빠르고 무료로 사용할 수 있으며, 당신의 건강 데이터를 존중하는 앱을요.\n\n${appLabel}는 제가 바라던 앱입니다: 계정 없음, 추적 없음, 광고 없음 — 명확하고 실용적인 인사이트와 당신의 건강 목표만 남겼습니다.',
			'settings.about.privacy.title' => '당신의 프라이버시가 우선입니다',
			'settings.about.privacy.description' => '프라이버시는 사후 고려가 아니라 설계 원칙입니다. 실제로는 다음을 의미합니다:',
			'settings.about.privacy.noAccounts' => '계정 불필요\n앱을 즉시 사용할 수 있습니다. 가입도, 신원도 필요 없습니다.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '행동 추적 없음\n${appLabel}는 활동을 모니터링하거나, 사용 프로필을 만들거나, 다른 앱/웹사이트에서 당신을 추적하지 않습니다.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '광고 없는 설계\n${appLabel}는 광고나 데이터 기반 수익 모델 없이 작동하도록 설계되었습니다.',
			'settings.about.privacy.noDataSelling' => '데이터 판매 없음\n당신의 건강 데이터는 제3자에게 판매되거나 공유되지 않습니다.',
			'settings.about.privacy.localStorage' => '로컬 우선 저장\n데이터는 기기에 보관됩니다.',
			'settings.about.privacy.privacyPolicy' => '개인정보 처리방침',
			'settings.about.developer.title' => '솔로 개발자가 만든 앱',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}는 한 명의 솔로 개발자가 차분하고 프라이버시를 존중하는 건강 소프트웨어를 만들기 위해 개발·유지하고 있습니다.\n\n보내주시는 피드백은 직접 읽고, 앱의 방향을 정하는 데 큰 도움이 됩니다.',
			'settings.about.developer.website' => '웹사이트',
			'settings.about.developer.email' => '이메일',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel}가 마음에 드시나요?',
			'settings.about.feedback.description' => ({required Object appLabel}) => '당신의 피드백은 ${appLabel}를 모두에게 더 나은 앱으로 만듭니다.',
			'settings.about.feedback.rateApp' => 'Play 스토어에서 평가하기',
			'settings.about.feedback.sendFeedback' => '피드백 보내기',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => '빌드 ${buildNumber}',
			'reminders.title' => '알림으로 꾸준함 유지하기',
			'reminders.description' => '식사를 기록하고 영양 목표를 꾸준히 달성할 수 있도록 부드러운 알림을 받아보세요',
			'reminders.notificationsEnabled' => '알림 사용 중',
			'reminders.notificationsDisabled' => '알림 꺼짐',
			'reminders.enabledSubtitle' => '식사 알림을 받게 됩니다',
			'reminders.disabledSubtitle' => '알림을 활성화하면 식사 알림을 받을 수 있어요',
			'reminders.mealReminders' => '식사 알림',
			'reminders.breakfast' => '아침',
			'reminders.lunch' => '점심',
			'reminders.dinner' => '저녁',
			'reminders.snack' => '간식',
			'reminders.unknown' => '알 수 없음',
			'reminders.change' => '변경',
			'reminders.enableNotifications' => '알림 활성화',
			'reminders.skipForNow' => '나중에 하기',
			'reminders.saveChanges' => '변경 사항 저장',
			'reminders.enabledSuccessfully' => '알림이 성공적으로 활성화되었습니다!',
			'reminders.permissionDenied' => '알림 권한이 거부되었습니다',
			'reminders.errorEnabling' => ({required Object error}) => '알림을 활성화하는 중 오류: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '설정을 완료하는 중 오류: ${error}',
			'notifications.breakfast.title' => '아침 식사 시간이에요! 🍳',
			'notifications.breakfast.body' => '아침 식사 기록을 잊지 마세요',
			'notifications.lunch.title' => '점심 시간이에요! 🥗',
			'notifications.lunch.body' => '점심 식사를 기록해 보세요',
			'notifications.dinner.title' => '저녁 시간이에요! 🍽️',
			'notifications.dinner.body' => '저녁 식사 기록을 잊지 마세요',
			'notifications.snack.title' => '간식 시간! 🍎',
			'notifications.snack.body' => '건강한 간식 어떠세요?',
			'notifications.test.title' => '테스트 알림',
			'login.title' => '로그인',
			'login.signInWithGoogle' => 'Google로 로그인',
			'login.signInFailed' => 'Google 로그인에 실패했거나 취소되었습니다.',
			'disclaimer.pleaseNote' => '유의하세요',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel}는 추정된 영양 정보를 제공합니다. 정확도는 입력 내용과 음식의 차이에 따라 달라질 수 있습니다. 절대적 지표가 아닌 참고용으로 사용하세요. 개인화된 식단은 전문가와 상담하세요.',
			'disclaimer.snap.portionSize.title' => '포션 크기',
			'disclaimer.snap.portionSize.description' => '추정 정확도는 올바른 포션 크기 판단에 크게 좌우됩니다.',
			'disclaimer.snap.preparationMethods.title' => '조리 방법',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '조리 방법은 영양 성분을 크게 바꿀 수 있습니다. ${appLabel}의 추정치는 이러한 변화를 항상 반영하지 못할 수 있습니다.',
			'disclaimer.snap.ingredients.title' => '재료',
			'disclaimer.snap.ingredients.description' => '숨겨진 재료가 많은 복합 요리는 추정 정확도가 떨어질 수 있습니다.',
			'disclaimer.snap.databaseLimitations.title' => '데이터베이스 한계',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}의 식품 데이터베이스는 방대하지만 모든 식품이나 모든 변형을 포함하지는 않을 수 있습니다.',
			'disclaimer.weightEstimate.title' => '체중 추정에 대하여',
			'disclaimer.weightEstimate.description' => '예상 체중 변화는 단순한 섭취 칼로리 vs. 소모 칼로리 모델에 기반한 이론적 추정치입니다. 동기 부여를 위한 참고용일 뿐 실제 체중 변화를 예측하는 용도는 아닙니다.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '칼로리 정확도',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '이 추정치는 기록한 섭취/소모 칼로리의 정확도에 비례합니다. 부정확한 기록은 부정확한 예측을 초래합니다.',
			'disclaimer.weightEstimate.biologicalFactors.title' => '생물학적 요인',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '실제 체중 변화는 대사, 호르몬, 수면, 스트레스, 수분 상태 등 ${appLabel}가 측정할 수 없는 개인적 요인의 영향을 받습니다.',
			'disclaimer.weightEstimate.waterWeight.title' => '수분 및 변동',
			'disclaimer.weightEstimate.waterWeight.description' => '일상 체중은 수분 보유, 소화, 시간대 등에 따라 크게 변동할 수 있습니다. 이 추정치는 이러한 일일 변동을 반영하지 않습니다.',
			'disclaimer.weightEstimate.professionalGuidance.title' => '전문가 상담',
			'disclaimer.weightEstimate.professionalGuidance.description' => '의료적 결정을 내리는 데 이 추정치를 사용하지 마세요. 개인 맞춤 체중 관리는 반드시 의료 전문가나 공인 영양사와 상의하세요.',
			'disclaimer.healthMetrics.description' => '이 지표들은 몸의 에너지 필요량을 이해하고 영양 목표를 세우는 데 도움을 줍니다.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '기초대사량(BMR)은 호흡과 혈액순환 같은 기본 기능을 유지하기 위해 휴식 중에 몸이 소비하는 칼로리입니다. BMR은 나이, 성별, 키, 체중에 따라 달라집니다. 일반적으로 근육량이 많거나, 나이가 젊거나, 남성일수록 BMR이 높아 휴식 중에도 더 많은 칼로리를 소모합니다. 반대로 근육량이 적거나, 나이가 많거나, 여성인 경우 BMR이 낮은 경향이 있습니다.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '총일일에너지소비량(TDEE)은 BMR에 하루 동안의 신체 활동과 일상 움직임으로 소모되는 칼로리를 더한, 하루 총 소모 칼로리입니다. TDEE는 BMR과 활동 수준에 따라 달라집니다. 활동적이거나 BMR이 높을수록 TDEE가 높아지고, 활동이 적거나 BMR이 낮으면 TDEE가 낮아집니다.',
			'disclaimer.healthMetrics.dailyGoal.title' => '일일 목표',
			'disclaimer.healthMetrics.dailyGoal.description' => '일일 목표는 TDEE와 체중 목표를 기반으로 권장되는 하루 섭취 칼로리입니다. 감량은 TDEE보다 적게, 유지 는 TDEE와 같게, 증량은 TDEE보다 많이 섭취합니다. 이를 통해 건강한 속도로 원하는 체중 변화를 이룰 수 있습니다.',
			'disclaimer.calorieExpenditure.title' => '칼로리 소모 추정',
			'disclaimer.calorieExpenditure.description' => 'Health Connect 데이터를 사용할 수 없는 경우, 오늘의 소모 칼로리는 기초대사량(BMR)과 활동 수준(TDEE)을 기반으로, 지나간 시간 비율에 맞게 추정합니다.',
			'disclaimer.calorieExpenditure.howCalculated.title' => '계산 방식',
			'disclaimer.calorieExpenditure.howCalculated.description' => '프로필을 기반으로 TDEE를 계산하고, 경과한 하루 비율(시간 + 분)/24를 곱해 현재까지의 소모 칼로리를 추정합니다.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '전문가 상담',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '의료적 결정을 내리는 데 이 추정치를 사용하지 마세요. 개인 맞춤 조언은 의료 전문가나 공인 영양사와 상의하세요.',
			'common.close' => '닫기',
			'common.kContinue' => '계속',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel}가 마음에 드시나요?',
			'feedbackRating.yes' => '네, 마음에 들어요',
			'feedbackRating.no' => '아니요, 별로예요',
			'feedbackRating.rateStepHeading' => 'Play 스토어에서 평가하기',
			'feedbackRating.emailStepHeading' => '이메일로 피드백 보내기',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '짧은 평가가 다른 분들이 ${appLabel}를 찾는 데 도움이 되고 개발을 지속시키는 힘이 됩니다. 잠시만 시간을 내 주실 수 있나요?',
			'feedbackRating.shareFeedbackViaEmail' => '여러분의 피드백이 다음 업데이트를 만듭니다 — 모든 메시지를 직접 읽고 있습니다. 이메일로 의견을 보내주시겠어요?',
			'feedbackRating.rateCta' => 'Play 스토어에서 평가하기',
			'feedbackRating.maybeLater' => '다음에 할게요',
			'feedbackRating.sendFeedback' => '피드백 보내기',
			'feedbackRating.noThanks' => '괜찮아요',
			'feedbackRating.aboutUsDescription' => '작은 팀이 정성껏 만들었습니다. 우리는 프라이버시, 단순함, 더 나은 식습관 형성에 집중합니다.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel}를 만든 사람들이 궁금하신가요? ',
			'feedbackRating.aboutUsLinkLabel' => '소개 보기',
			'feedbackRating.thankYouMessage' => '감사합니다! 다음에 다시 여쭤볼게요.',
			'health.syncFailed' => 'Health Connect에 동기화하지 못했습니다',
			'health.mealSynced' => '식사가 Health Connect와 동기화되었습니다',
			_ => null,
		};
	}
}
