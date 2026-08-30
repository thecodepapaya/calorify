import 'package:calorify/features/home/widgets/bottom_sheet/meal_question_flow_widgets.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

Future<MealAnalysisV3AnswerBundle?> showMealAnalysisV3QuestionSheet({
  required BuildContext context,
  required MealAnalysisV3QuestionBundle bundle,
}) {
  return showModalBottomSheet<MealAnalysisV3AnswerBundle>(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    builder: (_) => MealAnalysisV3QuestionSheet(bundle: bundle),
  );
}

class MealAnalysisV3QuestionSheet extends StatefulWidget {
  const MealAnalysisV3QuestionSheet({super.key, required this.bundle});

  final MealAnalysisV3QuestionBundle bundle;

  @override
  State<MealAnalysisV3QuestionSheet> createState() =>
      _MealAnalysisV3QuestionSheetState();
}

class _MealAnalysisV3QuestionSheetState
    extends State<MealAnalysisV3QuestionSheet> {
  int _currentIndex = 0;
  final Map<String, MealAnalysisV3Answer> _answers = {};
  final Map<String, TextEditingController> _numberControllers = {};

  List<MealAnalysisV3PendingQuestion> get _questions => widget.bundle.questions;

  @override
  void dispose() {
    for (final controller in _numberControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _selectOption(String questionId, String optionId) {
    setState(() {
      _answers[questionId] = MealAnalysisV3OptionAnswer(
        questionId: questionId,
        optionId: optionId,
      );
    });
  }

  void _useEstimate(String questionId) {
    setState(() {
      _answers[questionId] = MealAnalysisV3EstimateAnswer(
        questionId: questionId,
      );
      _numberControllers[questionId]?.clear();
    });
  }

  void _updateNumber(
    MealAnalysisV3PendingQuestion question,
    MealAnalysisV3NumberResponse response,
    String raw,
  ) {
    final value = double.tryParse(raw.trim().replaceAll(',', '.'));
    setState(() {
      if (value == null || !response.accepts(value)) {
        _answers.remove(question.questionId);
      } else {
        _answers[question.questionId] = MealAnalysisV3NumberAnswer(
          questionId: question.questionId,
          value: value,
        );
      }
    });
  }

  void _back() {
    if (_currentIndex == 0) return;
    setState(() => _currentIndex--);
  }

  void _continue() {
    final question = _questions[_currentIndex];
    if (!_answers.containsKey(question.questionId)) return;
    if (_currentIndex < _questions.length - 1) {
      setState(() => _currentIndex++);
      return;
    }
    final orderedAnswers = _questions
        .map((item) => _answers[item.questionId])
        .whereType<MealAnalysisV3Answer>()
        .toList(growable: false);
    if (orderedAnswers.length != _questions.length) return;
    Navigator.of(context).pop(
      MealAnalysisV3AnswerBundle(
        bundleRevision: widget.bundle.bundleRevision,
        answers: orderedAnswers,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) {
      return BaseBottomSheet(
        child: Text(t.meal.questionFlow.noQuestionsAvailable),
      );
    }
    final question = _questions[_currentIndex];
    final answer = _answers[question.questionId];
    return BaseBottomSheet(
      child: SafeArea(
        top: false,
        child: AnimatedSize(
          duration: const Duration(milliseconds: 180),
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MealQuestionFlowProgressRow(
                current: _currentIndex + 1,
                total: _questions.length,
                onBack: _currentIndex > 0 ? _back : null,
              ),
              const SizedBox(height: mealQuestionFlowProgressToHeadingGap),
              MealQuestionHeadingRow(question: question.prompt),
              const SizedBox(height: mealQuestionFlowHeadingToOptionsGap),
              _QuestionResponse(
                key: ValueKey(question.questionId),
                question: question,
                answer: answer,
                numberController: _numberControllers.putIfAbsent(
                  question.questionId,
                  TextEditingController.new,
                ),
                onOptionSelected:
                    (optionId) => _selectOption(question.questionId, optionId),
                onNumberChanged:
                    (response, raw) => _updateNumber(question, response, raw),
                onUseEstimate:
                    question.allowUseEstimate
                        ? () => _useEstimate(question.questionId)
                        : null,
              ),
              const SizedBox(height: mealQuestionFlowOptionsTrailingGap),
              AppButton(
                key: const ValueKey('v3-question-continue'),
                variant: AppButtonVariant.primary,
                onPressed: answer == null ? null : _continue,
                text:
                    _currentIndex == _questions.length - 1
                        ? t.meal.questionFlow.continueLabel
                        : t.meal.questionFlow.next,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuestionResponse extends StatelessWidget {
  const _QuestionResponse({
    super.key,
    required this.question,
    required this.answer,
    required this.numberController,
    required this.onOptionSelected,
    required this.onNumberChanged,
    this.onUseEstimate,
  });

  final MealAnalysisV3PendingQuestion question;
  final MealAnalysisV3Answer? answer;
  final TextEditingController numberController;
  final ValueChanged<String> onOptionSelected;
  final void Function(MealAnalysisV3NumberResponse, String) onNumberChanged;
  final VoidCallback? onUseEstimate;

  @override
  Widget build(BuildContext context) {
    final response = question.response;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        switch (response) {
          MealAnalysisV3OptionResponse() => _OptionResponse(
            response: response,
            selectedOptionId:
                answer is MealAnalysisV3OptionAnswer
                    ? (answer as MealAnalysisV3OptionAnswer).optionId
                    : null,
            onSelected: onOptionSelected,
          ),
          MealAnalysisV3NumberResponse() => _NumberResponse(
            response: response,
            controller: numberController,
            isValid: answer is MealAnalysisV3NumberAnswer,
            onChanged: (raw) => onNumberChanged(response, raw),
          ),
        },
        if (onUseEstimate != null) ...[
          const SizedBox(height: 12),
          OutlinedButton.icon(
            key: const ValueKey('v3-use-estimate'),
            onPressed: onUseEstimate,
            icon: Icon(
              answer is MealAnalysisV3EstimateAnswer
                  ? LucideIcons.circleCheck
                  : LucideIcons.sparkles,
              size: 18,
            ),
            label: Text(t.meal.questionFlow.useEstimate),
          ),
        ],
      ],
    );
  }
}

class _OptionResponse extends StatelessWidget {
  const _OptionResponse({
    required this.response,
    required this.selectedOptionId,
    required this.onSelected,
  });

  final MealAnalysisV3OptionResponse response;
  final String? selectedOptionId;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: response.options
          .map(
            (option) => ChoiceChip(
              key: ValueKey('v3-option-${option.optionId}'),
              label: Text(option.label),
              selected: selectedOptionId == option.optionId,
              onSelected: (_) => onSelected(option.optionId),
            ),
          )
          .toList(growable: false),
    );
  }
}

class _NumberResponse extends StatelessWidget {
  const _NumberResponse({
    required this.response,
    required this.controller,
    required this.isValid,
    required this.onChanged,
  });

  final MealAnalysisV3NumberResponse response;
  final TextEditingController controller;
  final bool isValid;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextField(
      key: const ValueKey('v3-number-input'),
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[-0-9.,]'))],
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: _unitLabel(response.unitCode),
        helperText: t.meal.questionFlow.numberRange(
          min: _formatNumber(response.min),
          max: _formatNumber(response.max),
          step: _formatNumber(response.step),
        ),
        errorText:
            controller.text.isNotEmpty && !isValid
                ? t.meal.questionFlow.invalidNumber
                : null,
        border: const OutlineInputBorder(),
      ),
      style: theme.textTheme.titleMedium,
    );
  }

  String _unitLabel(String unitCode) =>
      unitCode.toLowerCase().replaceAll('_', ' ');

  String _formatNumber(double value) =>
      value == value.roundToDouble() ? value.toInt().toString() : '$value';
}
