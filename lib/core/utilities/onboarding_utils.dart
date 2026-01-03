class OnboardingUtils {
  static String getBMICategory(double bmi) {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25) return 'Healthy weight';
    if (bmi < 30) return 'Overweight';
    return 'Obese';
  }

  static String getBMIMessage(double bmi) {
    if (bmi < 18.5) {
      return 'We can help you build a healthy plan to reach a balanced weight with nutrient-dense meals.';
    }
    if (bmi < 25) {
      return 'Great job! You\'re in a healthy range. We\'ll help you maintain your vitality and energy levels.';
    }
    return 'Calorify will simplify your journey with AI-powered tracking to help you reach your target comfortably.';
  }
}
