import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

enum HomeScreenMenuItem { profile, settings }

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
        }
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<HomeScreenMenuItem>(
            value: HomeScreenMenuItem.profile,
            child: ListTile(
              leading: Icon(AppIcons.user),
              title: Text(t.profile.title),
            ),
          ),
          PopupMenuItem<HomeScreenMenuItem>(
            value: HomeScreenMenuItem.settings,
            child: ListTile(
              leading: Icon(AppIcons.settings),
              title: Text(t.settings.title),
            ),
          ),
        ];
      },
    );
  }
}
