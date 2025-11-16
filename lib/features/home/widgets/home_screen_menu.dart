import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

enum HomeScreenMenuItem { profile, reminders, feedback, debug }

class HomeScreenMenu extends StatelessWidget {
  const HomeScreenMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<HomeScreenMenuItem>(
      onSelected: (value) {
        if (value == HomeScreenMenuItem.profile) {
          context.router.push(const ProfileRoute());
        } else if (value == HomeScreenMenuItem.reminders) {
          context.router.push(const EditReminderRoute());
        } else if (value == HomeScreenMenuItem.debug) {
          context.router.push(const DebugOptionsRoute());
        } else if (value == HomeScreenMenuItem.feedback) {
          _sendFeedbackEmail();
        }
      },
      itemBuilder: (BuildContext context) {
        final menuItems = <PopupMenuEntry<HomeScreenMenuItem>>[
          const PopupMenuItem<HomeScreenMenuItem>(
            value: HomeScreenMenuItem.profile,
            child: ListTile(
              leading: Icon(LucideIcons.user),
              title: Text('Profile'),
            ),
          ),
          const PopupMenuItem<HomeScreenMenuItem>(
            value: HomeScreenMenuItem.reminders,
            child: ListTile(
              leading: Icon(LucideIcons.bell),
              title: Text('Edit Reminders'),
            ),
          ),
          const PopupMenuItem<HomeScreenMenuItem>(
            value: HomeScreenMenuItem.feedback,
            child: ListTile(
              leading: Icon(LucideIcons.mail),
              title: Text('Feedback'),
            ),
          ),
        ];

        if (kDebugMode || EnvConfig.instance.isStaging) {
          menuItems.insert(
            2,
            const PopupMenuItem<HomeScreenMenuItem>(
              value: HomeScreenMenuItem.debug,
              child: ListTile(
                leading: Icon(LucideIcons.bug),
                title: Text('Debug Options'),
              ),
            ),
          );
        }

        return menuItems;
      },
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
UID: $uid''';

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'calorify@thecodepapaya.dev',
      query:
          'subject=${Uri.encodeComponent('Calorify App Feedback')}&body=${Uri.encodeComponent(body)}',
    );

    await launchUrl(emailLaunchUri);
  }
}
