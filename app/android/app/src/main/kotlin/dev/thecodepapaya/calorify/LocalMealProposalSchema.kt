package dev.thecodepapaya.calorify

import com.google.mlkit.genai.schema.annotations.Generable
import com.google.mlkit.genai.schema.annotations.Guide

@Generable("A meal decomposed into editable ingredients and portion estimates")
data class LocalMealProposalOutput(
    @param:Guide(description = "A short name for the whole meal")
    val mealName: String,
    @param:Guide(
        description = "Likely meal type",
        enumValues = ["UNKNOWN", "BREAKFAST", "LUNCH", "DINNER", "SNACK"],
    )
    val inferredMealType: String,
    @param:Guide(description = "Whether the meal type is strongly supported by the input")
    val mealTypeConfident: Boolean,
    @param:Guide(description = "Overall interpretation confidence from 0 to 1", minimum = 0.0, maximum = 1.0)
    val confidence: Double,
    @param:Guide(description = "Atomic ingredients in the meal", minItems = 1, maxItems = 20)
    val ingredients: List<LocalMealIngredientOutput>,
)

@Generable("One editable ingredient with a bounded portion estimate; never nutrition values")
data class LocalMealIngredientOutput(
    @param:Guide(description = "Ingredient as described or visibly identified")
    val rawName: String,
    @param:Guide(description = "Concise generic food name suitable for USDA matching")
    val canonicalHint: String,
    @param:Guide(description = "Preparation state such as raw, cooked, fried, or baked; empty if unknown")
    val preparation: String,
    @param:Guide(description = "Best total gram estimate", minimum = 1.0, maximum = 5000.0)
    val gramsEstimated: Double,
    @param:Guide(description = "Plausible minimum total grams", minimum = 1.0, maximum = 5000.0)
    val minGrams: Double,
    @param:Guide(description = "Plausible maximum total grams", minimum = 1.0, maximum = 5000.0)
    val maxGrams: Double,
    @param:Guide(
        description = "COUNT for discrete pieces, BULK for bowls or loose food, PINCH for trace garnish",
        enumValues = ["COUNT", "BULK", "PINCH"],
    )
    val portionKind: String,
    @param:Guide(description = "Number of discrete items, or 0 when not a count", minimum = 0.0, maximum = 20.0)
    val count: Double,
    @param:Guide(description = "Estimated grams per item, or 0 when not a count", minimum = 0.0, maximum = 2000.0)
    val perUnitGrams: Double,
    @param:Guide(description = "Minimum grams per item, or 0 when not a count", minimum = 0.0, maximum = 2000.0)
    val perUnitMinGrams: Double,
    @param:Guide(description = "Maximum grams per item, or 0 when not a count", minimum = 0.0, maximum = 2000.0)
    val perUnitMaxGrams: Double,
    @param:Guide(description = "True only when the user explicitly supplied a size")
    val sizeSpecifiedByUser: Boolean,
    @param:Guide(description = "Short non-nutrition note; empty when unnecessary")
    val notes: String,
    @param:Guide(description = "Ingredient identity and portion confidence from 0 to 1", minimum = 0.0, maximum = 1.0)
    val confidence: Double,
)
