import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenMenu extends StatelessWidget {
  const HomeScreenMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        if (value == 'profile') {
          context.router.push(const ProfileRoute());
        } else if (value == 'reminders') {
          context.router.push(const EditReminderRoute());
        } else if (value == 'feedback') {
          _sendFeedbackEmail();
        }
      },
      itemBuilder:
          (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'profile',
              child: ListTile(
                leading: Icon(LucideIcons.user),
                title: Text('Profile'),
              ),
            ),
            const PopupMenuItem<String>(
              value: 'reminders',
              child: ListTile(
                leading: Icon(LucideIcons.bell),
                title: Text('Edit Reminders'),
              ),
            ),
            const PopupMenuItem<String>(
              value: 'feedback',
              child: ListTile(
                leading: Icon(LucideIcons.mail),
                title: Text('Feedback'),
              ),
            ),
          ],
    );
  }

  void _sendFeedbackEmail() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final deviceModel = androidInfo.model;
    final deviceVersion = androidInfo.version.release;

    final uid = FirebaseAuth.instance.currentUser?.uid;

    final body = '''
      Please provide your feedback below:
      --------------------

      
      --------------------
      App Version: $version+$buildNumber
      Device: $deviceModel
      OS Version: $deviceVersion
      UID: $uid
      ''';

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'calorify@thecodepapaya.dev',
      query:
          'subject=${Uri.encodeComponent('Calorify App Feedback')}&body=${Uri.encodeComponent(body)}',
    );

    launchUrl(emailLaunchUri);
  }
}
