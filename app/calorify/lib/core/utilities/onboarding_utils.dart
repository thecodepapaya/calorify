import 'package:calorify/core/config/env_config.dart';
import 'package:i18n/i18n.dart';

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
        appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
      );
    }
    return t.onboarding.bmiScale.messages.obese;
  }
}
