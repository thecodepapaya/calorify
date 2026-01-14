import 'package:calorify/core/utilities/string_utils.dart';
import 'package:calorify/i18n/strings.g.dart';

class OnboardingUtils {
  static String getBMICategory(double bmi) {
    if (bmi < 18.5) return t.onboarding.bmiScale.categories.underweight;
    if (bmi < 25) return t.onboarding.bmiScale.categories.healthyWeight;
    if (bmi < 30) return t.onboarding.bmiScale.categories.overweight;
    return t.onboarding.bmiScale.categories.obese;
  }

  static String getBMIMessage(double bmi) {
    if (bmi < 18.5) {
      return t.onboarding.bmiScale.messages.underweight;
    }
    if (bmi < 25) {
      return t.onboarding.bmiScale.messages.healthy;
    }
    if (bmi < 30) {
      return t.onboarding.bmiScale.messages.overweight(
        appLabel: t.appLabelValue,
      );
    }
    return t.onboarding.bmiScale.messages.obese;
  }
}
