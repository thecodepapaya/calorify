import 'dart:async';

import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class LanguagePickerSheet extends StatefulWidget {
  const LanguagePickerSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useSafeArea: true,
      builder: (context) => const LanguagePickerSheet(),
    );
  }

  @override
  State<LanguagePickerSheet> createState() => _LanguagePickerSheetState();
}

class _LanguagePickerSheetState extends State<LanguagePickerSheet> {
  final TextEditingController _searchController = TextEditingController();
  List<AppLocale> _filteredLocales = AppLocale.values;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterLocales);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterLocales() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredLocales = AppLocale.values;
      } else {
        _filteredLocales =
            AppLocale.values.where((locale) {
              final languageName = locale.translations.language.toLowerCase();
              final languageCode = locale.languageCode.toLowerCase();
              return languageName.contains(query) ||
                  languageCode.contains(query);
            }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final currentLocale = TranslationProvider.of(context).locale;

    return BaseBottomSheet(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildHeader(theme, colorScheme),
          const SizedBox(height: 24),
          _buildSearchBar(colorScheme),
          const SizedBox(height: 16),
          _buildLanguageList(context, theme, colorScheme, currentLocale),
        ],
      ),
    );
  }

  Widget _buildHeader(ThemeData theme, ColorScheme colorScheme) {
    return Column(
      children: [
        Text(
          t.settings.language.title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          t.settings.language.subtitle,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildSearchBar(ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: t.settings.language.searchHint,
          prefixIcon: const Icon(LucideIcons.search),
          suffixIcon:
              _searchController.text.isNotEmpty
                  ? IconButton(
                    icon: const Icon(LucideIcons.x),
                    onPressed: () {
                      _searchController.clear();
                    },
                  )
                  : null,
          filled: true,
          fillColor: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageList(
    BuildContext context,
    ThemeData theme,
    ColorScheme colorScheme,
    AppLocale currentLocale,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        child:
            _filteredLocales.isEmpty
                ? _buildEmptyState(theme, colorScheme)
                : ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: _filteredLocales.length,
                  separatorBuilder:
                      (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final locale = _filteredLocales[index];
                    return _buildLanguageTile(
                      context,
                      locale,
                      currentLocale == locale,
                      theme,
                      colorScheme,
                    );
                  },
                ),
      ),
    );
  }

  Widget _buildEmptyState(ThemeData theme, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        t.settings.language.noResults,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }

  Widget _buildLanguageTile(
    BuildContext context,
    AppLocale locale,
    bool isSelected,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return Material(
      key: ValueKey(locale.languageCode),
      color: colorScheme.surface.withValues(alpha: 0),
      child: InkWell(
        onTap: () async {
          unawaited(HapticFeedback.lightImpact());
          await LocaleSettings.setLocale(locale);

          // Save language preference to database
          final db = DatabaseService.databaseInterface;
          await db.setLanguageCode(locale.languageCode);

          // Reinitialize FoodAnalysisService with new locale
          try {
            await FoodAnalysisService.instance.reinitialize();
          } catch (e) {
            // Service might not be initialized yet, ignore error
          }

          if (context.mounted) Navigator.pop(context);
        },
        borderRadius: BorderRadius.circular(20),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color:
                isSelected
                    ? colorScheme.primaryContainer.withValues(alpha: 0.5)
                    : colorScheme.surfaceContainerHighest.withValues(
                      alpha: 0.2,
                    ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color:
                  isSelected
                      ? colorScheme.primary
                      : colorScheme.surface.withValues(alpha: 0),
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              _buildFlagIcon(locale, isSelected, colorScheme),
              const SizedBox(width: 16),
              _buildLanguageName(locale, isSelected, theme, colorScheme),
              if (isSelected) _buildCheckIcon(colorScheme),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFlagIcon(
    AppLocale locale,
    bool isSelected,
    ColorScheme colorScheme,
  ) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        shape: BoxShape.circle,
        boxShadow: [
          if (isSelected)
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.1),
              blurRadius: 8,
              spreadRadius: 2,
            ),
        ],
      ),
      child: Text(
        locale.translations.flag,
        style: const TextStyle(fontSize: 22),
      ),
    );
  }

  Widget _buildLanguageName(
    AppLocale locale,
    bool isSelected,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return Expanded(
      child: Text(
        locale.translations.language,
        style: theme.textTheme.titleMedium?.copyWith(
          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          color: isSelected ? colorScheme.primary : colorScheme.onSurface,
        ),
      ),
    );
  }

  Widget _buildCheckIcon(ColorScheme colorScheme) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: colorScheme.primary,
        shape: BoxShape.circle,
      ),
      child: Icon(LucideIcons.check, color: colorScheme.onPrimary, size: 14),
    );
  }
}
