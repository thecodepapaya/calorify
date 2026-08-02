import 'package:auto_route/auto_route.dart';
import 'package:calorify/features/onboarding/reminder_notifications_screen.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EditReminderScreen extends StatelessWidget {
  const EditReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ResponsiveContent(
        maxWidth: 720,
        child: ReminderNotificationsScreen(
          onContinue: () => context.router.pop(),
          isEditing: true,
        ),
      ),
    );
  }
}
