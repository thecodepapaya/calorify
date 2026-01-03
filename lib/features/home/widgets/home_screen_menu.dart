import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

enum HomeScreenMenuItem { profile, settings, debug }

class HomeScreenMenu extends StatelessWidget {
  const HomeScreenMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<HomeScreenMenuItem>(
      onSelected: (value) {
        if (value == HomeScreenMenuItem.profile) {
          context.router.push(const ProfileRoute());
        } else if (value == HomeScreenMenuItem.settings) {
          context.router.push(const SettingsRoute());
        } else if (value == HomeScreenMenuItem.debug) {
          context.router.push(const DebugOptionsRoute());
        }
      },
      itemBuilder: (BuildContext context) {
        final menuItems = <PopupMenuEntry<HomeScreenMenuItem>>[
          PopupMenuItem<HomeScreenMenuItem>(
            value: HomeScreenMenuItem.profile,
            child: ListTile(
              leading: Icon(LucideIcons.user),
              title: Text(t.profile.title),
            ),
          ),
          PopupMenuItem<HomeScreenMenuItem>(
            value: HomeScreenMenuItem.settings,
            child: ListTile(
              leading: Icon(LucideIcons.settings),
              title: Text(t.settings.title),
            ),
          ),
        ];

        if (kDebugMode || EnvConfig.instance.isStaging) {
          menuItems.add(
            PopupMenuItem<HomeScreenMenuItem>(
              value: HomeScreenMenuItem.debug,
              child: ListTile(
                leading: Icon(LucideIcons.bug),
                title: Text(t.settings.debugOptions.title),
              ),
            ),
          );
        }

        return menuItems;
      },
    );
  }
}
