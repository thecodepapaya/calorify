import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:uuid/uuid.dart';

Future<IngredientProposalV2?> showLocalProposalReviewSheet({
  required BuildContext context,
  required IngredientProposalV2 proposal,
}) {
  return showModalBottomSheet<IngredientProposalV2>(
    context: context,
    useRootNavigator: true,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (_) => _LocalProposalReviewSheet(proposal: proposal),
  );
}

class _LocalProposalReviewSheet extends StatefulWidget {
  const _LocalProposalReviewSheet({required this.proposal});

  final IngredientProposalV2 proposal;

  @override
  State<_LocalProposalReviewSheet> createState() =>
      _LocalProposalReviewSheetState();
}

class _LocalProposalReviewSheetState extends State<_LocalProposalReviewSheet> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _mealNameController;
  late final List<_EditableIngredient> _ingredients;
  late MealType _mealType;

  @override
  void initState() {
    super.initState();
    _mealNameController = TextEditingController(text: widget.proposal.mealName);
    _mealType = widget.proposal.inferredMealType;
    _ingredients =
        widget.proposal.items.map(_EditableIngredient.fromProposal).toList();
  }

  @override
  void dispose() {
    _mealNameController.dispose();
    for (final ingredient in _ingredients) {
      ingredient.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: BaseBottomSheet(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      LucideIcons.smartphone,
                      color: theme.colorScheme.primary,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        t.meal.localInference.reviewTitle,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  t.meal.localInference.reviewSubtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 18),
                TextFormField(
                  controller: _mealNameController,
                  maxLength: 160,
                  decoration: InputDecoration(
                    labelText: t.meal.localInference.mealName,
                    border: const OutlineInputBorder(),
                    counterText: '',
                  ),
                  validator:
                      (value) =>
                          value == null || value.trim().isEmpty ? '' : null,
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<MealType>(
                  initialValue: _mealType,
                  decoration: InputDecoration(
                    labelText: t.meal.mealType,
                    border: const OutlineInputBorder(),
                  ),
                  items:
                      MealType.values
                          .map(
                            (type) => DropdownMenuItem(
                              value: type,
                              child: Text(_mealTypeLabel(type)),
                            ),
                          )
                          .toList(),
                  onChanged:
                      (value) => setState(() => _mealType = value ?? _mealType),
                ),
                const SizedBox(height: 16),
                ...List.generate(
                  _ingredients.length,
                  (index) => _ingredientCard(index),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton.icon(
                    onPressed: _addIngredient,
                    icon: const Icon(LucideIcons.plus, size: 18),
                    label: Text(t.meal.addMeal),
                  ),
                ),
                const SizedBox(height: 12),
                AppButton(
                  variant: AppButtonVariant.primary,
                  onPressed: _submit,
                  text: t.meal.localInference.continueLabel,
                  leadingIcon: LucideIcons.arrowRight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _ingredientCard(int index) {
    final theme = Theme.of(context);
    final ingredient = _ingredients[index];
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 4, 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  TextFormField(
                    controller: ingredient.nameController,
                    maxLength: 160,
                    decoration: InputDecoration(
                      labelText: t.meal.localInference.ingredient,
                      border: const OutlineInputBorder(),
                      counterText: '',
                    ),
                    validator:
                        (value) =>
                            value == null || value.trim().isEmpty ? '' : null,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: ingredient.gramsController,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r'^\d{0,4}(\.\d{0,1})?$'),
                      ),
                    ],
                    decoration: InputDecoration(
                      labelText: t.meal.localInference.grams,
                      suffixText: 'g',
                      border: const OutlineInputBorder(),
                    ),
                    validator: (value) {
                      final grams = double.tryParse(value ?? '');
                      return grams == null || grams <= 0 || grams > 5000
                          ? ''
                          : null;
                    },
                  ),
                ],
              ),
            ),
            IconButton(
              tooltip: t.meal.localInference.removeIngredient,
              onPressed:
                  _ingredients.length <= 1
                      ? null
                      : () {
                        final removed = _ingredients.removeAt(index);
                        removed.dispose();
                        setState(() {});
                      },
              icon: Icon(
                LucideIcons.trash2,
                size: 19,
                color: theme.colorScheme.error,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _addIngredient() {
    if (_ingredients.length >= 20) return;
    setState(() {
      _ingredients.add(_EditableIngredient.newManual());
    });
  }

  void _submit() {
    if (!_formKey.currentState!.validate() || _ingredients.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.meal.localInference.invalidProposal)),
      );
      return;
    }
    final proposal =
        widget.proposal.deepCopy()
          ..mealName = _mealNameController.text.trim()
          ..inferredMealType = _mealType
          ..mealTypeConfident = _mealType != MealType.UNKNOWN;
    proposal.items.clear();
    proposal.items.addAll(
      _ingredients.map((ingredient) => ingredient.toProposal()),
    );
    Navigator.of(context).pop(proposal);
  }
}

class _EditableIngredient {
  _EditableIngredient({
    required this.source,
    required String name,
    required double grams,
  }) : nameController = TextEditingController(text: name),
       gramsController = TextEditingController(text: _formatGrams(grams));

  factory _EditableIngredient.fromProposal(IngredientProposalItemV2 source) {
    return _EditableIngredient(
      source: source.deepCopy(),
      name:
          source.rawName.trim().isNotEmpty
              ? source.rawName
              : source.usdaLookup.proposedCanonicalName,
      grams: source.portion.gramsEstimated,
    );
  }

  factory _EditableIngredient.newManual() {
    return _EditableIngredient(
      source: IngredientProposalItemV2(
        rowId: const Uuid().v4(),
        rawName: 'Ingredient',
        isFoodReason: 'Added by the user',
        isFoodConfidence: 1,
        usdaLookup: UsdaLookupProposalV2(proposedCanonicalName: 'ingredient'),
        portion: PortionProposalV2(
          kind: PortionKind.BULK,
          gramsEstimated: 100,
          minGrams: 80,
          maxGrams: 120,
          sizeSpecifiedByUser: true,
        ),
      ),
      name: '',
      grams: 100,
    );
  }

  final IngredientProposalItemV2 source;
  final TextEditingController nameController;
  final TextEditingController gramsController;

  IngredientProposalItemV2 toProposal() {
    final name = nameController.text.trim();
    final grams = double.parse(gramsController.text);
    final identityChanged = name != source.rawName.trim();
    final portionChanged = grams != source.portion.gramsEstimated;
    final result = source.deepCopy()..rawName = name;

    if (identityChanged) {
      result.usdaLookup.proposedCanonicalName = name.toLowerCase();
    }
    if (portionChanged) {
      result
        ..portion.gramsEstimated = grams
        ..portion.minGrams = grams * 0.8
        ..portion.maxGrams = grams * 1.2
        ..portion.sizeSpecifiedByUser = true;
      if (result.portion.kind == PortionKind.COUNT &&
          result.portion.hasCount() &&
          result.portion.count > 0) {
        result
          ..portion.perUnitGrams = grams / result.portion.count
          ..portion.perUnitMinGrams =
              result.portion.minGrams / result.portion.count
          ..portion.perUnitMaxGrams =
              result.portion.maxGrams / result.portion.count;
      }
    }
    return result;
  }

  void dispose() {
    nameController.dispose();
    gramsController.dispose();
  }
}

String _formatGrams(double grams) {
  return grams == grams.roundToDouble()
      ? grams.toStringAsFixed(0)
      : grams.toStringAsFixed(1);
}

String _mealTypeLabel(MealType type) {
  return switch (type) {
    MealType.BREAKFAST => t.reminders.breakfast,
    MealType.LUNCH => t.reminders.lunch,
    MealType.DINNER => t.reminders.dinner,
    MealType.SNACK => t.reminders.snack,
    _ => t.reminders.unknown,
  };
}
