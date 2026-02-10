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
	@override String appLabel({required Object env}) => '칼로리파이${env}';
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
	@override late final _TranslationsErrorsKo errors = _TranslationsErrorsKo._(_root);
	@override late final _TranslationsDebugKo debug = _TranslationsDebugKo._(_root);
	@override late final _TranslationsHealthKo health = _TranslationsHealthKo._(_root);
}

// Path: onboarding
class _TranslationsOnboardingKo implements TranslationsOnboardingEn {
	_TranslationsOnboardingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String welcome({required Object appLabel}) => '${appLabel}에 오신 것을 환영합니다';
	@override String get subtitle => 'AI가 지원하는 개인 영양 동반자';
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
	@override String get noMeals => '기록된 식사가 없습니다.';
	@override String get emptyMessage => '마지막 식사의 사진을 찍어 여기에서 기록하세요.';
	@override String get today => '오늘';
	@override String get yesterday => '어제';
}

// Path: meal
class _TranslationsMealKo implements TranslationsMealEn {
	_TranslationsMealKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get ohNo => '아니요!';
	@override String get delete => '삭제';
	@override String get editMeal => '식사 수정';
	@override String get addMeal => '식사 추가';
	@override String get saveMeal => '식사 저장';
	@override String get save => '저장';
	@override String get mealName => '식사 이름';
	@override String get mealNameHint => '예: 토스트를 곁들인 스크램블 에그';
	@override String get mealQuantity => '식사 양';
	@override String get mealQuantityHint => '예: 1 그릇, 2 조각';
	@override String get timeOfMeal => '식사 시간';
	@override String get timeOfMealHint => '식사를 한 시간을 선택하세요';
	@override String get mealType => '식사 유형';
	@override late final _TranslationsMealNutritionKo nutrition = _TranslationsMealNutritionKo._(_root);
	@override late final _TranslationsMealDeleteConfirmationKo deleteConfirmation = _TranslationsMealDeleteConfirmationKo._(_root);
	@override String get addedToLog => '식사가 기록되었습니다!';
	@override String couldNotAdd({required Object error}) => '식사를 추가할 수 없습니다: ${error}';
	@override String get savedSuccessfully => '식사가 성공적으로 추가되었습니다!';
	@override String get updatedSuccessfully => '식사가 성공적으로 업데이트되었습니다!';
	@override String errorSaving({required Object error}) => '식사 저장 중 오류가 발생했습니다: ${error}';
	@override String get removedFromFavorites => '즐겨찾기에서 제거되었습니다!';
	@override String get savedAsFavorite => '식사가 즐겨찾기로 저장되었습니다!';
	@override String couldNotUpdateFavorite({required Object error}) => '즐겨찾기를 업데이트할 수 없습니다: ${error}';
	@override String failedToProcess({required Object error}) => '처리 실패: ${error}';
	@override String failedToProcessImage({required Object error}) => '이미지 처리 실패: ${error}';
	@override String errorCompressingImage({required Object error}) => '이미지 압축 오류: ${error}';
	@override String get failedToSave => '데이터 저장 실패. 다시 시도해 주세요.';
	@override String get skip => '건너뛰기';
	@override late final _TranslationsMealVariationKo variation = _TranslationsMealVariationKo._(_root);
}

// Path: favorites
class _TranslationsFavoritesKo implements TranslationsFavoritesEn {
	_TranslationsFavoritesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즐겨찾기';
	@override String get empty => '즐겨찾는 식사가 없습니다.';
}

// Path: profile
class _TranslationsProfileKo implements TranslationsProfileEn {
	_TranslationsProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필';
	@override String get noProfileData => '프로필 데이터가 없습니다.';
	@override String get yourProfile => '당신의 프로필';
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
	@override String get notSet => '설정되지 않음';
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
	@override String get whyThisScore => '왜 이 점수인가요?';
	@override String get note => '이 점수는 인식된 재료와 영양 밀도를 기반으로 한 AI 추정치입니다. 항상 전문의와 상담하여 식이 조언을 받으세요.';
	@override String get unhealthy => '불건전';
	@override String get healthy => '건전';
	@override String get neutral => '중립';
}

// Path: editProfile
class _TranslationsEditProfileKo implements TranslationsEditProfileEn {
	_TranslationsEditProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 수정';
	@override late final _TranslationsEditProfileSectionsKo sections = _TranslationsEditProfileSectionsKo._(_root);
	@override String get gender => '성별';
	@override String get dateOfBirth => '생년월일';
	@override String get height => '키';
	@override String get weight => '체중';
	@override String get weightGoal => '체중 목표';
	@override String get activityLevel => '활동 수준';
	@override String get metric => '미터법';
	@override String get imperial => '영국식';
	@override String get unitCm => '㎝';
	@override String get unitFt => 'ft';
	@override String get unitKg => '㎏';
	@override String get unitLbs => 'lb';
	@override String get metricCm => '미터법 (cm)';
	@override String get imperialFtIn => '영국식 (ft/in)';
	@override String get metricKg => '미터법 (kg)';
	@override String get imperialLbs => '영국식 (lbs)';
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
	@override String get title => '알림으로 계획을 계속 유지하세요';
	@override String get description => '식사를 기록하고 영양 목표를 지속할 수 있도록 부드러운 리마인더를 받으세요';
	@override String get notificationsEnabled => '알림이 활성화되었습니다';
	@override String get notificationsDisabled => '알림이 비활성화되었습니다';
	@override String get enabledSubtitle => '식사 알림을 받게 됩니다';
	@override String get disabledSubtitle => '식사 알림을 받으려면 알림을 활성화하세요';
	@override String get mealReminders => '식사 알림';
	@override String get breakfast => '아침';
	@override String get lunch => '점심';
	@override String get dinner => '저녁';
	@override String get snack => '간식';
	@override String get unknown => '알 수 없음';
	@override String get change => '변경';
	@override String get enableNotifications => '알림 활성화';
	@override String get skipForNow => '지금은 건너뛰기';
	@override String get saveChanges => '변경 사항 저장';
	@override String get enabledSuccessfully => '알림을 성공적으로 활성화했습니다!';
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
	@override String get signInFailed => 'Google 로그인 실패 또는 취소되었습니다.';
}

// Path: disclaimer
class _TranslationsDisclaimerKo implements TranslationsDisclaimerEn {
	_TranslationsDisclaimerKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get pleaseNote => '참고하세요';
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
	@override String get kContinue => '계속하기';
}

// Path: feedbackRating
class _TranslationsFeedbackRatingKo implements TranslationsFeedbackRatingEn {
	_TranslationsFeedbackRatingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String enjoyingQuestion({required Object appLabel}) => '${appLabel}을(를) 즐기고 계신가요?';
	@override String get yes => '네, 즐기고 있어요';
	@override String get no => '아직 그렇지 않아요';
	@override String soloDevMessage({required Object appLabel}) => '간단한 평가 한 번이 다른 사람들이 ${appLabel}을(를) 찾는 데 도움이 되고 개발을 이어가는 데 큰 힘이 됩니다. 잠깐 시간을 내어 평가해 주시겠어요?';
	@override String get shareFeedbackViaEmail => '여러분의 피드백이 앞으로의 방향을 만듭니다 — 보내주신 모든 메시지를 읽고 있습니다. 이메일로 의견을 공유하시겠어요?';
	@override String get rateCta => 'Play 스토어에 평점 남기기';
	@override String get maybeLater => '나중에';
	@override String get sendFeedback => '피드백 보내기';
	@override String get noThanks => '아니요, 괜찮아요';
	@override String get aboutUsDescription => '작은 팀이 정성을 다해 만들었습니다. 우리는 개인정보 보호와 단순성을 중시하며, 여러분이 더 건강한 식습관을 만들어 가도록 돕는 데 집중합니다.';
	@override String aboutUsMentionBeforeLink({required Object appLabel}) => '${appLabel}의 제작자가 궁금하신가요? ';
	@override String get aboutUsLinkLabel => '개발자 소개';
	@override String get thankYouMessage => '감사합니다! 다음에 다시 여쭤볼게요.';
}

// Path: errors
class _TranslationsErrorsKo implements TranslationsErrorsEn {
	_TranslationsErrorsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get loadingProfileData => '프로필 데이터 로드 중 오류 발생';
	@override String get somethingWentWrong => '문제가 발생했습니다.';
}

// Path: debug
class _TranslationsDebugKo implements TranslationsDebugEn {
	_TranslationsDebugKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '디버그 옵션';
	@override String get searchHint => '검색 옵션...';
	@override late final _TranslationsDebugSectionsKo sections = _TranslationsDebugSectionsKo._(_root);
	@override String get showActiveNotifications => '활성 알림 표시';
	@override String get scheduleTestNotification => '테스트 알림 예약하기 (10초)';
	@override String get triggerBreakfastNotification => '아침 식사 알림 트리거';
	@override String get cancelAllNotifications => '모든 알림 취소';
	@override String get activeNotifications => '활성 알림';
	@override String get noTitle => '제목 없음';
	@override String get noBody => '내용 없음';
	@override String get fetchTodaysSteps => '오늘의 걸음 수 가져오기';
	@override String get fetchTodaysCalories => '오늘의 칼로리 가져오기';
	@override String get fetchLatestWeight => '최신 체중 가져오기';
	@override String get fetchLatestHeight => '최신 키 가져오기';
	@override String get writeTestWeight => '테스트 체중 작성 (70kg)';
	@override String get writeTestHeight => '테스트 키 작성 (175cm)';
	@override String get syncLast7Days => '최근 7일 동기화';
	@override String get sync7DaysTitle => '7일 동기화';
	@override String get checkCurrentLocale => '현재 지역 확인';
	@override String get currentLocale => '현재 지역';
	@override String localeInfo({required Object languageCode, required Object countryCode, required Object unitSystem}) => '언어: ${languageCode}\n국가: ${countryCode}\n단위 시스템: ${unitSystem}';
	@override String get latestWeight => '최신 체중';
	@override String get latestHeight => '최신 키';
	@override String get todaysCalories => '오늘의 칼로리';
	@override String totalCaloriesBurned({required Object calories}) => '소모된 총 칼로리: ${calories}';
	@override String syncSuccess({required Object count}) => '최근 7일 동안 ${count} 데이터 포인트가 성공적으로 가져와졌습니다.';
	@override String get noWeightData => '최근 30일 이내의 체중 데이터가 없습니다.';
	@override String get noHeightData => '지난 1년 이내의 키 데이터가 없습니다.';
	@override String get noCalorieData => '오늘의 칼로리 데이터가 없습니다.';
	@override String get weightWritten => '테스트 체중 (70kg)을 성공적으로 기록했습니다.';
	@override String get weightWriteFailed => '테스트 체중을 기록하는 데 실패했습니다.';
	@override String get heightWritten => '테스트 키 (175cm)를 성공적으로 기록했습니다.';
	@override String get heightWriteFailed => '테스트 키를 기록하는 데 실패했습니다.';
	@override String get noNotifications => '활성 알림이 없습니다.';
	@override String get testNotificationScheduled => '10초 후에 예약된 테스트 알림.';
	@override String get testNotificationBody => '10초 후에 예약된 테스트 알림입니다.';
	@override String get breakfastNotificationTriggered => '아침 식사 알림이 트리거되었습니다.';
	@override String get allNotificationsCancelled => '모든 알림이 취소되었습니다.';
	@override String get fetchingData => '최근 7일 동안의 데이터 가져오기...';
	@override String id({required Object id}) => 'ID: ${id}';
	@override String get showFeedbackRatingSheet => '피드백/평가 창 열기';
	@override String get clearUserPreferences => '사용자 설정 초기화';
	@override String get clearUserPreferencesConfirmationTitle => '사용자 설정을 초기화하시겠습니까?';
	@override String get clearUserPreferencesConfirmationMessage => '테마, 언어, 피드백 설정이 초기화됩니다. 식사 기록과 프로필은 영향을 받지 않습니다.';
	@override String get clearUserProfile => '프로필 초기화';
	@override String get clearUserProfileConfirmationTitle => '프로필을 초기화하시겠습니까?';
	@override String get clearUserProfileConfirmationMessage => '프로필 데이터(일일 목표, 키, 체중 등)가 초기화됩니다. 식사 기록 및 설정은 영향을 받지 않습니다.';
	@override String get clear => '초기화';
	@override String get cancel => '취소';
	@override String get checkWatchConnection => '시계 연결 확인';
	@override String get sendTestMessage => '테스트 메시지 전송';
	@override String get sendTestMessageSubtitle => '시계에 간단한 테스트 메시지를 보냅니다.';
	@override String get sendTestMealData => '테스트 식사 데이터 전송';
	@override String get sendTestMealDataSubtitle => '시계에 식사 샘플 데이터를 보냅니다.';
	@override String get sendTestCalorieGoal => '테스트 칼로리 목표 전송';
	@override String get sendTestCalorieGoalSubtitle => '시계에 칼로리 목표 샘플을 보냅니다.';
	@override String get viewReceivedMessages => '받은 메시지 보기';
	@override String get viewReceivedMessagesSubtitle => '시계로부터 수신한 메시지를 봅니다.';
	@override String get watchConnected => '시계가 연결됨 ✓';
	@override String get device => '기기';
	@override String get nearby => '주변';
	@override String get yes => '예';
	@override String get no => '아니오';
	@override String get connectedDevices => '연결된 기기';
	@override String get deviceInfoUnavailable => '(기기 정보 사용 불가)';
	@override String get unknownDevice => '알 수 없는 기기';
	@override String get watchNotConnected => '시계가 연결되지 않음 ✗';
	@override String get watchNotConnectedHint => '다음을 확인하세요:\n• 두 기기가 페어링되어 있는지\n• 시계 앱이 실행 중인지\n• 두 앱 모두 디버그/스테이징 모드인지';
	@override String get watchConnection => '시계 연결';
	@override String errorCheckingConnection({required Object error}) => '연결 확인 중 오류: ${error}';
	@override String get helloFromPhone => '휴대폰에서 보낸 인사!';
	@override String get testMessageSentSuccess => '테스트 메시지를 성공적으로 보냈습니다!';
	@override String get testMessageFailed => '테스트 메시지 전송에 실패했습니다. 시계 연결을 확인하세요.';
	@override String errorSendingMessage({required Object error}) => '메시지 전송 중 오류: ${error}';
	@override String get testMeal => '테스트 식사';
	@override String get testMealDataSentSuccess => '테스트 식사 데이터를 성공적으로 보냈습니다!';
	@override String get failedToSendMealData => '식사 데이터 전송에 실패했습니다. 시계 연결을 확인하세요.';
	@override String errorSendingMealData({required Object error}) => '식사 데이터 전송 중 오류: ${error}';
	@override String get testCalorieGoalSentSuccess => '테스트 칼로리 목표를 성공적으로 보냈습니다!';
	@override String get failedToSendCalorieGoal => '칼로리 목표 전송에 실패했습니다. 시계 연결을 확인하세요.';
	@override String errorSendingCalorieGoal({required Object error}) => '칼로리 목표 전송 중 오류: ${error}';
	@override String get testAnalyzeImage => '이미지 분석 테스트';
	@override String get testAnalyzeImageSubtitle => '미리 지정된 테스트 이미지를 업로드합니다.';
	@override String get testDetectImage => '이미지 감지 테스트';
	@override String get testDetectImageSubtitle => '이미지 URL로부터 식사를 감지합니다.';
	@override String get detectImageFromGallery => '갤러리에서 이미지 감지';
	@override String get detectImageFromGallerySubtitle => '이미지를 선택하여 버킷에 업로드하고 칼로리를 추정합니다.';
	@override String get testDetectText => '텍스트 감지 테스트';
	@override String get testDetectTextSubtitle => '텍스트 설명에서 식사를 감지합니다.';
	@override String get testMealLoggingWithVariations => '변형이 있는 식사 기록 테스트';
	@override String get testMealLoggingWithVariationsSubtitle => '변형을 포함한 전체 식사 기록 흐름을 테스트합니다.';
	@override String get mockMealWithVariations => '변형이 있는 모의 식사';
	@override String get mockMealWithVariationsSubtitle => '기록 없이 변형 및 팁 시트 UI를 미리봅니다.';
	@override String get mockMealName => '구운 닭고기와 밥, 야채';
	@override String get mockTip => 'UI 미리보기를 위한 모의 팁입니다. 식사는 기록되지 않습니다.';
	@override String get mockMealDescription => '디버그용 모의 식사';
	@override String get portionSizeQuestion => '1인분 크기는 어땠나요?';
	@override String get extraSidesQuestion => '추가 반찬이 있었나요?';
	@override String get optionSmall => '작음';
	@override String get optionMedium => '보통';
	@override String get optionLarge => '큼';
	@override String get optionNone => '없음';
	@override String get optionSideSalad => '사이드 샐러드';
	@override String get optionBreadRoll => '빵 롤';
	@override String get testingAnalyzeImage => 'analyzeImage API 테스트 중...';
	@override String get testingDetectImage => 'detectImage API 테스트 중...';
	@override String get testingDetectText => 'detectText API 테스트 중...';
	@override String get selectingImageFromGallery => '갤러리에서 이미지 선택 중...';
	@override String get noImageSelected => '선택된 이미지 없음';
	@override String get compressingImage => '이미지 압축 중...';
	@override String get uploadingImageAndDetecting => '이미지를 버킷에 업로드하고 식사를 감지하는 중...';
	@override String get testingMealLoggingFlow => '변형이 있는 식사 기록 흐름 테스트 중...';
	@override String get testUpdateProfile => '프로필 업데이트 테스트';
	@override String get testUpdateProfileSubtitle => '샘플 프로필을 백엔드로 POST합니다';
	@override String get testingProfileApi => '프로필 API를 테스트하는 중...';
	@override String get profileUpdateSuccess => '프로필 API가 정상적으로 응답했습니다';
	@override String profileUpdateFailed({required Object error}) => '프로필 API 오류: ${error}';
	@override String get noMealIdentifiedInResponse => '응답에서 식사를 식별하지 못했습니다';
	@override String get mealIdentified => '식사 식별됨';
	@override String get confidence => '신뢰도';
	@override String get tip => '팁';
	@override String get mealName => '식사 이름';
	@override String get calories => '칼로리';
	@override String get protein => '단백질';
	@override String get carbs => '탄수화물';
	@override String get fat => '지방';
	@override String get noMealInfo => '식사 정보 없음';
	@override String get na => '해당 없음';
	@override String get analyzeImageResult => '이미지 분석 결과';
	@override String get detectImageResult => '이미지 감지 결과';
	@override String get detectImageFromGalleryResult => '갤러리 이미지 감지 결과';
	@override String get detectTextResult => '텍스트 감지 결과';
	@override String errorGeneric({required Object error}) => '오류: ${error}';
	@override String get variationsCount => '변형';
	@override String get userPreferencesCleared => '사용자 환경설정이 초기화되었습니다';
	@override String get userProfileCleared => '사용자 프로필이 초기화되었습니다';
	@override String get checkForUpdate => '업데이트 확인';
	@override String get showPatchNumber => '패치 번호 표시';
	@override String get showUpdateAvailable => '업데이트 가능 표시';
	@override String get updateAvailable => '업데이트 가능';
	@override String get upToDate => '최신 상태';
	@override String get shorebirdUnavailable => '이 환경에서는 Shorebird를 사용할 수 없습니다.';
	@override String get patchNumberLabel => '패치 번호';
	@override String get noPatchInstalled => '설치된 패치 없음';
	@override String get todaysSteps => '오늘의 걸음 수';
	@override String get stepsLabel => '걸음';
	@override String weightLabel({required Object value}) => '체중: ${value} kg';
	@override String heightLabel({required Object value}) => '키: ${value} cm';
	@override String get receivedMessagesFromWatch => '시계로부터 받은 메시지';
	@override String get noMessagesReceivedYet => '아직 메시지를 받지 못했습니다.\n\n시계에서 테스트 데이터를 보내면 여기에 메시지가 표시됩니다.';
	@override String get messagesCleared => '메시지가 삭제되었습니다';
}

// Path: health
class _TranslationsHealthKo implements TranslationsHealthEn {
	_TranslationsHealthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get syncFailed => 'Health Connect와 동기화할 수 없습니다.';
	@override String get mealSynced => '식사가 Health Connect와 동기화되었습니다.';
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
	@override String get title => '당신의 성별은 무엇인가요?';
	@override String get description => '성별은 기초 대사율(BMR)을 정확하게 계산하는 데 도움이 됩니다.';
	@override String get next => '다음';
}

// Path: onboarding.height
class _TranslationsOnboardingHeightKo implements TranslationsOnboardingHeightEn {
	_TranslationsOnboardingHeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '당신의 키는 얼마인가요?';
	@override String get description => '키는 BMI와 에너지 필요를 정확히 계산하는 데 도움이 됩니다.';
	@override String get metric => '미터법';
	@override String get imperial => '영국식';
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
	@override String get targetDescription => '목표 체중을 설정하면 장기 계획을 결정하는 데 도움이 됩니다.';
	@override String get metric => '미터법';
	@override String get imperial => '영국식';
	@override String get next => '다음';
}

// Path: onboarding.age
class _TranslationsOnboardingAgeKo implements TranslationsOnboardingAgeEn {
	_TranslationsOnboardingAgeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '당신의 생일은 언제인가요?';
	@override String get description => '나이는 칼로리 요구량을 정확히 계산하는 데 도움이 됩니다.';
	@override String get next => '다음';
}

// Path: onboarding.bmiScale
class _TranslationsOnboardingBmiScaleKo implements TranslationsOnboardingBmiScaleEn {
	_TranslationsOnboardingBmiScaleKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get underweight => '저체중';
	@override String get healthy => '정상 체중';
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
	@override String get title => '당신의 목표는 무엇인가요?';
	@override String get description => '달성하고자 하는 목표를 선택하세요';
}

// Path: onboarding.activityLevel
class _TranslationsOnboardingActivityLevelKo implements TranslationsOnboardingActivityLevelEn {
	_TranslationsOnboardingActivityLevelKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '당신은 얼마나 활동적이신가요?';
	@override String get description => '이 정보는 일일 칼로리 필요량을 더 정확하게 계산하는 데 도움이 됩니다.';
}

// Path: onboarding.healthConnect
class _TranslationsOnboardingHealthConnectKo implements TranslationsOnboardingHealthConnectEn {
	_TranslationsOnboardingHealthConnectKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect와 연결하세요';
	@override String get description => '더 나은 통찰력과 자동 칼로리 추적을 위한 건강 데이터를 동기화하세요';
	@override late final _TranslationsOnboardingHealthConnectAutomaticTrackingKo automaticTracking = _TranslationsOnboardingHealthConnectAutomaticTrackingKo._(_root);
	@override late final _TranslationsOnboardingHealthConnectProgressInsightsKo progressInsights = _TranslationsOnboardingHealthConnectProgressInsightsKo._(_root);
	@override late final _TranslationsOnboardingHealthConnectSeamlessIntegrationKo seamlessIntegration = _TranslationsOnboardingHealthConnectSeamlessIntegrationKo._(_root);
	@override String get connected => 'Health Connect 연결됨';
	@override String get notConnected => 'Health Connect 미연결';
	@override String get setup => 'Health Connect 설정하기';
	@override String get skipForNow => '지금은 건너뛰기';
	@override String get statusConnected => 'Health Connect가 연결되었습니다.';
	@override String get statusSuccess => 'Health Connect가 성공적으로 연결되었습니다!';
	@override String statusPermissionDenied({required Object appLabel}) => '권한이 거부되었습니다. ${appLabel}을 사용하려면 휴대폰 설정에서 Health Connect 권한을 활성화해 주세요.';
	@override String statusError({required Object error}) => 'Health Connect를 설정하는 중 오류 발생: ${error}';
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

// Path: home.dailyGoal
class _TranslationsHomeDailyGoalKo implements TranslationsHomeDailyGoalEn {
	_TranslationsHomeDailyGoalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 목표 설정';
	@override String get titleSet => '당신의 일일 목표';
	@override String get description => '웰빙 여정을 시작할 준비가 되셨나요? 아래에 일일 칼로리 목표를 설정하여 진행을 시작하세요.';
	@override String get descriptionSet => '당신의 나침반이 설정되었습니다! 이것은 당신을 안내할 일일 칼로리 목표입니다.';
	@override String get yourGoal => '당신의 목표';
	@override String get goal => '목표';
	@override String get dailyCalories => '일일 칼로리 (kcal)';
	@override String get setGoal => '목표 설정하기';
	@override String get intake => '섭취량';
	@override String get burned => '소모된';
	@override String get weightImpact => '체중에 미치는 영향';
	@override String get estLoss => '추정 손실량';
	@override String get estGain => '추정 증가량';
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
	@override String get fiber => '섬유질';
	@override String get grams => '그램';
	@override String get chartAccessibilityLabel => '영양소 차트';
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
	@override String get noHistoryYet => '기록이 없습니다.';
	@override String get startLogging => '여기에서 7일 매크로 트렌드를 확인하기 위해 식사를 기록하기 시작하세요.';
}

// Path: home.mealLog
class _TranslationsHomeMealLogKo implements TranslationsHomeMealLogEn {
	_TranslationsHomeMealLogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '기록된 식사';
	@override String get emptyMessage => '마지막 식사의 사진을 찍어 여기에서 기록하세요.';
	@override String get noMealsToday => '오늘 기록된 식사가 없습니다.';
	@override String get seeAllMeals => '모든 식사 보기';
}

// Path: home.mealDescription
class _TranslationsHomeMealDescriptionKo implements TranslationsHomeMealDescriptionEn {
	_TranslationsHomeMealDescriptionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI로 간단하게 추가하기';
	@override String get description => '식사를 설명하고 AI가 세부사항을 처리하도록 하세요.';
	@override String get hint => '예: 아침으로 큰 그릇의 오트밀을 바나나 한 개와 유청 단백질 한 스푼을 넣어 먹었습니다 ...';
	@override String get analyzeMeal => '식사 분석하기';
}

// Path: home.favoriteMeals
class _TranslationsHomeFavoriteMealsKo implements TranslationsHomeFavoriteMealsEn {
	_TranslationsHomeFavoriteMealsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '즐겨찾는 식사';
	@override String get description => '즐겨찾는 식사를 빠르게 추가하세요.';
	@override String get noFavorites => '즐겨찾는 식사가 없습니다.';
	@override String get addFavoriteHint => '식사를 즐겨찾기로 표시하려면 별표를 클릭하세요.';
	@override String get seeAll => '모두 보기';
	@override String get add => '추가';
}

// Path: home.mealSnap
class _TranslationsHomeMealSnapKo implements TranslationsHomeMealSnapEn {
	_TranslationsHomeMealSnapKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '식사 찍고 추적하기';
	@override String get description => 'AI 분석을 위해 음식 사진을 찍으세요.';
	@override String get openCamera => '카메라 열기';
	@override String get gallery => '갤러리';
}

// Path: home.connectHealth
class _TranslationsHomeConnectHealthKo implements TranslationsHomeConnectHealthEn {
	_TranslationsHomeConnectHealthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect와 동기화';
	@override String get description => 'Nutrition 데이터를 Health Connect와 동기화하세요';
	@override String get install => '설치하기';
	@override String get connect => '연결하기';
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
	@override String get fiber => '섬유질 (g)';
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

// Path: meal.variation
class _TranslationsMealVariationKo implements TranslationsMealVariationEn {
	_TranslationsMealVariationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String question({required Object current, required Object total}) => '질문 ${current} / ${total}';
	@override String get noVariationsAvailable => '사용 가능한 변형이 없습니다';
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
	@override String get calPerDay => '칼로리/일';
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
	@override String get healthConnect => 'Health Connect';
	@override String get supportAndLegal => '지원 및 법률';
	@override String get about => '소개';
	@override String get dangerZone => '위험 지역';
	@override String get developer => '개발자';
}

// Path: settings.editProfile
class _TranslationsSettingsEditProfileKo implements TranslationsSettingsEditProfileEn {
	_TranslationsSettingsEditProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 수정';
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
	@override String get noResults => '결과가 없습니다';
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
	@override String get subtitle => '시기적절한 알림으로 계획을 계속 유지하세요';
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
	@override String subtitle({required Object appLabel}) => '${appLabel}을(A를) 개선하는 데 도움을 주세요';
	@override String emailSubject({required Object appLabel}) => '${appLabel} 앱 피드백';
	@override String get emailBodyPrefix => '아래에 귀하의 피드백을 제공해 주세요:';
	@override String get appVersion => '앱 버전';
	@override String get device => '장치';
	@override String get osVersion => 'OS 버전';
	@override String get uid => 'UID';
}

// Path: settings.clearAllData
class _TranslationsSettingsClearAllDataKo implements TranslationsSettingsClearAllDataEn {
	_TranslationsSettingsClearAllDataKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '모든 데이터 지우기';
	@override String get subtitle => '모든 정보를 영구히 삭제합니다.';
	@override String get confirmationTitle => '모든 데이터 지우기?';
	@override String get confirmationMessage => '이 작업은 취소할 수 없습니다. 로그된 모든 식사, 즐겨찾기 및 프로필 설정이 영구적으로 삭제됩니다.';
	@override String get cancel => '취소';
	@override String get clearEverything => '모두 지우기';
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
	@override String get title => '헬스 커넥트';
	@override String get subtitle => '권한 보기 및 관리';
	@override late final _TranslationsSettingsHealthConnectUnavailableKo unavailable = _TranslationsSettingsHealthConnectUnavailableKo._(_root);
	@override late final _TranslationsSettingsHealthConnectPermissionsKo permissions = _TranslationsSettingsHealthConnectPermissionsKo._(_root);
	@override String get managePermissions => '권한 관리';
	@override String get openSettings => '헬스 커넥트 설정 열기';
	@override String get requestPermissions => '권한 요청하기';
	@override String get permissionRequestCancelledOrFailed => '권한 요청이 취소되었거나 실패했습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 부여하세요.';
	@override String get permissionRequestFailed => '권한을 요청할 수 없습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 부여하세요.';
	@override String get requestingPermissions => 'Requesting...';
}

// Path: settings.about
class _TranslationsSettingsAboutKo implements TranslationsSettingsAboutEn {
	_TranslationsSettingsAboutKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '소개';
	@override String get tagline => '빠르고 무료이며 개인 정보 보호를 우선시하는 칼로리 인식';
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
	@override String get title => '아침 식사 시간! 🍳';
	@override String get body => '아침 식사를 기록하는 것을 잊지 마세요';
}

// Path: notifications.lunch
class _TranslationsNotificationsLunchKo implements TranslationsNotificationsLunchEn {
	_TranslationsNotificationsLunchKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '점심 식사 시간! 🥗';
	@override String get body => '점심을 기록할 시간입니다';
}

// Path: notifications.dinner
class _TranslationsNotificationsDinnerKo implements TranslationsNotificationsDinnerEn {
	_TranslationsNotificationsDinnerKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '저녁 식사 시간! 🍽️';
	@override String get body => '저녁을 기록하는 것을 잊지 마세요';
}

// Path: notifications.snack
class _TranslationsNotificationsSnackKo implements TranslationsNotificationsSnackEn {
	_TranslationsNotificationsSnackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '간식 시간! 🍎';
	@override String get body => '건강한 간식을 먹을 시간입니다';
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
	@override String description({required Object appLabel}) => '${appLabel}은(A는) 추정된 영양 정보를 제공합니다. 정확도는 입력 및 음식 변동성에 따라 다릅니다. 참고용으로만 사용하고, 확정적인 출처로는 사용하지 마세요. 개인 맞춤형 식이 조언은 전문가와 상담하세요.';
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
	@override String get title => '체중 추정 안내';
	@override String get description => '예상 체중 변화는 단순 칼로리 대 칼로리 모델을 바탕으로 한 이론적 추정입니다. 이는 동기 부여 가이드를 위한 것이며, 실제 체중 예측이 아닙니다.';
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
	@override String get description => '이 측정치는 귀하의 신체 에너지 필요성을 이해하고 영양 목표를 안내하는 데 도움이 됩니다.';
	@override late final _TranslationsDisclaimerHealthMetricsBmrKo bmr = _TranslationsDisclaimerHealthMetricsBmrKo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsTdeeKo tdee = _TranslationsDisclaimerHealthMetricsTdeeKo._(_root);
	@override late final _TranslationsDisclaimerHealthMetricsDailyGoalKo dailyGoal = _TranslationsDisclaimerHealthMetricsDailyGoalKo._(_root);
}

// Path: disclaimer.calorieExpenditure
class _TranslationsDisclaimerCalorieExpenditureKo implements TranslationsDisclaimerCalorieExpenditureEn {
	_TranslationsDisclaimerCalorieExpenditureKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '칼로리 소모량 추정';
	@override String get description => 'Health Connect 데이터를 사용할 수 없을 때, 기초대사량(BMR)과 활동 수준(TDEE)을 사용해 오늘 소모된 칼로리를 추정하며 경과한 하루 비율에 따라 보정합니다.';
	@override late final _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo howCalculated = _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo._(_root);
	@override late final _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo professionalGuidance = _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo._(_root);
}

// Path: debug.sections
class _TranslationsDebugSectionsKo implements TranslationsDebugSectionsEn {
	_TranslationsDebugSectionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get notifications => '알림';
	@override String get healthConnect => 'Health Connect';
	@override String get wearOs => 'Wear OS';
	@override String get foodApiTests => 'Food API 테스트';
	@override String get profileApiTests => '프로필 API 테스트';
	@override String get feedback => '피드백';
	@override String get dataReset => '데이터 초기화';
	@override String get appInfo => '앱 정보';
	@override String get shorebird => 'Shorebird';
}

// Path: onboarding.features.foodRecognition
class _TranslationsOnboardingFeaturesFoodRecognitionKo implements TranslationsOnboardingFeaturesFoodRecognitionEn {
	_TranslationsOnboardingFeaturesFoodRecognitionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '스마트 음식 인식';
	@override String get description => '사진을 찍고 AI에게 식사를 인식하게 하세요';
}

// Path: onboarding.features.aiAnalysis
class _TranslationsOnboardingFeaturesAiAnalysisKo implements TranslationsOnboardingFeaturesAiAnalysisEn {
	_TranslationsOnboardingFeaturesAiAnalysisKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'AI 분석';
	@override String get description => '설명을 통해 즉각적인 영양 정보를 받아보세요';
}

// Path: onboarding.features.healthIntegration
class _TranslationsOnboardingFeaturesHealthIntegrationKo implements TranslationsOnboardingFeaturesHealthIntegrationEn {
	_TranslationsOnboardingFeaturesHealthIntegrationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '건강 통합';
	@override String get description => 'Health Connect와 연결하여 더 나은 통찰력을 제공합니다';
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
	@override String get underweight => '우리는 영양이 풍부한 식사를 통해 균형 잡힌 체중에 도달하기 위한 건강한 계획을 세우도록 도와드릴 수 있습니다.';
	@override String get healthy => '잘하고 계세요! 당신은 건강한 범위에 있습니다. 우리는 당신의 활력과 에너지 수준을 유지하도록 도와드릴 것입니다.';
	@override String overweight({required Object appLabel}) => '${appLabel}은(A는) AI 기반의 추적을 통해 목표에 쉽게 도달할 수 있도록 여정을 단순화합니다.';
	@override String get obese => '우리는 개별적인 지침과 지속 가능한 전략으로 여러분의 건강 목표를 지원합니다.';
}

// Path: onboarding.healthConnect.automaticTracking
class _TranslationsOnboardingHealthConnectAutomaticTrackingKo implements TranslationsOnboardingHealthConnectAutomaticTrackingEn {
	_TranslationsOnboardingHealthConnectAutomaticTrackingKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '자동 칼로리 추적';
	@override String get description => '피트니스 앱에서 소모된 칼로리를 추적하세요';
}

// Path: onboarding.healthConnect.progressInsights
class _TranslationsOnboardingHealthConnectProgressInsightsKo implements TranslationsOnboardingHealthConnectProgressInsightsEn {
	_TranslationsOnboardingHealthConnectProgressInsightsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '진행 상황 통찰력';
	@override String get description => '건강 추세에 대한 자세한 통찰력을 얻으세요';
}

// Path: onboarding.healthConnect.seamlessIntegration
class _TranslationsOnboardingHealthConnectSeamlessIntegrationKo implements TranslationsOnboardingHealthConnectSeamlessIntegrationEn {
	_TranslationsOnboardingHealthConnectSeamlessIntegrationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '원활한 통합';
	@override String get description => '좋아하는 건강 앱에서 데이터를 동기화하세요';
}

// Path: onboarding.reinforcement.trackingSuccess
class _TranslationsOnboardingReinforcementTrackingSuccessKo implements TranslationsOnboardingReinforcementTrackingSuccessEn {
	_TranslationsOnboardingReinforcementTrackingSuccessKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '당신은 혼자가 아닙니다';
	@override String get genericMessage => '연구에 따르면, 꾸준한 추적이 장기적인 성공의 #1 예측 요인입니다.';
	@override String personalizedMessage({required Object goal, required Object age, required Object gender}) => '${goal}를 원하시는 ${age}세 ${gender}님께, 꾸준한 추적이 성공의 #1 예측 요인입니다.';
	@override String closingMessage({required Object appLabel}) => '${appLabel}을(A를) 사용하면 수작업보다 10배 쉬워집니다.';
	@override String get getStartedTitle => '시작할 준비가 되셨나요?';
	@override String get tipPhoto => '즉각적인 분석을 위해 식사 사진을 촬영하세요';
	@override String get tipConsistency => '의미 있는 변화를 보려면 꾸준히 기록하세요';
	@override String get tipProgress => '동기 부여를 위해 매일 진행 상황을 기록하세요';
	@override String get button => '출발하자';
	@override String get defaultGender => '개인';
	@override String get defaultGoal => '더 건강한 당신';
}

// Path: onboarding.reinforcement.healthProfile
class _TranslationsOnboardingReinforcementHealthProfileKo implements TranslationsOnboardingReinforcementHealthProfileEn {
	_TranslationsOnboardingReinforcementHealthProfileKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '당신의 건강 프로필';
	@override String bmiDescription({required Object bmi}) => '당신의 지표에 기반하여, BMI는 ${bmi}입니다.';
	@override String get finalizeDescription => '사용자 경험을 맞춤화하기 위해 프로필을 마무리합시다.';
	@override String get goalGain => '증가 목표';
	@override String get goalLose => '감소 목표';
	@override String goalReach({required Object direction, required Object diff, required Object unit}) => '목표에 도달하기 위해, 당신은 ${direction} ${diff} ${unit} 해야 합니다.';
	@override String get goalReached => '당신은 목표 체중에 도달했습니다! 우리는 이를 유지할 수 있도록 도와드릴 것입니다.';
	@override String get button => '출발하자';
}

// Path: onboarding.reinforcement.goalLifestyle
class _TranslationsOnboardingReinforcementGoalLifestyleKo implements TranslationsOnboardingReinforcementGoalLifestyleEn {
	_TranslationsOnboardingReinforcementGoalLifestyleKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '훌륭한 출발입니다!';
	@override String description({required Object goalText, required Object activityText, required Object appLabel}) => '당신은 ${goalText}을 향한 첫 단계를 내디뎠습니다. 당신이 ${activityText}이므로, ${appLabel}은 당신의 라이프스타일에 맞게 목표를 조정할 것입니다.';
	@override String get personalizedTargets => '개인화된 칼로리 목표';
	@override String get aiMealDetection => 'AI 기반 식사 인식';
	@override String get macroBreakdowns => '세부 매크로 영양소 분석';
	@override String get button => '출발하자';
	@override String get defaultGoal => '당신의 목표';
	@override String get defaultActivity => '활동적';
}

// Path: editProfile.weightGoals.loseWeight
class _TranslationsEditProfileWeightGoalsLoseWeightKo implements TranslationsEditProfileWeightGoalsLoseWeightEn {
	_TranslationsEditProfileWeightGoalsLoseWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 감량';
	@override String get description => '체중을 줄이기 위해 칼로리 적자를 만듭니다.';
}

// Path: editProfile.weightGoals.maintainWeight
class _TranslationsEditProfileWeightGoalsMaintainWeightKo implements TranslationsEditProfileWeightGoalsMaintainWeightEn {
	_TranslationsEditProfileWeightGoalsMaintainWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 유지';
	@override String get description => '현재 체중을 유지합니다.';
}

// Path: editProfile.weightGoals.gainWeight
class _TranslationsEditProfileWeightGoalsGainWeightKo implements TranslationsEditProfileWeightGoalsGainWeightEn {
	_TranslationsEditProfileWeightGoalsGainWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '체중 증가';
	@override String get description => '체중을 늘리기 위해 칼로리 과잉을 만듭니다.';
}

// Path: editProfile.activityLevels.sedentary
class _TranslationsEditProfileActivityLevelsSedentaryKo implements TranslationsEditProfileActivityLevelsSedentaryEn {
	_TranslationsEditProfileActivityLevelsSedentaryKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '좌식';
	@override String get description => '거의 운동이 없습니다.';
}

// Path: editProfile.activityLevels.lightlyActive
class _TranslationsEditProfileActivityLevelsLightlyActiveKo implements TranslationsEditProfileActivityLevelsLightlyActiveEn {
	_TranslationsEditProfileActivityLevelsLightlyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '약간 활동적';
	@override String get description => '주 1-3일 경량 운동.';
}

// Path: editProfile.activityLevels.moderatelyActive
class _TranslationsEditProfileActivityLevelsModeratelyActiveKo implements TranslationsEditProfileActivityLevelsModeratelyActiveEn {
	_TranslationsEditProfileActivityLevelsModeratelyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '중간 정도 활동적';
	@override String get description => '주 3-5일 중간 운동.';
}

// Path: editProfile.activityLevels.veryActive
class _TranslationsEditProfileActivityLevelsVeryActiveKo implements TranslationsEditProfileActivityLevelsVeryActiveEn {
	_TranslationsEditProfileActivityLevelsVeryActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '활동적';
	@override String get description => '주 6-7일 강렬한 운동.';
}

// Path: editProfile.activityLevels.extremelyActive
class _TranslationsEditProfileActivityLevelsExtremelyActiveKo implements TranslationsEditProfileActivityLevelsExtremelyActiveEn {
	_TranslationsEditProfileActivityLevelsExtremelyActiveKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '매우 활동적';
	@override String get description => '매우 힘든 운동, 육체 노동.';
}

// Path: settings.healthConnect.unavailable
class _TranslationsSettingsHealthConnectUnavailableKo implements TranslationsSettingsHealthConnectUnavailableEn {
	_TranslationsSettingsHealthConnectUnavailableKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Health Connect 사용 불가능';
	@override String get description => '이 장치에서는 Health Connect를 사용할 수 없습니다. Play 스토어(Android 9+)에서 Health Connect를 설치하거나 Android 14+로 업데이트해 주세요.';
}

// Path: settings.healthConnect.permissions
class _TranslationsSettingsHealthConnectPermissionsKo implements TranslationsSettingsHealthConnectPermissionsEn {
	_TranslationsSettingsHealthConnectPermissionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '권한';
	@override String get description => '헬스 커넥트 통합을 제공하기 위해 요청되는 권한은 다음과 같습니다:';
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
	@override String content({required Object appLabel}) => '${appLabel}는 단순한 불만에서 탄생했습니다: 대부분의 칼로리 추적 앱은 지나치게 복잡하거나, 지속적인 수동 입력을 요구하거나, 높은 구독 비용을 부과하거나, 개인 정보를 침해합니다.\n\n인디 개발자로서, 저는 더 간단하고 공정한 것을 만들고 싶었습니다 — 노력을 줄이고, 빠르고 무료로 사용할 수 있으며, 귀하의 건강 데이터를 존중하는 AI를 사용하는 앱입니다.\n\n${appLabel}는 제가 존재하였으면 하는 앱입니다: 계정 없이, 추적 없이, 광고 없이 — 단순한 실제 통찰과 귀하의 건강 목표만을 제공합니다.';
}

// Path: settings.about.privacy
class _TranslationsSettingsAboutPrivacyKo implements TranslationsSettingsAboutPrivacyEn {
	_TranslationsSettingsAboutPrivacyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '귀하의 개인 정보가 중요합니다';
	@override String get description => '개인 정보는 후순위가 아니라 — 디자인 원칙입니다. 실제로 이 의미는 다음과 같습니다:';
	@override String get noAccounts => '계정 없음\n앱을 즉시 사용하세요. 가입, 신원 확인 필요 없음.';
	@override String noTracking({required Object appLabel}) => '행동 추적 없음\n${appLabel}는 귀하의 활동을 모니터링하거나, 사용 프로필을 만들거나, 앱이나 웹사이트에서 귀하를 추적하지 않습니다.';
	@override String noAds({required Object appLabel}) => '광고 없음, 디자인으로도\n${appLabel}는 광고 없이, 데이터 기반 수익 모델 없이 작동하도록 설계되었습니다.';
	@override String get noDataSelling => '데이터 판매 없음\n귀하의 건강 데이터는 절대 판매되거나 제3자와 공유되지 않습니다.';
	@override String get localStorage => '로컬 우선 저장소\n귀하의 데이터는 귀하의 장치에만 저장됩니다.';
	@override String get privacyPolicy => '개인정보 처리방침';
}

// Path: settings.about.developer
class _TranslationsSettingsAboutDeveloperKo implements TranslationsSettingsAboutDeveloperEn {
	_TranslationsSettingsAboutDeveloperKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '인디 개발자가 만든 앱';
	@override String description({required Object appLabel}) => '${appLabel}는 개인의 편안함과 개인 정보 보호를 존중하는 건강 소프트웨어를 만드는 데 집중하는 단 한 명의 인디 개발자가 운영하고 있습니다.\n\n피드백은 직접 읽으며 앱의 방향성을 형성하는 데 도움을 줍니다.';
	@override String get website => '웹사이트';
	@override String get email => '이메일';
}

// Path: settings.about.feedback
class _TranslationsSettingsAboutFeedbackKo implements TranslationsSettingsAboutFeedbackEn {
	_TranslationsSettingsAboutFeedbackKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String title({required Object appLabel}) => '${appLabel}를 좋아하시나요?';
	@override String description({required Object appLabel}) => '귀하의 피드백은 ${appLabel}를 모두에게 더 좋게 만드는데 도움이 됩니다.';
	@override String get rateApp => '플레이 스토어에서 평가하기';
	@override String get sendFeedback => '피드백 보내기';
}

// Path: disclaimer.snap.portionSize
class _TranslationsDisclaimerSnapPortionSizeKo implements TranslationsDisclaimerSnapPortionSizeEn {
	_TranslationsDisclaimerSnapPortionSizeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '부분 크기';
	@override String get description => '추정 정확도는 부분 크기를 올바르게 평가하는 것에 크게 의존합니다.';
}

// Path: disclaimer.snap.preparationMethods
class _TranslationsDisclaimerSnapPreparationMethodsKo implements TranslationsDisclaimerSnapPreparationMethodsEn {
	_TranslationsDisclaimerSnapPreparationMethodsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '조리 방법';
	@override String description({required Object appLabel}) => '조리 방법은 음식의 영양 성분에 상당한 영향을 미칠 수 있습니다. ${appLabel}의 추정치는 이러한 변동성을 항상 고려하지 않을 수 있습니다.';
}

// Path: disclaimer.snap.ingredients
class _TranslationsDisclaimerSnapIngredientsKo implements TranslationsDisclaimerSnapIngredientsEn {
	_TranslationsDisclaimerSnapIngredientsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '재료';
	@override String get description => '복합 요리에서 많은 숨겨진 재료가 있을 경우, 덜 정확한 추정치가 나올 수 있습니다.';
}

// Path: disclaimer.snap.databaseLimitations
class _TranslationsDisclaimerSnapDatabaseLimitationsKo implements TranslationsDisclaimerSnapDatabaseLimitationsEn {
	_TranslationsDisclaimerSnapDatabaseLimitationsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '데이터베이스 한계';
	@override String description({required Object appLabel}) => '${appLabel}의 음식 데이터베이스는 방대하지만 모든 음식 항목이나 변형을 포함하지는 않을 수 있습니다.';
}

// Path: disclaimer.weightEstimate.calorieAccuracy
class _TranslationsDisclaimerWeightEstimateCalorieAccuracyKo implements TranslationsDisclaimerWeightEstimateCalorieAccuracyEn {
	_TranslationsDisclaimerWeightEstimateCalorieAccuracyKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '칼로리 정확도';
	@override String get description => '이 추정치는 추적된 칼로리 섭취 및 소비에 따라 정확성이 달라집니다. 부정확한 기록은 부정확한 추정으로 이어집니다.';
}

// Path: disclaimer.weightEstimate.biologicalFactors
class _TranslationsDisclaimerWeightEstimateBiologicalFactorsKo implements TranslationsDisclaimerWeightEstimateBiologicalFactorsEn {
	_TranslationsDisclaimerWeightEstimateBiologicalFactorsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '생물학적 요인';
	@override String description({required Object appLabel}) => '실제 체중 감소/증가는 신진대사, 호르몬, 수면, 스트레스, 수분 섭취 및 ${appLabel}이 측정할 수 없는 기타 개인 요인에 의해 영향을 받습니다.';
}

// Path: disclaimer.weightEstimate.waterWeight
class _TranslationsDisclaimerWeightEstimateWaterWeightKo implements TranslationsDisclaimerWeightEstimateWaterWeightEn {
	_TranslationsDisclaimerWeightEstimateWaterWeightKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '수분 체중 및 변동';
	@override String get description => '일일 체중은 수분 저류, 소화 및 타이밍으로 인해 상당히 변동할 수 있습니다. 이 추정치는 이러한 일일 변화를 고려하지 않습니다.';
}

// Path: disclaimer.weightEstimate.professionalGuidance
class _TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo implements TranslationsDisclaimerWeightEstimateProfessionalGuidanceEn {
	_TranslationsDisclaimerWeightEstimateProfessionalGuidanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가의 조언';
	@override String get description => '이 추정치를 의료 결정에 사용하지 마세요. 항상 의료 전문가나 등록된 영양사와 상담하여 개인화된 체중 관리 조언을 받으세요.';
}

// Path: disclaimer.healthMetrics.bmr
class _TranslationsDisclaimerHealthMetricsBmrKo implements TranslationsDisclaimerHealthMetricsBmrEn {
	_TranslationsDisclaimerHealthMetricsBmrKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'BMR';
	@override String get description => '기초 대사율(BMR)은 호흡 및 순환과 같은 기본 기능을 유지하기 위해 신체가 휴식 중에 소모하는 칼로리의 수입니다. BMR은 귀하의 나이, 성별, 키 및 체중에 따라 달라집니다. BMR이 높을수록 신체가 자연적으로 더 많은 칼로리를 태우며, 이는 일반적으로 근육량이 많거나 나이가 어리거나 남성인 경우에 해당합니다. 반면 BMR이 낮은 경우는 일반적으로 근육량이 적거나 나이가 많거나 여성인 경우를 나타냅니다.';
}

// Path: disclaimer.healthMetrics.tdee
class _TranslationsDisclaimerHealthMetricsTdeeKo implements TranslationsDisclaimerHealthMetricsTdeeEn {
	_TranslationsDisclaimerHealthMetricsTdeeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'TDEE';
	@override String get description => '총 일일 에너지 소비(TDEE)는 BMR에 신체 활동 및 일상적인 움직임에서 소모된 칼로리를 더한 하루 동안 소모하는 총 칼로리입니다. TDEE는 귀하의 BMR과 활동 수준에 따라 달라집니다. TDEE가 높을수록 일반적으로 더 많은 칼로리를 소모하며 이는 더 활동적이거나 BMR이 높은 경우가 많습니다. TDEE가 낮은 경우는 일상적인 활동이 적거나 BMR이 낮다는 것을 나타냅니다.';
}

// Path: disclaimer.healthMetrics.dailyGoal
class _TranslationsDisclaimerHealthMetricsDailyGoalKo implements TranslationsDisclaimerHealthMetricsDailyGoalEn {
	_TranslationsDisclaimerHealthMetricsDailyGoalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '일일 목표';
	@override String get description => '일일 목표는 귀하의 TDEE와 체중 목표에 기반한 추천 일일 칼로리 섭취량입니다. 체중 감소를 위해서는 TDEE보다 적은 칼로리를 섭취합니다. 체중 유지를 위해서는 TDEE와 일치시킵니다. 체중 증가를 위해서는 TDEE보다 더 많은 칼로리를 섭취합니다. 이는 건강한 속도로 원하는 체중 변화를 달성하는 데 도움이 됩니다.';
}

// Path: disclaimer.calorieExpenditure.howCalculated
class _TranslationsDisclaimerCalorieExpenditureHowCalculatedKo implements TranslationsDisclaimerCalorieExpenditureHowCalculatedEn {
	_TranslationsDisclaimerCalorieExpenditureHowCalculatedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '추정치 계산 방법';
	@override String get description => '프로필을 바탕으로 TDEE를 계산하고, 경과한 하루의 비율 (시간 + 분) / 24 을 곱해 현재까지 소모된 칼로리를 추정합니다.';
}

// Path: disclaimer.calorieExpenditure.professionalGuidance
class _TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo implements TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceEn {
	_TranslationsDisclaimerCalorieExpenditureProfessionalGuidanceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전문가 안내';
	@override String get description => '이 추정값을 의료적 결정의 근거로 사용하지 마세요. 개인화된 체중 관리 조언은 반드시 의료 전문가 또는 등록된 영양사와 상담하십시오.';
}

// Path: settings.healthConnect.permissions.caloriesBurned
class _TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo implements TranslationsSettingsHealthConnectPermissionsCaloriesBurnedEn {
	_TranslationsSettingsHealthConnectPermissionsCaloriesBurnedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '소모된 총 칼로리 읽기';
	@override String get description => '앱이 헬스 커넥트에서 소모된 총 칼로리를 읽을 수 있도록 허용합니다.';
	@override String get usage => '이 권한은 앱에서 사용자의 일일 칼로리 소모량을 표시하는 데 사용되며, 하루 동안의 총 에너지 소비를 이해하는 데 도움이 됩니다.';
}

// Path: settings.healthConnect.permissions.nutritionRead
class _TranslationsSettingsHealthConnectPermissionsNutritionReadKo implements TranslationsSettingsHealthConnectPermissionsNutritionReadEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionReadKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영양 데이터 읽기';
	@override String get description => '앱이 헬스 커넥트에서 영양 데이터를 읽을 수 있도록 허용합니다.';
	@override String get usage => '이 권한을 통해 앱은 헬스 커넥트에 연결된 다른 앱에서 기록된 영양 정보를 읽을 수 있으며, 영양에 대한 포괄적인 정보를 제공합니다.';
}

// Path: settings.healthConnect.permissions.nutritionWrite
class _TranslationsSettingsHealthConnectPermissionsNutritionWriteKo implements TranslationsSettingsHealthConnectPermissionsNutritionWriteEn {
	_TranslationsSettingsHealthConnectPermissionsNutritionWriteKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '영양 데이터 쓰기';
	@override String get description => '앱이 헬스 커넥트에 영양 데이터를 쓸 수 있도록 허용합니다.';
	@override String get usage => '이 권한을 통해 앱은 사용자가 기록한 식사를 헬스 커넥트에 동기화하여, 사용자가 사용하는 다른 건강 및 피트니스 앱에서 영양 데이터를 사용할 수 있도록 합니다.';
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
			'appLabel' => ({required Object env}) => '칼로리파이${env}',
			'onboarding.welcome' => ({required Object appLabel}) => '${appLabel}에 오신 것을 환영합니다',
			'onboarding.subtitle' => 'AI가 지원하는 개인 영양 동반자',
			'onboarding.getStarted' => '시작하기',
			'onboarding.features.foodRecognition.title' => '스마트 음식 인식',
			'onboarding.features.foodRecognition.description' => '사진을 찍고 AI에게 식사를 인식하게 하세요',
			'onboarding.features.aiAnalysis.title' => 'AI 분석',
			'onboarding.features.aiAnalysis.description' => '설명을 통해 즉각적인 영양 정보를 받아보세요',
			'onboarding.features.healthIntegration.title' => '건강 통합',
			'onboarding.features.healthIntegration.description' => 'Health Connect와 연결하여 더 나은 통찰력을 제공합니다',
			'onboarding.gender.title' => '당신의 성별은 무엇인가요?',
			'onboarding.gender.description' => '성별은 기초 대사율(BMR)을 정확하게 계산하는 데 도움이 됩니다.',
			'onboarding.gender.next' => '다음',
			'onboarding.height.title' => '당신의 키는 얼마인가요?',
			'onboarding.height.description' => '키는 BMI와 에너지 필요를 정확히 계산하는 데 도움이 됩니다.',
			'onboarding.height.metric' => '미터법',
			'onboarding.height.imperial' => '영국식',
			'onboarding.height.next' => '다음',
			'onboarding.weight.currentTitle' => '현재 체중은 얼마인가요?',
			'onboarding.weight.currentDescription' => '현재 체중은 일일 목표를 개인화하는 데 중요합니다.',
			'onboarding.weight.targetTitle' => '목표 체중은 얼마인가요?',
			'onboarding.weight.targetDescription' => '목표 체중을 설정하면 장기 계획을 결정하는 데 도움이 됩니다.',
			'onboarding.weight.metric' => '미터법',
			'onboarding.weight.imperial' => '영국식',
			'onboarding.weight.next' => '다음',
			'onboarding.age.title' => '당신의 생일은 언제인가요?',
			'onboarding.age.description' => '나이는 칼로리 요구량을 정확히 계산하는 데 도움이 됩니다.',
			'onboarding.age.next' => '다음',
			'onboarding.bmiScale.underweight' => '저체중',
			'onboarding.bmiScale.healthy' => '정상 체중',
			'onboarding.bmiScale.overweight' => '과체중',
			'onboarding.bmiScale.obese' => '비만',
			'onboarding.bmiScale.categories.underweight' => '저체중',
			'onboarding.bmiScale.categories.healthyWeight' => '정상 체중',
			'onboarding.bmiScale.categories.overweight' => '과체중',
			'onboarding.bmiScale.categories.obese' => '비만',
			'onboarding.bmiScale.messages.underweight' => '우리는 영양이 풍부한 식사를 통해 균형 잡힌 체중에 도달하기 위한 건강한 계획을 세우도록 도와드릴 수 있습니다.',
			'onboarding.bmiScale.messages.healthy' => '잘하고 계세요! 당신은 건강한 범위에 있습니다. 우리는 당신의 활력과 에너지 수준을 유지하도록 도와드릴 것입니다.',
			'onboarding.bmiScale.messages.overweight' => ({required Object appLabel}) => '${appLabel}은(A는) AI 기반의 추적을 통해 목표에 쉽게 도달할 수 있도록 여정을 단순화합니다.',
			'onboarding.bmiScale.messages.obese' => '우리는 개별적인 지침과 지속 가능한 전략으로 여러분의 건강 목표를 지원합니다.',
			'onboarding.weightGoal.title' => '당신의 목표는 무엇인가요?',
			'onboarding.weightGoal.description' => '달성하고자 하는 목표를 선택하세요',
			'onboarding.activityLevel.title' => '당신은 얼마나 활동적이신가요?',
			'onboarding.activityLevel.description' => '이 정보는 일일 칼로리 필요량을 더 정확하게 계산하는 데 도움이 됩니다.',
			'onboarding.healthConnect.title' => 'Health Connect와 연결하세요',
			'onboarding.healthConnect.description' => '더 나은 통찰력과 자동 칼로리 추적을 위한 건강 데이터를 동기화하세요',
			'onboarding.healthConnect.automaticTracking.title' => '자동 칼로리 추적',
			'onboarding.healthConnect.automaticTracking.description' => '피트니스 앱에서 소모된 칼로리를 추적하세요',
			'onboarding.healthConnect.progressInsights.title' => '진행 상황 통찰력',
			'onboarding.healthConnect.progressInsights.description' => '건강 추세에 대한 자세한 통찰력을 얻으세요',
			'onboarding.healthConnect.seamlessIntegration.title' => '원활한 통합',
			'onboarding.healthConnect.seamlessIntegration.description' => '좋아하는 건강 앱에서 데이터를 동기화하세요',
			'onboarding.healthConnect.connected' => 'Health Connect 연결됨',
			'onboarding.healthConnect.notConnected' => 'Health Connect 미연결',
			'onboarding.healthConnect.setup' => 'Health Connect 설정하기',
			'onboarding.healthConnect.skipForNow' => '지금은 건너뛰기',
			'onboarding.healthConnect.statusConnected' => 'Health Connect가 연결되었습니다.',
			'onboarding.healthConnect.statusSuccess' => 'Health Connect가 성공적으로 연결되었습니다!',
			'onboarding.healthConnect.statusPermissionDenied' => ({required Object appLabel}) => '권한이 거부되었습니다. ${appLabel}을 사용하려면 휴대폰 설정에서 Health Connect 권한을 활성화해 주세요.',
			'onboarding.healthConnect.statusError' => ({required Object error}) => 'Health Connect를 설정하는 중 오류 발생: ${error}',
			'onboarding.reinforcement.trackingSuccess.title' => '당신은 혼자가 아닙니다',
			'onboarding.reinforcement.trackingSuccess.genericMessage' => '연구에 따르면, 꾸준한 추적이 장기적인 성공의 #1 예측 요인입니다.',
			'onboarding.reinforcement.trackingSuccess.personalizedMessage' => ({required Object goal, required Object age, required Object gender}) => '${goal}를 원하시는 ${age}세 ${gender}님께, 꾸준한 추적이 성공의 #1 예측 요인입니다.',
			'onboarding.reinforcement.trackingSuccess.closingMessage' => ({required Object appLabel}) => '${appLabel}을(A를) 사용하면 수작업보다 10배 쉬워집니다.',
			'onboarding.reinforcement.trackingSuccess.getStartedTitle' => '시작할 준비가 되셨나요?',
			'onboarding.reinforcement.trackingSuccess.tipPhoto' => '즉각적인 분석을 위해 식사 사진을 촬영하세요',
			'onboarding.reinforcement.trackingSuccess.tipConsistency' => '의미 있는 변화를 보려면 꾸준히 기록하세요',
			'onboarding.reinforcement.trackingSuccess.tipProgress' => '동기 부여를 위해 매일 진행 상황을 기록하세요',
			'onboarding.reinforcement.trackingSuccess.button' => '출발하자',
			'onboarding.reinforcement.trackingSuccess.defaultGender' => '개인',
			'onboarding.reinforcement.trackingSuccess.defaultGoal' => '더 건강한 당신',
			'onboarding.reinforcement.healthProfile.title' => '당신의 건강 프로필',
			'onboarding.reinforcement.healthProfile.bmiDescription' => ({required Object bmi}) => '당신의 지표에 기반하여, BMI는 ${bmi}입니다.',
			'onboarding.reinforcement.healthProfile.finalizeDescription' => '사용자 경험을 맞춤화하기 위해 프로필을 마무리합시다.',
			'onboarding.reinforcement.healthProfile.goalGain' => '증가 목표',
			'onboarding.reinforcement.healthProfile.goalLose' => '감소 목표',
			'onboarding.reinforcement.healthProfile.goalReach' => ({required Object direction, required Object diff, required Object unit}) => '목표에 도달하기 위해, 당신은 ${direction} ${diff} ${unit} 해야 합니다.',
			'onboarding.reinforcement.healthProfile.goalReached' => '당신은 목표 체중에 도달했습니다! 우리는 이를 유지할 수 있도록 도와드릴 것입니다.',
			'onboarding.reinforcement.healthProfile.button' => '출발하자',
			'onboarding.reinforcement.goalLifestyle.title' => '훌륭한 출발입니다!',
			'onboarding.reinforcement.goalLifestyle.description' => ({required Object goalText, required Object activityText, required Object appLabel}) => '당신은 ${goalText}을 향한 첫 단계를 내디뎠습니다. 당신이 ${activityText}이므로, ${appLabel}은 당신의 라이프스타일에 맞게 목표를 조정할 것입니다.',
			'onboarding.reinforcement.goalLifestyle.personalizedTargets' => '개인화된 칼로리 목표',
			'onboarding.reinforcement.goalLifestyle.aiMealDetection' => 'AI 기반 식사 인식',
			'onboarding.reinforcement.goalLifestyle.macroBreakdowns' => '세부 매크로 영양소 분석',
			'onboarding.reinforcement.goalLifestyle.button' => '출발하자',
			'onboarding.reinforcement.goalLifestyle.defaultGoal' => '당신의 목표',
			'onboarding.reinforcement.goalLifestyle.defaultActivity' => '활동적',
			'tabs.dashboard' => '대시보드',
			'tabs.history' => '기록',
			'home.dailyGoal.title' => '일일 목표 설정',
			'home.dailyGoal.titleSet' => '당신의 일일 목표',
			'home.dailyGoal.description' => '웰빙 여정을 시작할 준비가 되셨나요? 아래에 일일 칼로리 목표를 설정하여 진행을 시작하세요.',
			'home.dailyGoal.descriptionSet' => '당신의 나침반이 설정되었습니다! 이것은 당신을 안내할 일일 칼로리 목표입니다.',
			'home.dailyGoal.yourGoal' => '당신의 목표',
			'home.dailyGoal.goal' => '목표',
			'home.dailyGoal.dailyCalories' => '일일 칼로리 (kcal)',
			'home.dailyGoal.setGoal' => '목표 설정하기',
			'home.dailyGoal.intake' => '섭취량',
			'home.dailyGoal.burned' => '소모된',
			'home.dailyGoal.weightImpact' => '체중에 미치는 영향',
			'home.dailyGoal.estLoss' => '추정 손실량',
			'home.dailyGoal.estGain' => '추정 증가량',
			'home.dailyGoal.kcal' => 'kcal',
			'home.dailySummary.title' => '일일 요약',
			'home.dailySummary.calories' => '칼로리',
			'home.dailySummary.carbs' => '탄수화물',
			'home.dailySummary.protein' => '단백질',
			'home.dailySummary.fat' => '지방',
			'home.dailySummary.fiber' => '섬유질',
			'home.dailySummary.grams' => '그램',
			'home.dailySummary.chartAccessibilityLabel' => '영양소 차트',
			'home.intakeProgress.title' => '오늘의 매크로 분포',
			'home.intakeProgress.target' => '목표',
			'home.intakeProgress.current' => '현재',
			'home.intakeHistory.title' => '7일 매크로 기록',
			'home.intakeHistory.noHistoryYet' => '기록이 없습니다.',
			'home.intakeHistory.startLogging' => '여기에서 7일 매크로 트렌드를 확인하기 위해 식사를 기록하기 시작하세요.',
			'home.mealLog.title' => '기록된 식사',
			'home.mealLog.emptyMessage' => '마지막 식사의 사진을 찍어 여기에서 기록하세요.',
			'home.mealLog.noMealsToday' => '오늘 기록된 식사가 없습니다.',
			'home.mealLog.seeAllMeals' => '모든 식사 보기',
			'home.mealDescription.title' => 'AI로 간단하게 추가하기',
			'home.mealDescription.description' => '식사를 설명하고 AI가 세부사항을 처리하도록 하세요.',
			'home.mealDescription.hint' => '예: 아침으로 큰 그릇의 오트밀을 바나나 한 개와 유청 단백질 한 스푼을 넣어 먹었습니다 ...',
			'home.mealDescription.analyzeMeal' => '식사 분석하기',
			'home.favoriteMeals.title' => '즐겨찾는 식사',
			'home.favoriteMeals.description' => '즐겨찾는 식사를 빠르게 추가하세요.',
			'home.favoriteMeals.noFavorites' => '즐겨찾는 식사가 없습니다.',
			'home.favoriteMeals.addFavoriteHint' => '식사를 즐겨찾기로 표시하려면 별표를 클릭하세요.',
			'home.favoriteMeals.seeAll' => '모두 보기',
			'home.favoriteMeals.add' => '추가',
			'home.mealSnap.title' => '식사 찍고 추적하기',
			'home.mealSnap.description' => 'AI 분석을 위해 음식 사진을 찍으세요.',
			'home.mealSnap.openCamera' => '카메라 열기',
			'home.mealSnap.gallery' => '갤러리',
			'home.connectHealth.title' => 'Health Connect와 동기화',
			'home.connectHealth.description' => 'Nutrition 데이터를 Health Connect와 동기화하세요',
			'home.connectHealth.install' => '설치하기',
			'home.connectHealth.connect' => '연결하기',
			'history.noMeals' => '기록된 식사가 없습니다.',
			'history.emptyMessage' => '마지막 식사의 사진을 찍어 여기에서 기록하세요.',
			'history.today' => '오늘',
			'history.yesterday' => '어제',
			'meal.ohNo' => '아니요!',
			'meal.delete' => '삭제',
			'meal.editMeal' => '식사 수정',
			'meal.addMeal' => '식사 추가',
			'meal.saveMeal' => '식사 저장',
			'meal.save' => '저장',
			'meal.mealName' => '식사 이름',
			'meal.mealNameHint' => '예: 토스트를 곁들인 스크램블 에그',
			'meal.mealQuantity' => '식사 양',
			'meal.mealQuantityHint' => '예: 1 그릇, 2 조각',
			'meal.timeOfMeal' => '식사 시간',
			'meal.timeOfMealHint' => '식사를 한 시간을 선택하세요',
			'meal.mealType' => '식사 유형',
			'meal.nutrition.calories' => '칼로리',
			'meal.nutrition.carbs' => '탄수화물 (g)',
			'meal.nutrition.protein' => '단백질 (g)',
			'meal.nutrition.fat' => '지방 (g)',
			'meal.nutrition.fiber' => '섬유질 (g)',
			'meal.deleteConfirmation.title' => '식사 삭제',
			'meal.deleteConfirmation.message' => '이 식사 항목을 삭제하시겠습니까?',
			'meal.deleteConfirmation.cancel' => '취소',
			'meal.deleteConfirmation.delete' => '삭제',
			'meal.addedToLog' => '식사가 기록되었습니다!',
			'meal.couldNotAdd' => ({required Object error}) => '식사를 추가할 수 없습니다: ${error}',
			'meal.savedSuccessfully' => '식사가 성공적으로 추가되었습니다!',
			'meal.updatedSuccessfully' => '식사가 성공적으로 업데이트되었습니다!',
			'meal.errorSaving' => ({required Object error}) => '식사 저장 중 오류가 발생했습니다: ${error}',
			'meal.removedFromFavorites' => '즐겨찾기에서 제거되었습니다!',
			'meal.savedAsFavorite' => '식사가 즐겨찾기로 저장되었습니다!',
			'meal.couldNotUpdateFavorite' => ({required Object error}) => '즐겨찾기를 업데이트할 수 없습니다: ${error}',
			'meal.failedToProcess' => ({required Object error}) => '처리 실패: ${error}',
			'meal.failedToProcessImage' => ({required Object error}) => '이미지 처리 실패: ${error}',
			'meal.errorCompressingImage' => ({required Object error}) => '이미지 압축 오류: ${error}',
			'meal.failedToSave' => '데이터 저장 실패. 다시 시도해 주세요.',
			'meal.skip' => '건너뛰기',
			'meal.variation.question' => ({required Object current, required Object total}) => '질문 ${current} / ${total}',
			'meal.variation.noVariationsAvailable' => '사용 가능한 변형이 없습니다',
			'favorites.title' => '즐겨찾기',
			'favorites.empty' => '즐겨찾는 식사가 없습니다.',
			'profile.title' => '프로필',
			'profile.noProfileData' => '프로필 데이터가 없습니다.',
			'profile.yourProfile' => '당신의 프로필',
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
			'profile.notSet' => '설정되지 않음',
			'profile.years' => '세',
			'profile.updatedSuccessfully' => '프로필이 성공적으로 업데이트되었습니다!',
			'profile.calculatedValues.bmr' => 'BMR',
			'profile.calculatedValues.tdee' => 'TDEE',
			'profile.calculatedValues.dailyGoal' => '일일 목표',
			'profile.calculatedValues.calPerDay' => '칼로리/일',
			'profile.calculatedValues.notAvailable' => 'N/A',
			'healthScore.title' => '건강 점수',
			'healthScore.whyThisScore' => '왜 이 점수인가요?',
			'healthScore.note' => '이 점수는 인식된 재료와 영양 밀도를 기반으로 한 AI 추정치입니다. 항상 전문의와 상담하여 식이 조언을 받으세요.',
			'healthScore.unhealthy' => '불건전',
			'healthScore.healthy' => '건전',
			'healthScore.neutral' => '중립',
			'editProfile.title' => '프로필 수정',
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
			'editProfile.unitCm' => '㎝',
			'editProfile.unitFt' => 'ft',
			'editProfile.unitKg' => '㎏',
			'editProfile.unitLbs' => 'lb',
			'editProfile.metricCm' => '미터법 (cm)',
			'editProfile.imperialFtIn' => '영국식 (ft/in)',
			'editProfile.metricKg' => '미터법 (kg)',
			'editProfile.imperialLbs' => '영국식 (lbs)',
			'editProfile.genders.male' => '남성',
			'editProfile.genders.female' => '여성',
			'editProfile.genders.other' => '기타',
			'editProfile.weightGoals.loseWeight.name' => '체중 감량',
			'editProfile.weightGoals.loseWeight.description' => '체중을 줄이기 위해 칼로리 적자를 만듭니다.',
			'editProfile.weightGoals.maintainWeight.name' => '체중 유지',
			'editProfile.weightGoals.maintainWeight.description' => '현재 체중을 유지합니다.',
			'editProfile.weightGoals.gainWeight.name' => '체중 증가',
			'editProfile.weightGoals.gainWeight.description' => '체중을 늘리기 위해 칼로리 과잉을 만듭니다.',
			'editProfile.activityLevels.sedentary.name' => '좌식',
			'editProfile.activityLevels.sedentary.description' => '거의 운동이 없습니다.',
			'editProfile.activityLevels.lightlyActive.name' => '약간 활동적',
			'editProfile.activityLevels.lightlyActive.description' => '주 1-3일 경량 운동.',
			'editProfile.activityLevels.moderatelyActive.name' => '중간 정도 활동적',
			'editProfile.activityLevels.moderatelyActive.description' => '주 3-5일 중간 운동.',
			'editProfile.activityLevels.veryActive.name' => '활동적',
			'editProfile.activityLevels.veryActive.description' => '주 6-7일 강렬한 운동.',
			'editProfile.activityLevels.extremelyActive.name' => '매우 활동적',
			'editProfile.activityLevels.extremelyActive.description' => '매우 힘든 운동, 육체 노동.',
			'settings.title' => '설정',
			'settings.sections.profile' => '프로필',
			'settings.sections.localization' => '지역화',
			'settings.sections.notifications' => '알림',
			'settings.sections.healthConnect' => 'Health Connect',
			'settings.sections.supportAndLegal' => '지원 및 법률',
			'settings.sections.about' => '소개',
			'settings.sections.dangerZone' => '위험 지역',
			'settings.sections.developer' => '개발자',
			'settings.editProfile.title' => '프로필 수정',
			'settings.editProfile.subtitle' => '개인 정보를 업데이트하세요',
			'settings.language.title' => '언어',
			'settings.language.subtitle' => '선호하는 언어를 선택하세요',
			'settings.language.searchHint' => '언어 검색...',
			'settings.language.noResults' => '결과가 없습니다',
			'settings.heightUnit.title' => '키 단위',
			'settings.weightUnit.title' => '체중 단위',
			'settings.mealReminders.title' => '식사 알림',
			'settings.mealReminders.subtitle' => '시기적절한 알림으로 계획을 계속 유지하세요',
			'settings.theme.title' => '테마',
			'settings.theme.light' => '라이트',
			'settings.theme.dark' => '다크',
			'settings.theme.system' => '시스템',
			'settings.sendFeedback.title' => '피드백 보내기',
			'settings.sendFeedback.subtitle' => ({required Object appLabel}) => '${appLabel}을(A를) 개선하는 데 도움을 주세요',
			'settings.sendFeedback.emailSubject' => ({required Object appLabel}) => '${appLabel} 앱 피드백',
			'settings.sendFeedback.emailBodyPrefix' => '아래에 귀하의 피드백을 제공해 주세요:',
			'settings.sendFeedback.appVersion' => '앱 버전',
			'settings.sendFeedback.device' => '장치',
			'settings.sendFeedback.osVersion' => 'OS 버전',
			'settings.sendFeedback.uid' => 'UID',
			'settings.clearAllData.title' => '모든 데이터 지우기',
			'settings.clearAllData.subtitle' => '모든 정보를 영구히 삭제합니다.',
			'settings.clearAllData.confirmationTitle' => '모든 데이터 지우기?',
			'settings.clearAllData.confirmationMessage' => '이 작업은 취소할 수 없습니다. 로그된 모든 식사, 즐겨찾기 및 프로필 설정이 영구적으로 삭제됩니다.',
			'settings.clearAllData.cancel' => '취소',
			'settings.clearAllData.clearEverything' => '모두 지우기',
			'settings.debugOptions.title' => '디버그 옵션',
			'settings.developerModeEnabled' => '개발자 모드가 활성화되었습니다!',
			'settings.healthConnect.title' => '헬스 커넥트',
			'settings.healthConnect.subtitle' => '권한 보기 및 관리',
			'settings.healthConnect.unavailable.title' => 'Health Connect 사용 불가능',
			'settings.healthConnect.unavailable.description' => '이 장치에서는 Health Connect를 사용할 수 없습니다. Play 스토어(Android 9+)에서 Health Connect를 설치하거나 Android 14+로 업데이트해 주세요.',
			'settings.healthConnect.permissions.title' => '권한',
			'settings.healthConnect.permissions.description' => '헬스 커넥트 통합을 제공하기 위해 요청되는 권한은 다음과 같습니다:',
			'settings.healthConnect.permissions.granted' => '허용됨',
			'settings.healthConnect.permissions.notGranted' => '허용되지 않음',
			'settings.healthConnect.permissions.caloriesBurned.title' => '소모된 총 칼로리 읽기',
			'settings.healthConnect.permissions.caloriesBurned.description' => '앱이 헬스 커넥트에서 소모된 총 칼로리를 읽을 수 있도록 허용합니다.',
			'settings.healthConnect.permissions.caloriesBurned.usage' => '이 권한은 앱에서 사용자의 일일 칼로리 소모량을 표시하는 데 사용되며, 하루 동안의 총 에너지 소비를 이해하는 데 도움이 됩니다.',
			'settings.healthConnect.permissions.nutritionRead.title' => '영양 데이터 읽기',
			'settings.healthConnect.permissions.nutritionRead.description' => '앱이 헬스 커넥트에서 영양 데이터를 읽을 수 있도록 허용합니다.',
			'settings.healthConnect.permissions.nutritionRead.usage' => '이 권한을 통해 앱은 헬스 커넥트에 연결된 다른 앱에서 기록된 영양 정보를 읽을 수 있으며, 영양에 대한 포괄적인 정보를 제공합니다.',
			'settings.healthConnect.permissions.nutritionWrite.title' => '영양 데이터 쓰기',
			'settings.healthConnect.permissions.nutritionWrite.description' => '앱이 헬스 커넥트에 영양 데이터를 쓸 수 있도록 허용합니다.',
			'settings.healthConnect.permissions.nutritionWrite.usage' => '이 권한을 통해 앱은 사용자가 기록한 식사를 헬스 커넥트에 동기화하여, 사용자가 사용하는 다른 건강 및 피트니스 앱에서 영양 데이터를 사용할 수 있도록 합니다.',
			'settings.healthConnect.managePermissions' => '권한 관리',
			'settings.healthConnect.openSettings' => '헬스 커넥트 설정 열기',
			'settings.healthConnect.requestPermissions' => '권한 요청하기',
			'settings.healthConnect.permissionRequestCancelledOrFailed' => '권한 요청이 취소되었거나 실패했습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 부여하세요.',
			'settings.healthConnect.permissionRequestFailed' => '권한을 요청할 수 없습니다. 다시 시도하거나 Health Connect 설정에서 수동으로 권한을 부여하세요.',
			'settings.healthConnect.requestingPermissions' => 'Requesting...',
			'settings.about.title' => '소개',
			'settings.about.tagline' => '빠르고 무료이며 개인 정보 보호를 우선시하는 칼로리 인식',
			'settings.about.ourStory.title' => '우리의 이야기',
			'settings.about.ourStory.content' => ({required Object appLabel}) => '${appLabel}는 단순한 불만에서 탄생했습니다: 대부분의 칼로리 추적 앱은 지나치게 복잡하거나, 지속적인 수동 입력을 요구하거나, 높은 구독 비용을 부과하거나, 개인 정보를 침해합니다.\n\n인디 개발자로서, 저는 더 간단하고 공정한 것을 만들고 싶었습니다 — 노력을 줄이고, 빠르고 무료로 사용할 수 있으며, 귀하의 건강 데이터를 존중하는 AI를 사용하는 앱입니다.\n\n${appLabel}는 제가 존재하였으면 하는 앱입니다: 계정 없이, 추적 없이, 광고 없이 — 단순한 실제 통찰과 귀하의 건강 목표만을 제공합니다.',
			'settings.about.privacy.title' => '귀하의 개인 정보가 중요합니다',
			'settings.about.privacy.description' => '개인 정보는 후순위가 아니라 — 디자인 원칙입니다. 실제로 이 의미는 다음과 같습니다:',
			'settings.about.privacy.noAccounts' => '계정 없음\n앱을 즉시 사용하세요. 가입, 신원 확인 필요 없음.',
			'settings.about.privacy.noTracking' => ({required Object appLabel}) => '행동 추적 없음\n${appLabel}는 귀하의 활동을 모니터링하거나, 사용 프로필을 만들거나, 앱이나 웹사이트에서 귀하를 추적하지 않습니다.',
			'settings.about.privacy.noAds' => ({required Object appLabel}) => '광고 없음, 디자인으로도\n${appLabel}는 광고 없이, 데이터 기반 수익 모델 없이 작동하도록 설계되었습니다.',
			'settings.about.privacy.noDataSelling' => '데이터 판매 없음\n귀하의 건강 데이터는 절대 판매되거나 제3자와 공유되지 않습니다.',
			'settings.about.privacy.localStorage' => '로컬 우선 저장소\n귀하의 데이터는 귀하의 장치에만 저장됩니다.',
			'settings.about.privacy.privacyPolicy' => '개인정보 처리방침',
			'settings.about.developer.title' => '인디 개발자가 만든 앱',
			'settings.about.developer.description' => ({required Object appLabel}) => '${appLabel}는 개인의 편안함과 개인 정보 보호를 존중하는 건강 소프트웨어를 만드는 데 집중하는 단 한 명의 인디 개발자가 운영하고 있습니다.\n\n피드백은 직접 읽으며 앱의 방향성을 형성하는 데 도움을 줍니다.',
			'settings.about.developer.website' => '웹사이트',
			'settings.about.developer.email' => '이메일',
			'settings.about.feedback.title' => ({required Object appLabel}) => '${appLabel}를 좋아하시나요?',
			'settings.about.feedback.description' => ({required Object appLabel}) => '귀하의 피드백은 ${appLabel}를 모두에게 더 좋게 만드는데 도움이 됩니다.',
			'settings.about.feedback.rateApp' => '플레이 스토어에서 평가하기',
			'settings.about.feedback.sendFeedback' => '피드백 보내기',
			'settings.appInfo.version' => ({required Object version}) => 'Calorify v${version}',
			'settings.appInfo.build' => ({required Object buildNumber}) => '빌드 ${buildNumber}',
			'reminders.title' => '알림으로 계획을 계속 유지하세요',
			'reminders.description' => '식사를 기록하고 영양 목표를 지속할 수 있도록 부드러운 리마인더를 받으세요',
			'reminders.notificationsEnabled' => '알림이 활성화되었습니다',
			'reminders.notificationsDisabled' => '알림이 비활성화되었습니다',
			'reminders.enabledSubtitle' => '식사 알림을 받게 됩니다',
			'reminders.disabledSubtitle' => '식사 알림을 받으려면 알림을 활성화하세요',
			'reminders.mealReminders' => '식사 알림',
			'reminders.breakfast' => '아침',
			'reminders.lunch' => '점심',
			'reminders.dinner' => '저녁',
			'reminders.snack' => '간식',
			'reminders.unknown' => '알 수 없음',
			'reminders.change' => '변경',
			'reminders.enableNotifications' => '알림 활성화',
			'reminders.skipForNow' => '지금은 건너뛰기',
			'reminders.saveChanges' => '변경 사항 저장',
			'reminders.enabledSuccessfully' => '알림을 성공적으로 활성화했습니다!',
			'reminders.permissionDenied' => '알림 권한이 거부되었습니다',
			'reminders.errorEnabling' => ({required Object error}) => '알림 활성화 오류: ${error}',
			'reminders.errorCompletingSetup' => ({required Object error}) => '설정 완료 오류: ${error}',
			'notifications.breakfast.title' => '아침 식사 시간! 🍳',
			'notifications.breakfast.body' => '아침 식사를 기록하는 것을 잊지 마세요',
			'notifications.lunch.title' => '점심 식사 시간! 🥗',
			'notifications.lunch.body' => '점심을 기록할 시간입니다',
			'notifications.dinner.title' => '저녁 식사 시간! 🍽️',
			'notifications.dinner.body' => '저녁을 기록하는 것을 잊지 마세요',
			'notifications.snack.title' => '간식 시간! 🍎',
			'notifications.snack.body' => '건강한 간식을 먹을 시간입니다',
			'notifications.test.title' => '테스트 알림',
			'login.title' => '로그인',
			'login.signInWithGoogle' => 'Google로 로그인',
			'login.signInFailed' => 'Google 로그인 실패 또는 취소되었습니다.',
			'disclaimer.pleaseNote' => '참고하세요',
			'disclaimer.snap.description' => ({required Object appLabel}) => '${appLabel}은(A는) 추정된 영양 정보를 제공합니다. 정확도는 입력 및 음식 변동성에 따라 다릅니다. 참고용으로만 사용하고, 확정적인 출처로는 사용하지 마세요. 개인 맞춤형 식이 조언은 전문가와 상담하세요.',
			'disclaimer.snap.portionSize.title' => '부분 크기',
			'disclaimer.snap.portionSize.description' => '추정 정확도는 부분 크기를 올바르게 평가하는 것에 크게 의존합니다.',
			'disclaimer.snap.preparationMethods.title' => '조리 방법',
			'disclaimer.snap.preparationMethods.description' => ({required Object appLabel}) => '조리 방법은 음식의 영양 성분에 상당한 영향을 미칠 수 있습니다. ${appLabel}의 추정치는 이러한 변동성을 항상 고려하지 않을 수 있습니다.',
			'disclaimer.snap.ingredients.title' => '재료',
			'disclaimer.snap.ingredients.description' => '복합 요리에서 많은 숨겨진 재료가 있을 경우, 덜 정확한 추정치가 나올 수 있습니다.',
			'disclaimer.snap.databaseLimitations.title' => '데이터베이스 한계',
			'disclaimer.snap.databaseLimitations.description' => ({required Object appLabel}) => '${appLabel}의 음식 데이터베이스는 방대하지만 모든 음식 항목이나 변형을 포함하지는 않을 수 있습니다.',
			'disclaimer.weightEstimate.title' => '체중 추정 안내',
			'disclaimer.weightEstimate.description' => '예상 체중 변화는 단순 칼로리 대 칼로리 모델을 바탕으로 한 이론적 추정입니다. 이는 동기 부여 가이드를 위한 것이며, 실제 체중 예측이 아닙니다.',
			'disclaimer.weightEstimate.calorieAccuracy.title' => '칼로리 정확도',
			'disclaimer.weightEstimate.calorieAccuracy.description' => '이 추정치는 추적된 칼로리 섭취 및 소비에 따라 정확성이 달라집니다. 부정확한 기록은 부정확한 추정으로 이어집니다.',
			'disclaimer.weightEstimate.biologicalFactors.title' => '생물학적 요인',
			'disclaimer.weightEstimate.biologicalFactors.description' => ({required Object appLabel}) => '실제 체중 감소/증가는 신진대사, 호르몬, 수면, 스트레스, 수분 섭취 및 ${appLabel}이 측정할 수 없는 기타 개인 요인에 의해 영향을 받습니다.',
			'disclaimer.weightEstimate.waterWeight.title' => '수분 체중 및 변동',
			'disclaimer.weightEstimate.waterWeight.description' => '일일 체중은 수분 저류, 소화 및 타이밍으로 인해 상당히 변동할 수 있습니다. 이 추정치는 이러한 일일 변화를 고려하지 않습니다.',
			'disclaimer.weightEstimate.professionalGuidance.title' => '전문가의 조언',
			'disclaimer.weightEstimate.professionalGuidance.description' => '이 추정치를 의료 결정에 사용하지 마세요. 항상 의료 전문가나 등록된 영양사와 상담하여 개인화된 체중 관리 조언을 받으세요.',
			'disclaimer.healthMetrics.description' => '이 측정치는 귀하의 신체 에너지 필요성을 이해하고 영양 목표를 안내하는 데 도움이 됩니다.',
			'disclaimer.healthMetrics.bmr.title' => 'BMR',
			'disclaimer.healthMetrics.bmr.description' => '기초 대사율(BMR)은 호흡 및 순환과 같은 기본 기능을 유지하기 위해 신체가 휴식 중에 소모하는 칼로리의 수입니다. BMR은 귀하의 나이, 성별, 키 및 체중에 따라 달라집니다. BMR이 높을수록 신체가 자연적으로 더 많은 칼로리를 태우며, 이는 일반적으로 근육량이 많거나 나이가 어리거나 남성인 경우에 해당합니다. 반면 BMR이 낮은 경우는 일반적으로 근육량이 적거나 나이가 많거나 여성인 경우를 나타냅니다.',
			'disclaimer.healthMetrics.tdee.title' => 'TDEE',
			'disclaimer.healthMetrics.tdee.description' => '총 일일 에너지 소비(TDEE)는 BMR에 신체 활동 및 일상적인 움직임에서 소모된 칼로리를 더한 하루 동안 소모하는 총 칼로리입니다. TDEE는 귀하의 BMR과 활동 수준에 따라 달라집니다. TDEE가 높을수록 일반적으로 더 많은 칼로리를 소모하며 이는 더 활동적이거나 BMR이 높은 경우가 많습니다. TDEE가 낮은 경우는 일상적인 활동이 적거나 BMR이 낮다는 것을 나타냅니다.',
			'disclaimer.healthMetrics.dailyGoal.title' => '일일 목표',
			'disclaimer.healthMetrics.dailyGoal.description' => '일일 목표는 귀하의 TDEE와 체중 목표에 기반한 추천 일일 칼로리 섭취량입니다. 체중 감소를 위해서는 TDEE보다 적은 칼로리를 섭취합니다. 체중 유지를 위해서는 TDEE와 일치시킵니다. 체중 증가를 위해서는 TDEE보다 더 많은 칼로리를 섭취합니다. 이는 건강한 속도로 원하는 체중 변화를 달성하는 데 도움이 됩니다.',
			'disclaimer.calorieExpenditure.title' => '칼로리 소모량 추정',
			'disclaimer.calorieExpenditure.description' => 'Health Connect 데이터를 사용할 수 없을 때, 기초대사량(BMR)과 활동 수준(TDEE)을 사용해 오늘 소모된 칼로리를 추정하며 경과한 하루 비율에 따라 보정합니다.',
			'disclaimer.calorieExpenditure.howCalculated.title' => '추정치 계산 방법',
			'disclaimer.calorieExpenditure.howCalculated.description' => '프로필을 바탕으로 TDEE를 계산하고, 경과한 하루의 비율 (시간 + 분) / 24 을 곱해 현재까지 소모된 칼로리를 추정합니다.',
			'disclaimer.calorieExpenditure.professionalGuidance.title' => '전문가 안내',
			'disclaimer.calorieExpenditure.professionalGuidance.description' => '이 추정값을 의료적 결정의 근거로 사용하지 마세요. 개인화된 체중 관리 조언은 반드시 의료 전문가 또는 등록된 영양사와 상담하십시오.',
			'common.close' => '닫기',
			'common.kContinue' => '계속하기',
			'feedbackRating.enjoyingQuestion' => ({required Object appLabel}) => '${appLabel}을(를) 즐기고 계신가요?',
			'feedbackRating.yes' => '네, 즐기고 있어요',
			'feedbackRating.no' => '아직 그렇지 않아요',
			'feedbackRating.soloDevMessage' => ({required Object appLabel}) => '간단한 평가 한 번이 다른 사람들이 ${appLabel}을(를) 찾는 데 도움이 되고 개발을 이어가는 데 큰 힘이 됩니다. 잠깐 시간을 내어 평가해 주시겠어요?',
			'feedbackRating.shareFeedbackViaEmail' => '여러분의 피드백이 앞으로의 방향을 만듭니다 — 보내주신 모든 메시지를 읽고 있습니다. 이메일로 의견을 공유하시겠어요?',
			'feedbackRating.rateCta' => 'Play 스토어에 평점 남기기',
			'feedbackRating.maybeLater' => '나중에',
			'feedbackRating.sendFeedback' => '피드백 보내기',
			'feedbackRating.noThanks' => '아니요, 괜찮아요',
			'feedbackRating.aboutUsDescription' => '작은 팀이 정성을 다해 만들었습니다. 우리는 개인정보 보호와 단순성을 중시하며, 여러분이 더 건강한 식습관을 만들어 가도록 돕는 데 집중합니다.',
			'feedbackRating.aboutUsMentionBeforeLink' => ({required Object appLabel}) => '${appLabel}의 제작자가 궁금하신가요? ',
			'feedbackRating.aboutUsLinkLabel' => '개발자 소개',
			'feedbackRating.thankYouMessage' => '감사합니다! 다음에 다시 여쭤볼게요.',
			'errors.loadingProfileData' => '프로필 데이터 로드 중 오류 발생',
			'errors.somethingWentWrong' => '문제가 발생했습니다.',
			'debug.title' => '디버그 옵션',
			'debug.searchHint' => '검색 옵션...',
			'debug.sections.notifications' => '알림',
			'debug.sections.healthConnect' => 'Health Connect',
			'debug.sections.wearOs' => 'Wear OS',
			'debug.sections.foodApiTests' => 'Food API 테스트',
			'debug.sections.profileApiTests' => '프로필 API 테스트',
			'debug.sections.feedback' => '피드백',
			'debug.sections.dataReset' => '데이터 초기화',
			'debug.sections.appInfo' => '앱 정보',
			'debug.sections.shorebird' => 'Shorebird',
			'debug.showActiveNotifications' => '활성 알림 표시',
			'debug.scheduleTestNotification' => '테스트 알림 예약하기 (10초)',
			'debug.triggerBreakfastNotification' => '아침 식사 알림 트리거',
			'debug.cancelAllNotifications' => '모든 알림 취소',
			'debug.activeNotifications' => '활성 알림',
			'debug.noTitle' => '제목 없음',
			'debug.noBody' => '내용 없음',
			'debug.fetchTodaysSteps' => '오늘의 걸음 수 가져오기',
			'debug.fetchTodaysCalories' => '오늘의 칼로리 가져오기',
			'debug.fetchLatestWeight' => '최신 체중 가져오기',
			'debug.fetchLatestHeight' => '최신 키 가져오기',
			'debug.writeTestWeight' => '테스트 체중 작성 (70kg)',
			'debug.writeTestHeight' => '테스트 키 작성 (175cm)',
			'debug.syncLast7Days' => '최근 7일 동기화',
			'debug.sync7DaysTitle' => '7일 동기화',
			'debug.checkCurrentLocale' => '현재 지역 확인',
			'debug.currentLocale' => '현재 지역',
			'debug.localeInfo' => ({required Object languageCode, required Object countryCode, required Object unitSystem}) => '언어: ${languageCode}\n국가: ${countryCode}\n단위 시스템: ${unitSystem}',
			'debug.latestWeight' => '최신 체중',
			'debug.latestHeight' => '최신 키',
			'debug.todaysCalories' => '오늘의 칼로리',
			'debug.totalCaloriesBurned' => ({required Object calories}) => '소모된 총 칼로리: ${calories}',
			'debug.syncSuccess' => ({required Object count}) => '최근 7일 동안 ${count} 데이터 포인트가 성공적으로 가져와졌습니다.',
			'debug.noWeightData' => '최근 30일 이내의 체중 데이터가 없습니다.',
			'debug.noHeightData' => '지난 1년 이내의 키 데이터가 없습니다.',
			'debug.noCalorieData' => '오늘의 칼로리 데이터가 없습니다.',
			'debug.weightWritten' => '테스트 체중 (70kg)을 성공적으로 기록했습니다.',
			'debug.weightWriteFailed' => '테스트 체중을 기록하는 데 실패했습니다.',
			'debug.heightWritten' => '테스트 키 (175cm)를 성공적으로 기록했습니다.',
			'debug.heightWriteFailed' => '테스트 키를 기록하는 데 실패했습니다.',
			'debug.noNotifications' => '활성 알림이 없습니다.',
			'debug.testNotificationScheduled' => '10초 후에 예약된 테스트 알림.',
			'debug.testNotificationBody' => '10초 후에 예약된 테스트 알림입니다.',
			'debug.breakfastNotificationTriggered' => '아침 식사 알림이 트리거되었습니다.',
			'debug.allNotificationsCancelled' => '모든 알림이 취소되었습니다.',
			'debug.fetchingData' => '최근 7일 동안의 데이터 가져오기...',
			'debug.id' => ({required Object id}) => 'ID: ${id}',
			'debug.showFeedbackRatingSheet' => '피드백/평가 창 열기',
			'debug.clearUserPreferences' => '사용자 설정 초기화',
			'debug.clearUserPreferencesConfirmationTitle' => '사용자 설정을 초기화하시겠습니까?',
			'debug.clearUserPreferencesConfirmationMessage' => '테마, 언어, 피드백 설정이 초기화됩니다. 식사 기록과 프로필은 영향을 받지 않습니다.',
			'debug.clearUserProfile' => '프로필 초기화',
			'debug.clearUserProfileConfirmationTitle' => '프로필을 초기화하시겠습니까?',
			'debug.clearUserProfileConfirmationMessage' => '프로필 데이터(일일 목표, 키, 체중 등)가 초기화됩니다. 식사 기록 및 설정은 영향을 받지 않습니다.',
			'debug.clear' => '초기화',
			'debug.cancel' => '취소',
			'debug.checkWatchConnection' => '시계 연결 확인',
			'debug.sendTestMessage' => '테스트 메시지 전송',
			'debug.sendTestMessageSubtitle' => '시계에 간단한 테스트 메시지를 보냅니다.',
			'debug.sendTestMealData' => '테스트 식사 데이터 전송',
			'debug.sendTestMealDataSubtitle' => '시계에 식사 샘플 데이터를 보냅니다.',
			'debug.sendTestCalorieGoal' => '테스트 칼로리 목표 전송',
			'debug.sendTestCalorieGoalSubtitle' => '시계에 칼로리 목표 샘플을 보냅니다.',
			'debug.viewReceivedMessages' => '받은 메시지 보기',
			'debug.viewReceivedMessagesSubtitle' => '시계로부터 수신한 메시지를 봅니다.',
			'debug.watchConnected' => '시계가 연결됨 ✓',
			'debug.device' => '기기',
			'debug.nearby' => '주변',
			'debug.yes' => '예',
			'debug.no' => '아니오',
			'debug.connectedDevices' => '연결된 기기',
			'debug.deviceInfoUnavailable' => '(기기 정보 사용 불가)',
			'debug.unknownDevice' => '알 수 없는 기기',
			'debug.watchNotConnected' => '시계가 연결되지 않음 ✗',
			'debug.watchNotConnectedHint' => '다음을 확인하세요:\n• 두 기기가 페어링되어 있는지\n• 시계 앱이 실행 중인지\n• 두 앱 모두 디버그/스테이징 모드인지',
			'debug.watchConnection' => '시계 연결',
			'debug.errorCheckingConnection' => ({required Object error}) => '연결 확인 중 오류: ${error}',
			'debug.helloFromPhone' => '휴대폰에서 보낸 인사!',
			'debug.testMessageSentSuccess' => '테스트 메시지를 성공적으로 보냈습니다!',
			'debug.testMessageFailed' => '테스트 메시지 전송에 실패했습니다. 시계 연결을 확인하세요.',
			'debug.errorSendingMessage' => ({required Object error}) => '메시지 전송 중 오류: ${error}',
			'debug.testMeal' => '테스트 식사',
			'debug.testMealDataSentSuccess' => '테스트 식사 데이터를 성공적으로 보냈습니다!',
			'debug.failedToSendMealData' => '식사 데이터 전송에 실패했습니다. 시계 연결을 확인하세요.',
			'debug.errorSendingMealData' => ({required Object error}) => '식사 데이터 전송 중 오류: ${error}',
			'debug.testCalorieGoalSentSuccess' => '테스트 칼로리 목표를 성공적으로 보냈습니다!',
			'debug.failedToSendCalorieGoal' => '칼로리 목표 전송에 실패했습니다. 시계 연결을 확인하세요.',
			'debug.errorSendingCalorieGoal' => ({required Object error}) => '칼로리 목표 전송 중 오류: ${error}',
			'debug.testAnalyzeImage' => '이미지 분석 테스트',
			'debug.testAnalyzeImageSubtitle' => '미리 지정된 테스트 이미지를 업로드합니다.',
			'debug.testDetectImage' => '이미지 감지 테스트',
			'debug.testDetectImageSubtitle' => '이미지 URL로부터 식사를 감지합니다.',
			_ => null,
		} ?? switch (path) {
			'debug.detectImageFromGallery' => '갤러리에서 이미지 감지',
			'debug.detectImageFromGallerySubtitle' => '이미지를 선택하여 버킷에 업로드하고 칼로리를 추정합니다.',
			'debug.testDetectText' => '텍스트 감지 테스트',
			'debug.testDetectTextSubtitle' => '텍스트 설명에서 식사를 감지합니다.',
			'debug.testMealLoggingWithVariations' => '변형이 있는 식사 기록 테스트',
			'debug.testMealLoggingWithVariationsSubtitle' => '변형을 포함한 전체 식사 기록 흐름을 테스트합니다.',
			'debug.mockMealWithVariations' => '변형이 있는 모의 식사',
			'debug.mockMealWithVariationsSubtitle' => '기록 없이 변형 및 팁 시트 UI를 미리봅니다.',
			'debug.mockMealName' => '구운 닭고기와 밥, 야채',
			'debug.mockTip' => 'UI 미리보기를 위한 모의 팁입니다. 식사는 기록되지 않습니다.',
			'debug.mockMealDescription' => '디버그용 모의 식사',
			'debug.portionSizeQuestion' => '1인분 크기는 어땠나요?',
			'debug.extraSidesQuestion' => '추가 반찬이 있었나요?',
			'debug.optionSmall' => '작음',
			'debug.optionMedium' => '보통',
			'debug.optionLarge' => '큼',
			'debug.optionNone' => '없음',
			'debug.optionSideSalad' => '사이드 샐러드',
			'debug.optionBreadRoll' => '빵 롤',
			'debug.testingAnalyzeImage' => 'analyzeImage API 테스트 중...',
			'debug.testingDetectImage' => 'detectImage API 테스트 중...',
			'debug.testingDetectText' => 'detectText API 테스트 중...',
			'debug.selectingImageFromGallery' => '갤러리에서 이미지 선택 중...',
			'debug.noImageSelected' => '선택된 이미지 없음',
			'debug.compressingImage' => '이미지 압축 중...',
			'debug.uploadingImageAndDetecting' => '이미지를 버킷에 업로드하고 식사를 감지하는 중...',
			'debug.testingMealLoggingFlow' => '변형이 있는 식사 기록 흐름 테스트 중...',
			'debug.testUpdateProfile' => '프로필 업데이트 테스트',
			'debug.testUpdateProfileSubtitle' => '샘플 프로필을 백엔드로 POST합니다',
			'debug.testingProfileApi' => '프로필 API를 테스트하는 중...',
			'debug.profileUpdateSuccess' => '프로필 API가 정상적으로 응답했습니다',
			'debug.profileUpdateFailed' => ({required Object error}) => '프로필 API 오류: ${error}',
			'debug.noMealIdentifiedInResponse' => '응답에서 식사를 식별하지 못했습니다',
			'debug.mealIdentified' => '식사 식별됨',
			'debug.confidence' => '신뢰도',
			'debug.tip' => '팁',
			'debug.mealName' => '식사 이름',
			'debug.calories' => '칼로리',
			'debug.protein' => '단백질',
			'debug.carbs' => '탄수화물',
			'debug.fat' => '지방',
			'debug.noMealInfo' => '식사 정보 없음',
			'debug.na' => '해당 없음',
			'debug.analyzeImageResult' => '이미지 분석 결과',
			'debug.detectImageResult' => '이미지 감지 결과',
			'debug.detectImageFromGalleryResult' => '갤러리 이미지 감지 결과',
			'debug.detectTextResult' => '텍스트 감지 결과',
			'debug.errorGeneric' => ({required Object error}) => '오류: ${error}',
			'debug.variationsCount' => '변형',
			'debug.userPreferencesCleared' => '사용자 환경설정이 초기화되었습니다',
			'debug.userProfileCleared' => '사용자 프로필이 초기화되었습니다',
			'debug.checkForUpdate' => '업데이트 확인',
			'debug.showPatchNumber' => '패치 번호 표시',
			'debug.showUpdateAvailable' => '업데이트 가능 표시',
			'debug.updateAvailable' => '업데이트 가능',
			'debug.upToDate' => '최신 상태',
			'debug.shorebirdUnavailable' => '이 환경에서는 Shorebird를 사용할 수 없습니다.',
			'debug.patchNumberLabel' => '패치 번호',
			'debug.noPatchInstalled' => '설치된 패치 없음',
			'debug.todaysSteps' => '오늘의 걸음 수',
			'debug.stepsLabel' => '걸음',
			'debug.weightLabel' => ({required Object value}) => '체중: ${value} kg',
			'debug.heightLabel' => ({required Object value}) => '키: ${value} cm',
			'debug.receivedMessagesFromWatch' => '시계로부터 받은 메시지',
			'debug.noMessagesReceivedYet' => '아직 메시지를 받지 못했습니다.\n\n시계에서 테스트 데이터를 보내면 여기에 메시지가 표시됩니다.',
			'debug.messagesCleared' => '메시지가 삭제되었습니다',
			'health.syncFailed' => 'Health Connect와 동기화할 수 없습니다.',
			'health.mealSynced' => '식사가 Health Connect와 동기화되었습니다.',
			_ => null,
		};
	}
}
