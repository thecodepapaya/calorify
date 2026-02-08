/// Named route constants for bottom sheets and dialogs.
/// These routes are used with showModalBottomSheet and showDialog via routeSettings.
class RouteNames {
  RouteNames._();

  // Bottom sheets
  static const String disclaimerSheet = '/disclaimer_sheet';
  static const String mealTipSheet = '/meal_tip_sheet';
  static const String mealVariationSheet = '/meal_variation_sheet';
  static const String healthScoreSheet = '/health_score_sheet';
  static const String languagePickerSheet = '/language_picker_sheet';
  static const String editMealSheet = '/edit_meal_sheet';
  static const String feedbackRatingSheet = '/feedback_rating_sheet';

  // Dialogs
  static const String deleteMealConfirmationDialog =
      '/delete_meal_confirmation_dialog';
  static const String activeNotificationsDialog =
      '/active_notifications_dialog';
  static const String receivedMessagesDialog = '/received_messages_dialog';
  static const String dataDialog = '/data_dialog';
  static const String clearDataConfirmationDialog =
      '/clear_data_confirmation_dialog';
}
