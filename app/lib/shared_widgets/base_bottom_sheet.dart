import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({
    super.key,
    required this.child,
    this.padding,
    this.headerTitle,
    this.headerAction,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Widget? headerTitle;
  final Widget? headerAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: globalRadius,
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            padding: padding ?? globalSheetPadding.add(const EdgeInsets.only(bottom: 20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (headerTitle != null || headerAction != null) ...[
                  Row(
                    children: [
                      if (headerTitle != null) Expanded(child: headerTitle!),
                      if (headerAction != null)
                        TextButtonTheme(
                          data: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: colorScheme.primary,
                              textStyle: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              minimumSize: const Size(0, 40),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          child: headerAction!,
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),
                ],
                child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
