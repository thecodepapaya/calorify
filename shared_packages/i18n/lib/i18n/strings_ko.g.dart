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
	@override String get rateLimitExceeded => '요청이 너무 많습니다. 잠시 기다린 후 다시 시도하세요.';
	@override String get networkError => '네트워크 오류입니다. 인터넷 연결을 확인해주세요.';
	@override String get unknownError => '문제가 발생했습니다. 나중에 다시 시도해주세요.';
	@override String get loadingProfileData => '프로필 데이터 로드 중 오류';
	@override String get somethingWentWrong => '문제가 발생했습니다.';
	@override String get retry => '다시 시도';
}

// Path: onboarding
class _TranslationsOnboardingKo implements TranslationsOnboardingEn {
	_TranslationsOnboardingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}에 오신 것을 환영합니다';
	@override String get subtitle => 'AI가 지원하는 개인 영양 파트너';
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
	@override String get emptyMessage => '마지막 식사를 사진으로 찍어 여기서 기록하세요.';
	@override String get today => '오늘';
	@override String get yesterday => '어제';
}

// Path: meal
class _TranslationsMealKo implements TranslationsMealEn {
	_TranslationsMealKo._(this._root);

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
	@override late final _TranslationsMealNutritionKo nutrition = _TranslationsMealNutritionKo._(_root);
	@override late final _TranslationsMealDeleteConfirmationKo deleteConfirmation = _TranslationsMealDeleteConfirmationKo._(_root);
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
	@override String get failedToSave => '데이터 저장 실패. 다시 시도해주세요.';
	@override String get skip => '건너뛰기';
	@override late final _TranslationsMealQuestionFlowKo questionFlow = _TranslationsMealQuestionFlowKo._(_root);
	@override late final _TranslationsMealAnalysisKo analysis = _TranslationsMealAnalysisKo._(_root);
	@override late final _TranslationsMealLocalInferenceKo localInference = _TranslationsMealLocalInferenceKo._(_root);
	@override late final _TranslationsMealFeedbackKo feedback = _TranslationsMealFeedbackKo._(_root);
}

// Path: favorites
class _TranslationsFavoritesKo implements TranslationsFavoritesEn {
	_TranslationsFavoritesKo._(this._root);

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
	@override late final _TranslationsFavoritesSortOptionsKo sortOptions = _TranslationsFavoritesSortOptionsKo._(_root);
}

// Path: profile
class _TranslationsProfileKo implements TranslationsProfileEn {
	_TranslationsProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필';
	@override String get noProfileData => '프로필 데이터가 없습니다';
	@override String get yourProfile => '내 프로필';
	@override String get viewAndManage => '건강 정보를 보고 관리하세요';
	@override late final _TranslationsProfileSectionsKo sections = _TranslationsProfileSectionsKo._(_root);
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
	@override late final _TranslationsProfileCalculatedValuesKo calculatedValues = _TranslationsProfileCalculatedValuesKo._(_root);
}

// Path: healthScore
class _TranslationsHealthScoreKo implements TranslationsHealthScoreEn {
	_TranslationsHealthScoreKo._(this._root);

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
	@override String get imperial => '영국식';
	@override String get unitCm => 'cm';
	@override String get unitFt => 'ft';
	@override String get unitKg => 'kg';
	@override String get unitLbs => 'lbs';
	@override String get metricCm => '미터법 (cm)';
	@override String get imperialFtIn => '피트/인치 (ft/in)';
	@override String get metricKg => '미터법 (kg)';
	@override String get imperialLbs => '파운드 (lbs)';
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
	@override late final _TranslationsSettingsLocalInferenceKo localInference = _TranslationsSettingsLocalInferenceKo._(_root);
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
	@override String get pleaseNote => '알아두세요';
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
class _TranslationsHealthKo implements TranslationsHealthEn {
	_TranslationsHealthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect로 동기화할 수 없습니다';
	@override String get mealSynced => '식사가 Health Connect에 동기화되었습니다';
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
	@override String get title => '성별이 어떻게 되세요?';
	@override String get description => '성별 정보는 기초대사량(BMR)을 정확히 계산하는 데 도움이 됩니다.';
	@override String get next => '다음';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightKo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '키가 어떻게 되세요?';
	@override String get description => '키 정보는 BMI와 에너지 필요량을 정확히 계산하는 데 필요합니다.';
	@override String get metric => '미터법';
	@override String get imperial => '영국식(인치/피트)';
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
	@override String get imperial => '영국식(파운드)';
	@override String get next => '다음';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeKo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '생일은 언제인가요?';
	@override String get description => '나이는 칼로리 필요량을 정확히 계산하는 데 도움이 됩니다.';
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
	@override String get title => '목표는 무엇인가요?';
	@override String get description => '달성하고자 하는 목표에 가장 가까운 항목을 선택하세요';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelKo implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '평소 활동량은 어느 정도인가요?';
	@override String get description => '이는 일일 칼로리 필요량을 보다 정확히 계산하는 데 도움이 됩니다';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectKo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect에 연결하기';
	@override String get description => '더 나은 인사이트와 자동 칼로리 추적을 위해 건강 데이터를 동기화하세요';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingKo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingKo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsKo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsKo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationKo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationKo._(_root);
	@override String get connected => 'Health Connect 연결됨';
	@override String get notConnected => 'Health Connect 연결 안 됨';
	@override String get setup => 'Health Connect 설정';
	@override String get skipForNow => '일단 건너뛰기';
	@override String get statusConnected => 'Health Connect가 연결되어 있습니다.';
	@override String get statusSuccess => 'Health Connect가 성공적으로 연결되었습니다!';
	@override String statusPermissionDenied({required Object appLabel}) => '권한이 거부되었습니다. ${appLabel}에 대한 Health Connect 권한을 휴대폰 설정에서 활성화해주세요.';
	@override String statusError({required Object error}) => 'Health Connect 설정 오류: ${error}';
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
class _TranslationsHomeDailyGoalKo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalKo._(this._root);

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
	@override String get kcal => 'kcal';
}

// Path: home.dailySummary
class _TranslationsHomeDailySummaryKo implements TranslationsHomeDailySummaryEn {
	_TranslationsHomeDailySummaryKo._(this._root);

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
	@override String get trendTitle => '오늘 추세';
	@override String peakHour({required Object hour}) => '최대: ${hour}:00';
	@override String get noHistoryYet => '아직 기록이 없습니다';
	@override String get startLogging => '식사를 기록하면\n7일 매크로 추세를 여기서 볼 수 있습니다';
}

// Path: home.mealLog
class _TranslationsHomeMealLogKo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기록된 식사';
	@override String get emptyMessage => '마지막 식사를 사진으로 찍어 여기서 기록하세요.';
	@override String get noMealsToday => '오늘 기록된 식사가 없습니다';
	@override String get seeAllMeals => '모든 식사 보기';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionKo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI로 빠르게 추가';
	@override String get description => '식사를 설명하면 AI가 세부사항을 처리합니다.';
	@override String get hint => '예: 아침으로 큰 오트밀 한 그릇에 바나나 슬라이스 한 개와 웨이 한 스쿱을 먹었어요 ...';
	@override String get analyzeMeal => '식사 분석';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsKo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsKo._(this._root);

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
class _TranslationsHomeMealSnapKo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapKo._(this._root);

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
class _TranslationsHomeConnectHealthKo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect와 동기화';
	@override String get description => '영양 데이터를 Health Connect와 동기화하세요';
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
	@override String get message => '이 식사 항목을 삭제하시겠습니까?';
	@override String get cancel => '취소';
	@override String get delete => '삭제';
}

// Path: meal.questionFlow
class _TranslationsMealQuestionFlowKo implements TranslationsMealQuestionFlowEn {
	_TranslationsMealQuestionFlowKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String progress({required Object current, required Object total}) => '질문 ${current} / ${total}';
	@override String get noQuestionsAvailable => '사용 가능한 질문이 없습니다';
	@override String get next => '다음';
	@override String get continueLabel => '계속';
}

// Path: meal.analysis
class _TranslationsMealAnalysisKo implements TranslationsMealAnalysisEn {
	_TranslationsMealAnalysisKo._(this._root);

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
	@override String mealPreviewDescription({required Object text}) => '"${text}"';
	@override String get offlineTip0 => '팁: 완벽함보다 꾸준함이 중요합니다—정기적인 기록이 중요한 패턴을 드러냅니다.';
	@override String get offlineTip1 => '팁: 사진은 자연광과 위에서 내려다보는 구도가 분량 추정에 도움이 됩니다.';
	@override String get offlineTip2 => '팁: 음료, 소스, 식용유도 칼로리를 추가하니 꼭 언급하세요.';
	@override String get offlineTip3 => '팁: 빠른 분량 표시(예: 1그릇, 큰 커피)는 추정을 훨씬 정확하게 만듭니다.';
	@override String get offlineTip4 => '팁: 식사 후 기록해도 습관을 기르는 데 도움이 됩니다; 완벽할 필요는 없습니다.';
	@override String get offlineTip5 => '팁: 조리 방식(튀김 vs 구이 등)에 따라 칼로리가 많이 달라지면 조리법을 알려주세요.';
}

// Path: meal.localInference
class _TranslationsMealLocalInferenceKo implements TranslationsMealLocalInferenceEn {
	_TranslationsMealLocalInferenceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get reviewTitle => '감지된 식재료 확인';
	@override String get reviewSubtitle => '기기에서 분석한 내용입니다. 영양 성분을 계산하기 전에 이름이나 양을 수정해 주세요.';
	@override String get mealName => '식사 이름';
	@override String get ingredient => '식재료';
	@override String get grams => '추정 중량(g)';
	@override String get removeIngredient => '식재료 삭제';
	@override String get continueLabel => '계속하기';
	@override String get invalidProposal => '최소 하나 이상의 식재료를 추가하고, 양을 양수로 입력해 주세요.';
	@override String get localUnavailable => '현재 기기 내 분석을 사용할 수 없습니다.';
	@override String get calculationDetails => '계산 방식';
	@override String get interpretationLocal => '기기에서 분석한 식재료';
	@override String get interpretationCloud => '클라우드에서 분석한 식재료';
	@override String get interpretationManual => '사용자가 확인하거나 수정한 식재료';
	@override String get nutritionRemote => 'Calorify를 통해 USDA에서 가져온 영양 정보';
	@override String get nutritionFallback => '일부 영양 수치는 원격으로 추정되었습니다';
	@override String get calculationServer => 'Calorify에서 계산한 칼로리 및 매크로';
	@override String get fallbackUsed => '기기 내 분석 실패로 클라우드 처리를 사용했습니다';
	@override String get noRawContent => '진단 영수증에는 식사 텍스트나 사진이 포함되지 않습니다.';
}

// Path: meal.feedback
class _TranslationsMealFeedbackKo implements TranslationsMealFeedbackEn {
	_TranslationsMealFeedbackKo._(this._root);

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
class _TranslationsFavoritesSortOptionsKo implements TranslationsFavoritesSortOptionsEn {
	_TranslationsFavoritesSortOptionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get recent => '최근';
	@override String get calories => '칼로리';
	@override String get alphabetical => '가-나';
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
	@override String get localization => '지역화';
	@override String get notifications => '알림';
	@override String get healthConnect => 'HEALTH CONNECT';
	@override String get localInference => '기기 내 분석';
	@override String get supportAndLegal => '지원 및 법적 고지';
	@override String get about => '앱 정보';
	@override String get dangerZone => '위험 구역';
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
	@override String get noResults => '결과를 찾을 수 없습니다';
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
	@override String get subtitle => '정시 알림으로 계획을 지키세요';
}

// Path: settings.localInference
class _TranslationsSettingsLocalInferenceKo implements TranslationsSettingsLocalInferenceEn {
	_TranslationsSettingsLocalInferenceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기기 내 식사 분석';
	@override String get subtitle => '영양 성분을 계산하기 전, Gemini Nano를 통해 지원되는 식사를 분석합니다';
	@override String get unavailable => '이 기기에서는 사용할 수 없습니다';
	@override String get rolloutUnavailable => '지원 하드웨어가 발견되었으나, 현재 앱 버전에서는 이 기능이 활성화되지 않았습니다';
	@override String get modelSetup => '이 기능을 활성화하려면 Gemini Nano 다운로드가 완료되어야 합니다';
	@override String get useLocalTitle => '기기 내 분석 사용';
	@override String get useLocalSubtitle => '선택 사항이며 기본적으로 꺼져 있습니다. 복잡한 식사의 경우 결과가 덜 정확할 수 있습니다.';
	@override String get disclosureTitle => '기기 내 분석을 활성화하기 전에';
	@override String get disclosureBody => 'Gemini Nano는 지원되는 Android 기기에서 식재료를 식별하고 양을 추정할 수 있습니다. 확인된 식재료 제안은 USDA 영양 정보 기반 확인 및 계산을 위해 Calorify로 전송됩니다.';
	@override String get disclosureLimit1 => '복잡한 요리, 숨겨진 식재료 및 분량은 잘못 식별될 수 있습니다.';
	@override String get disclosureLimit2 => '다운로드 중이거나, 기기가 바쁘거나, 백그라운드 상태이거나, 기기 제한이 있는 경우 모델을 사용할 수 없습니다.';
	@override String get disclosureLimit3 => '기기 내 분석을 완료할 수 없는 경우, 이 베타 버전은 원래의 식사 설명을 Calorify로 자동 전송하여 클라우드 분석을 수행합니다.';
	@override String get acknowledgement => '감지된 식재료와 양을 확인해야 함을 이해했습니다.';
	@override String get enable => '동의 및 활성화';
	@override String get cancel => '취소';
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
	@override String get emailBodyPrefix => '다음에 피드백을 작성해주세요:';
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
	@override String get subtitle => '기록한 식사를 CSV로 공유하세요';
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
	@override String get confirmationTitle => '모든 데이터를 삭제하시겠습니까?';
	@override String get confirmationMessage => '이 작업은 되돌릴 수 없습니다. 기록된 모든 식사, 즐겨찾기 및 프로필 설정이 영구적으로 삭제됩니다.';
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
	@override String get subtitle => '권한 보기 및 관리';
	@override late final _TranslationsSettingsHealthConnectUnavailableKo unavailable = _TranslationsSettingsHealthConnectUnavailableKo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsKo permissions = _TranslationsSettingsHealthConnectPermissionsKo._(_root);
	@override String get managePermissions => '권한 관리';
	@override String get openSettings => 'Health Connect 설정 열기';
	@override String get requestPermissions => '권한 요청';
	@override String get permissionRequestCancelledOrFailed => '권한 요청이 취소되었거나 실패했습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용하세요.';
	@override String get permissionRequestFailed => '권한을 요청할 수 없습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 허용하세요.';
	@override String get requestingPermissions => '요청 중...';
}

// Path: settings.about
class _TranslationsSettingsAboutKo implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '앱 정보';
	@override String get tagline => '빠르고 무료이며 프라이버시를 우선시하는 칼로리 인식';
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
	@override String get title => '아침 시간이에요! 🍳';
	@override String get body => '아침 기록하는 것을 잊지 마세요';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchKo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '점심 시간이에요! 🥗';
	@override String get body => '점심을 기록할 시간이에요';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerKo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '저녁 시간이에요! 🍽️';
	@override String get body => '저녁 기록하는 것을 잊지 마세요';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackKo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '간식 시간이에요! 🍎';
	@override String get body => '건강한 간식을 기록할 시간이에요';
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
	@override String description({required Object appLabel}) => '${appLabel}는 추정된 영양 정보를 제공합니다. 정확성은 입력과 음식의 변이에 따라 달라집니다. 참고용으로 사용하시고, 개인화된 식단 조언은 전문가와 상담하세요.';
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
	@override String get title => '체중 예측에 관하여';
	@override String get description => '예상 체중 변화는 단순한 칼로리 소비 vs 섭취 모델에 기반한 이론적 추정치입니다. 이는 동기부여용 안내이며 실제 체중 예측을 위한 수단이 아닙니다.';
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
	@override String get description => '이 지표들은 신체의 에너지 필요량을 이해하고 영양 목표를 안내하는 데 도움이 됩니다.';
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
	@override String get description => 'Health Connect 데이터가 없을 때, 우리는 기초대사량(BMR)과 활동 수준(TDEE)을 사용해 오늘 소모한 칼로리를 하루 경과 비율에 맞춰 추정합니다.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo._(_root);
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionKo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '스마트 음식 인식';
	@override String get description => '사진을 찍으면 AI가 식단을 식별해줍니다';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisKo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 분석';
	@override String get description => '설명만으로도 즉시 영양 정보를 확인하세요';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationKo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 연동';
	@override String get description => '더 나은 인사이트를 위해 Health Connect와 연결하세요';
}

// Path: onboarding.bmiScale.categories
class _TranslationsOnboardingBmiScaleCategoriesKo implements TranslationsOnboardingBmiScaleCategoriesEn {
	_TranslationsOnboardingBmiScaleCategoriesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '저체중';
	@override String get healthyWeight => '건강 체중';
	@override String get overweight => '과체중';
	@override String get obese => '비만';
}

// Path: onboarding.bmiScale.messages
class _TranslationsOnboardingBmiScaleMessagesKo implements TranslationsOnboardingBmiScaleMessagesEn {
	_TranslationsOnboardingBmiScaleMessagesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '영양이 풍부한 식단으로 균형 잡힌 체중을 목표로 하는 건강한 계획을 도와드릴게요.';
	@override String get healthy => '잘하고 계세요! 건강한 범위에 있습니다. 활력과 에너지를 유지하도록 도와드릴게요.';
	@override String overweight({required Object appLabel}) => '${appLabel}가 AI 기반 추적으로 목표 체중에 편안하게 도달할 수 있도록 여정을 단순화해 드립니다.';
	@override String get obese => '개인 맞춤형 안내와 지속 가능한 전략으로 목표 건강 상태를 달성할 수 있도록 지원합니다.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingKo implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자동 칼로리 추적';
	@override String get description => '피트니스 앱에서 소모한 칼로리를 추적합니다';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsKo implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '진행 인사이트';
	@override String get description => '건강 추세에 대한 자세한 인사이트를 제공합니다';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationKo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '원활한 통합';
	@override String get description => '자주 사용하는 건강 앱의 데이터를 동기화하세요';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessKo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessKo._(this._root);

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
class _TranslationsOnboardingReinforcementHealthProfileKo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileKo._(this._root);

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
class _TranslationsOnboardingReinforcementGoalLifestyleKo implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleKo._(this._root);

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
class _TranslationsEditProfileWeightGoalsLoseWeightKo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 감량';
	@override String get description => '체중을 줄이기 위해 칼로리 적자를 만듭니다';
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
	@override String get name => '체중 증가';
	@override String get description => '체중을 늘리기 위해 칼로리 잉여를 만듭니다';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryKo implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '거의 활동 없음';
	@override String get description => '운동 거의 또는 전혀 없음';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveKo implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '가벼운 활동';
	@override String get description => '주 1-3회 가벼운 운동';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveKo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '보통 활동';
	@override String get description => '주 3-5회 중간 강도 운동';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveKo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '매우 활동적';
	@override String get description => '주 6-7회 고강도 운동';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveKo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '극도로 활동적';
	@override String get description => '매우 고강도 운동 또는 육체 노동';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableKo implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 사용 불가';
	@override String get description => '이 기기에서는 Health Connect를 사용할 수 없습니다. Android 9 이상에서는 Play Store에서 Health Connect를 설치하거나 Android 14 이상으로 업데이트하세요.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsKo implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '권한';
	@override String get description => 'Health Connect 통합을 제공하기 위해 다음 권한이 요청됩니다:';
	@override String get granted => '허용됨';
	@override String get notGranted => '허용되지 않음';
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
	@override String content({required Object appLabel}) => '${appLabel}는 단순한 불편함에서 시작했습니다: 대부분의 칼로리 추적 앱은 지나치게 복잡하거나, 끊임없는 수동 입력을 요구하거나, 높은 구독료를 청구하거나, 프라이버시를 희생합니다.\n\n혼자 개발자로서 저는 더 간단하고 공정한 무언가를 만들고 싶었습니다 — 노력을 줄이는 AI를 사용하고, 빠르고 무료로 유지되며, 건강 데이터를 존중하는 앱을요.\n\n${appLabel}는 제가 존재하길 바랐던 앱입니다: 계정 불필요, 추적 없음, 광고 없음 — 명확하고 실용적인 인사이트와 당신의 건강 목표만 남깁니다.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyKo implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인정보 보호는 중요합니다';
	@override String get description => '개인정보 보호는 부수적인 고려사항이 아니라 설계 원칙입니다. 실제로 이것이 의미하는 바는 다음과 같습니다:';
	@override String get noAccounts => '계정 불필요\n바로 앱을 사용하세요. 가입이나 신원 확인이 필요 없습니다.';
	@override String noTracking({required Object appLabel}) => '추적 없음\n${appLabel}는 활동을 모니터링하거나 사용 프로필을 만들거나 다른 앱이나 웹사이트에서 사용자를 추적하지 않습니다.';
	@override String noAds({required Object appLabel}) => '광고 없음으로 설계됨\n${appLabel}는 광고나 데이터 기반 수익화 없이 작동하도록 만들어졌습니다.';
	@override String get noDataSelling => '데이터 판매 없음\n건강 데이터는 제3자에게 판매되거나 공유되지 않습니다.';
	@override String get localStorage => '로컬 우선 저장\n데이터는 기기에 저장됩니다.';
	@override String get privacyPolicy => '개인정보 처리방침';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperKo implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '단독 개발자가 제작';
	@override String description({required Object appLabel}) => '${appLabel}는 차분하고 프라이버시를 존중하는 건강 소프트웨어를 만드는 데 집중하는 단독 개발자가 제작 및 유지합니다.\n\n피드백은 직접 읽히며 앱의 방향을 결정하는 데 도움이 됩니다.';
	@override String get website => '웹사이트';
	@override String get email => '이메일';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackKo implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}이 마음에 드시나요?';
	@override String description({required Object appLabel}) => '여러분의 피드백은 ${appLabel}을 모두에게 더 좋게 만듭니다.';
	@override String get rateApp => 'Play Store에 평가하기';
	@override String get sendFeedback => '피드백 보내기';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeKo implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '분량';
	@override String get description => '추정치의 정확성은 분량을 얼마나 정확히 평가하느냐에 크게 좌우됩니다.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsKo implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '조리 방법';
	@override String description({required Object appLabel}) => '조리 방법은 음식의 영양 성분을 크게 바꿀 수 있습니다. ${appLabel}의 추정치는 항상 이러한 변이를 모두 반영하지 않을 수 있습니다.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsKo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '재료';
	@override String get description => '숨겨진 재료가 많은 복잡한 요리는 정확도가 떨어질 수 있습니다.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsKo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터베이스 한계';
	@override String description({required Object appLabel}) => '${appLabel}의 음식 데이터베이스는 광범위하지만 모든 음식 항목이나 변형을 포함하지 않을 수 있습니다.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyKo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '칼로리 정확도';
	@override String get description => '이 추정치는 기록된 칼로리 섭취 및 소비의 정확성에 따라 달라집니다. 부정확한 기록은 부정확한 예측을 초래합니다.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsKo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '개인 생리적 요인';
	@override String description({required Object appLabel}) => '실제 체중 변화는 신진대사, 호르몬, 수면, 스트레스, 수분 상태 및 ${appLabel}가 측정할 수 없는 기타 개인적 요인의 영향을 받습니다.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightKo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '수분 체중 및 변동';
	@override String get description => '일상적인 체중은 수분 보유, 소화 및 시간에 따라 크게 변동할 수 있습니다. 이 추정치는 이러한 일일 변화를 반영하지 않습니다.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가 조언';
	@override String get description => '이 추정치를 의료 결정에 사용하지 마세요. 개인화된 체중 관리 조언은 항상 의료 전문가나 공인 영양사와 상담하세요.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrKo implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '기초대사량(BMR)은 호흡 및 순환 같은 기본 기능을 유지하기 위해 휴식 시 신체가 소모하는 칼로리 수입니다. BMR은 나이, 성별, 키 및 체중에 따라 달라집니다. 더 높은 BMR은 일반적으로 근육량이 많거나 젊거나 남성일 때 나타나며, 더 낮은 BMR은 근육량이 적거나 고령이거나 여성일 때 나타나는 경향이 있습니다.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeKo implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '총 일일 에너지 소비량(TDEE)은 BMR에 신체 활동 및 일상적인 움직임에 의한 칼로리를 포함한 하루 전체 소모 칼로리입니다. TDEE는 BMR과 활동 수준에 따라 달라집니다. 더 높은 TDEE는 일반적으로 더 활동적이거나 BMR이 높은 경우에 해당하며, 더 낮은 TDEE는 일상 활동이 적거나 BMR이 낮음을 시사합니다.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalKo implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 목표';
	@override String get description => '일일 목표는 TDEE와 체중 목표를 기반으로 권장되는 일일 칼로리 섭취량입니다. 체중 감량은 TDEE보다 적게 섭취하고, 체중 유지 시 TDEE와 비슷하게 섭취하며, 체중 증가 시 TDEE보다 더 많이 섭취합니다. 이는 건강한 속도로 원하는 체중 변화를 달성하는 데 도움을 줍니다.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '추정 계산 방법';
	@override String get description => '프로필을 기반으로 TDEE를 계산하고 경과한 시간(시 + 분) / 24를 곱해 지금까지 소모한 칼로리를 추정합니다.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가 조언';
	@override String get description => '이 추정치를 의료 결정에 사용하지 마세요. 개인화된 체중 관리 조언은 항상 의료 전문가나 공인 영양사와 상담하세요.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '총 소모 칼로리 읽기';
	@override String get description => '앱이 Health Connect에서 총 소모 칼로리를 읽을 수 있게 합니다.';
	@override String get usage => '이 권한은 앱에 일일 소모 칼로리를 표시하여 하루 전체 에너지 소비를 이해하는 데 사용됩니다.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadKo implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영양 데이터 읽기';
	@override String get description => '앱이 Health Connect에서 영양 데이터를 읽을 수 있게 합니다.';
	@override String get usage => '이 권한은 다른 앱이 Health Connect에 기록한 영양 정보를 읽어 영양의 종합적인 뷰를 제공합니다.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteKo implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteKo._(this._root);

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
			'onboarding.healthConnect.automaticTracking.title' => '자동 칼로리 추적',
			'onboarding.healthConnect.automaticTracking.description' => '피트니스 앱에서 소모한 칼로리를 추적합니다',
			'onboarding.healthConnect.progressInsights.title' => '진행 인사이트',
			'onboarding.healthConnect.progressInsights.description' => '건강 추세에 대한 자세한 인사이트를 제공합니다',
			'onboarding.healthConnect.seamlessIntegration.title' => '원활한 통합',
			'onboarding.healthConnect.seamlessIntegration.description' => '자주 사용하는 건강 앱의 데이터를 동기화하세요',
			'onboarding.healthConnect.connected' => 'Health Connect 연결됨',
			'onboarding.healthConnect.notConnected' => 'Health Connect 연결 안 됨',
			'onboarding.healthConnect.setup' => 'Health Connect 설정',
			'onboarding.healthConnect.skipForNow' => '일단 건너뛰기',
			'onboarding.healthConnect.statusConnected' => 'Health Connect가 연결되어 있습니다.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect가 성공적으로 연결되었습니다!',
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
			'home.dailyGoal.kcal' => 'kcal',
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
			'meal.failedToSave' => '데이터 저장 실패. 다시 시도해주세요.',
			'meal.skip' => '건너뛰기',
			'meal.questionFlow.progress' => ({required Object current, required Object total}) => '질문 ${current} / ${total}',
			'meal.questionFlow.noQuestionsAvailable' => '사용 가능한 질문이 없습니다',
			'meal.questionFlow.next' => '다음',
			'meal.questionFlow.continueLabel' => '계속',
			'meal.analysis.title' => '식사 분석 중',
			'meal.analysis.stepStarted' => '시작 중…',
			'meal.analysis.stepDecomposition' => '식사 파악 중…',
			'meal.analysis.stepIngredients' => '재료를 영양 데이터와 매칭하는 중…',
			'meal.analysis.stepUncertainty' => '신뢰도 확인 중…',
			'meal.analysis.stepMealTypeQuestion' => '거의 완료되었습니다…',
			'meal.analysis.stepResult' => '결과 정리 중…',
			'meal.analysis.stepError' => '문제가 발생했습니다',
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
			'meal.analysis.mealPreviewDescription' => ({required Object text}) => '"${text}"',
			'meal.analysis.offlineTip0' => '팁: 완벽함보다 꾸준함이 중요합니다—정기적인 기록이 중요한 패턴을 드러냅니다.',
			'meal.analysis.offlineTip1' => '팁: 사진은 자연광과 위에서 내려다보는 구도가 분량 추정에 도움이 됩니다.',
			'meal.analysis.offlineTip2' => '팁: 음료, 소스, 식용유도 칼로리를 추가하니 꼭 언급하세요.',
			'meal.analysis.offlineTip3' => '팁: 빠른 분량 표시(예: 1그릇, 큰 커피)는 추정을 훨씬 정확하게 만듭니다.',
			'meal.analysis.offlineTip4' => '팁: 식사 후 기록해도 습관을 기르는 데 도움이 됩니다; 완벽할 필요는 없습니다.',
			'meal.analysis.offlineTip5' => '팁: 조리 방식(튀김 vs 구이 등)에 따라 칼로리가 많이 달라지면 조리법을 알려주세요.',
			'meal.localInference.reviewTitle' => '감지된 식재료 확인',
			'meal.localInference.reviewSubtitle' => '기기에서 분석한 내용입니다. 영양 성분을 계산하기 전에 이름이나 양을 수정해 주세요.',
			'meal.localInference.mealName' => '식사 이름',
			'meal.localInference.ingredient' => '식재료',
			'meal.localInference.grams' => '추정 중량(g)',
			'meal.localInference.removeIngredient' => '식재료 삭제',
			'meal.localInference.continueLabel' => '계속하기',
			'meal.localInference.invalidProposal' => '최소 하나 이상의 식재료를 추가하고, 양을 양수로 입력해 주세요.',
			'meal.localInference.localUnavailable' => '현재 기기 내 분석을 사용할 수 없습니다.',
			'meal.localInference.calculationDetails' => '계산 방식',
			'meal.localInference.interpretationLocal' => '기기에서 분석한 식재료',
			'meal.localInference.interpretationCloud' => '클라우드에서 분석한 식재료',
			'meal.localInference.interpretationManual' => '사용자가 확인하거나 수정한 식재료',
			'meal.localInference.nutritionRemote' => 'Calorify를 통해 USDA에서 가져온 영양 정보',
			'meal.localInference.nutritionFallback' => '일부 영양 수치는 원격으로 추정되었습니다',
			'meal.localInference.calculationServer' => 'Calorify에서 계산한 칼로리 및 매크로',
			'meal.localInference.fallbackUsed' => '기기 내 분석 실패로 클라우드 처리를 사용했습니다',
			'meal.localInference.noRawContent' => '진단 영수증에는 식사 텍스트나 사진이 포함되지 않습니다.',
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
			'editProfile.unitLbs' => 'lbs',
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
			'settings.sections.healthConnect' => 'HEALTH CONNECT',
			'settings.sections.localInference' => '기기 내 분석',
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
			'settings.localInference.title' => '기기 내 식사 분석',
			'settings.localInference.subtitle' => '영양 성분을 계산하기 전, Gemini Nano를 통해 지원되는 식사를 분석합니다',
			'settings.localInference.unavailable' => '이 기기에서는 사용할 수 없습니다',
			'settings.localInference.rolloutUnavailable' => '지원 하드웨어가 발견되었으나, 현재 앱 버전에서는 이 기능이 활성화되지 않았습니다',
			'settings.localInference.modelSetup' => '이 기능을 활성화하려면 Gemini Nano 다운로드가 완료되어야 합니다',
			'settings.localInference.useLocalTitle' => '기기 내 분석 사용',
			'settings.localInference.useLocalSubtitle' => '선택 사항이며 기본적으로 꺼져 있습니다. 복잡한 식사의 경우 결과가 덜 정확할 수 있습니다.',
			'settings.localInference.disclosureTitle' => '기기 내 분석을 활성화하기 전에',
			'settings.localInference.disclosureBody' => 'Gemini Nano는 지원되는 Android 기기에서 식재료를 식별하고 양을 추정할 수 있습니다. 확인된 식재료 제안은 USDA 영양 정보 기반 확인 및 계산을 위해 Calorify로 전송됩니다.',
			'settings.localInference.disclosureLimit1' => '복잡한 요리, 숨겨진 식재료 및 분량은 잘못 식별될 수 있습니다.',
			'settings.localInference.disclosureLimit2' => '다운로드 중이거나, 기기가 바쁘거나, 백그라운드 상태이거나, 기기 제한이 있는 경우 모델을 사용할 수 없습니다.',
			'settings.localInference.disclosureLimit3' => '기기 내 분석을 완료할 수 없는 경우, 이 베타 버전은 원래의 식사 설명을 Calorify로 자동 전송하여 클라우드 분석을 수행합니다.',
			'settings.localInference.acknowledgement' => '감지된 식재료와 양을 확인해야 함을 이해했습니다.',
			'settings.localInference.enable' => '동의 및 활성화',
			'settings.localInference.cancel' => '취소',
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
			'settings.clearAllData.confirmationTitle' => '모든 데이터를 삭제하시겠습니까?',
			'settings.clearAllData.confirmationMessage' => '이 작업은 되돌릴 수 없습니다. 기록된 모든 식사, 즐겨찾기 및 프로필 설정이 영구적으로 삭제됩니다.',
			'settings.clearAllData.cancel' => '취소',
			'settings.clearAllData.clearEverything' => '모두 삭제',
			'settings.debugOptions.title' => '디버그 옵션',
			'settings.developerModeEnabled' => '개발자 모드가 활성화되었습니다!',
			'settings.healthConnect.title' => 'Health Connect',
			'settings.healthConnect.subtitle' => '권한 보기 및 관리',
			'settings.healthConnect.unavailable.title' => 'Health Connect 사용 불가',
			'settings.healthConnect.unavailable.description' => '이 기기에서는 Health Connect를 사용할 수 없습니다. Android 9 이상에서는 Play Store에서 Health Connect를 설치하거나 Android 14 이상으로 업데이트하세요.',
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
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
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
			_ => null,
		} ?? switch (path) {
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
