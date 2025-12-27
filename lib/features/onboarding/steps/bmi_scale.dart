import 'package:flutter/material.dart';

class BMIScale extends StatelessWidget {
  final double bmi;

  const BMIScale({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // BMI ranges: < 18.5 (Under), 18.5-25 (Healthy), 25-30 (Over), > 30 (Obese)
    // Scale will range from 15 to 35 for visualization
    final double normalizedBmi = bmi.clamp(15.0, 35.0);
    final double percent = (normalizedBmi - 15) / (35 - 15);

    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // The gradient bar
              Container(
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green,
                      Colors.orange,
                      Colors.red,
                    ],
                  ),
                ),
              ),
              // Indicators for ranges
              Row(
                children: [
                  Expanded(flex: (18.5 - 15).toInt(), child: const SizedBox()),
                  _buildDivider(),
                  Expanded(flex: (25 - 18.5).toInt(), child: const SizedBox()),
                  _buildDivider(),
                  Expanded(flex: (30 - 25).toInt(), child: const SizedBox()),
                  _buildDivider(),
                  Expanded(flex: (35 - 30).toInt(), child: const SizedBox()),
                ],
              ),
              // BMI Pointer
              Align(
                alignment: Alignment(lerpDouble(-1, 1, percent)!, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 4,
                      height: 24,
                      decoration: BoxDecoration(
                        color: colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildLabel('15', theme),
            _buildLabel('Underweight', theme, isBold: bmi < 18.5),
            _buildLabel('Healthy', theme, isBold: bmi >= 18.5 && bmi < 25),
            _buildLabel('Overweight', theme, isBold: bmi >= 25 && bmi < 30),
            _buildLabel('35', theme),
          ],
        ),
      ],
    );
  }

  Widget _buildDivider() => Container(width: 1, height: 16, color: Colors.white.withOpacity(0.5));

  Widget _buildLabel(String text, ThemeData theme, {bool isBold = false}) {
    return Text(
      text,
      style: theme.textTheme.labelSmall?.copyWith(
        color: isBold ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        fontSize: isBold ? 10 : 9,
      ),
    );
  }

  double? lerpDouble(num a, num b, double t) => a + (b - a) * t;
}

