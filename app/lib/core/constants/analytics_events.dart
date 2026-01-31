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

  // Profile
  profileView,
  profileEdit,
  profileSignOut,

  // Misc
  easterEggDiscovered,
}
