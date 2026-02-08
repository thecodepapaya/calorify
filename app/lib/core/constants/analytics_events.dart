enum AnalyticsEvent {
  // Onboarding
  onboardingStart,
  onboardingSetBasicInfo,
  onboardingSetActivityLevel,
  onboardingSetWeightGoal,
  onboardingSetupHealthConnect,
  onboardingSkipHealthConnect,
  onboardingContinueHealthConnect,
  onboardingEnableNotifications,
  onboardingSetReminders,
  onboardingSkipReminders,
  onboardingComplete,

  // Home
  homeView,
  setDailyGoal,
  connectHealth,
  addMealFromFavorites,
  addMealFromDescription,
  viewHistory,
  viewFavorites,

  // Meal
  mealSnapFromCamera,
  mealSnapFromGallery,
  mealSave,
  mealDelete,
  mealEdit,
  mealVariationNext,
  mealVariationSkip,
  mealDetectionSuccess,
  mealDetectionFailure,

  // Favorites
  favoriteAdd,
  favoriteRemove,

  // Health Connect
  healthConnectPermissionGranted,
  healthConnectPermissionDenied,

  // Misc
  easterEggDiscovered,

  // Feedback / rating sheet
  feedbackSheetShown,
  feedbackSheetEnjoyingYes,
  feedbackSheetEnjoyingNo,
  feedbackSheetRateYes,
  feedbackSheetRateNo,
  feedbackSheetEmailYes,
  feedbackSheetEmailNo,
}
