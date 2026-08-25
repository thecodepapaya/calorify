package dev.thecodepapaya.calorify

import com.google.mlkit.genai.schema.annotations.Generable
import com.google.mlkit.genai.schema.annotations.Guide

@Generable("V2 food or no-food decomposition generated from the supplied input and local context")
data class LocalMealProposalOutput(
    @param:Guide(description = "Workflow result: FOOD when at least one item belongs to the meal, otherwise NO_FOOD", enumValues = ["FOOD", "NO_FOOD"])
    val outcome: String,
    @param:Guide(description = "Concise input-grounded evidence for the overall food or no-food outcome")
    val outcomeReason: String,
    @param:Guide(description = "Confidence in the overall outcome from 0 through 1, produced after outcomeReason", minimum = 0.0, maximum = 1.0)
    val outcomeConfidence: Double,
    @param:Guide(description = "Localized short name for the whole meal, or null for NO_FOOD")
    val mealName: String?,
    @param:Guide(description = "Relevant candidate items that make up or may belong to the primary meal", maxItems = 20)
    val items: List<LocalMealItemOutput>,
    @param:Guide(description = "Meal occasion inferred from the meal and supplied user-local context", enumValues = ["UNKNOWN", "BREAKFAST", "LUNCH", "DINNER", "SNACK"])
    val inferredMealType: String,
    @param:Guide(description = "Concise evidence for the inferred meal occasion, produced before mealTypeConfident")
    val mealTypeReason: String,
    @param:Guide(description = "Whether the meal occasion is sufficiently supported; false with UNKNOWN for NO_FOOD")
    val mealTypeConfident: Boolean,
)

@Generable("One candidate explicitly classified for membership in the primary meal")
data class LocalMealItemOutput(
    @param:Guide(description = "Short localized and regionally familiar item name displayed to the user")
    val rawName: String,
    @param:Guide(description = "Whether this candidate belongs to the primary food or meal being analyzed")
    val isFood: Boolean,
    @param:Guide(description = "Concise input-grounded evidence for isFood")
    val isFoodReason: String,
    @param:Guide(description = "Confidence in isFood from 0 through 1, produced after isFoodReason", minimum = 0.0, maximum = 1.0)
    val isFoodConfidence: Double,
    @param:Guide(description = "Database lookup proposal for a food item, or null for a non-food item")
    val usdaLookup: LocalUsdaLookupOutput?,
    @param:Guide(description = "Estimated total consumed portion for a food item, or null for a non-food item")
    val portion: LocalPortionOutput?,
)

@Generable("Ordered database lookup identities and separate preparation states")
data class LocalUsdaLookupOutput(
    @param:Guide(description = "Short generic English food identity optimized for database retrieval")
    val proposedCanonicalName: String,
    @param:Guide(description = "Ordered unique alternative lookup identities for the same food", maxItems = 5)
    val aliases: List<String>,
    @param:Guide(description = "Unique atomic nutrition-relevant preparation states; empty when unknown", maxItems = 5)
    val preparationStates: List<String>,
)

@Generable("Estimated total consumed portion for one food item")
data class LocalPortionOutput(
    @param:Guide(description = "COUNT for discrete pieces, BULK for continuous food, or PINCH for a trace amount", enumValues = ["COUNT", "BULK", "PINCH"])
    val kind: String,
    @param:Guide(description = "Best estimate of total consumed grams", minimum = 0.001, maximum = 5000.0)
    val gramsEstimated: Double,
    @param:Guide(description = "Plausible minimum total grams", minimum = 0.0, maximum = 5000.0)
    val minGrams: Double,
    @param:Guide(description = "Plausible maximum total grams", minimum = 0.0, maximum = 5000.0)
    val maxGrams: Double,
    @param:Guide(description = "Number of pieces for COUNT, or null when absent")
    val count: Double?,
    @param:Guide(description = "Best grams per piece for COUNT, or null for BULK and PINCH", minimum = 0.001, maximum = 5000.0)
    val perUnitGrams: Double?,
    @param:Guide(description = "Lower-bound grams per piece for COUNT, or null for BULK and PINCH", minimum = 0.001, maximum = 5000.0)
    val perUnitMinGrams: Double?,
    @param:Guide(description = "Upper-bound grams per piece for COUNT, or null for BULK and PINCH", minimum = 0.001, maximum = 5000.0)
    val perUnitMaxGrams: Double?,
    @param:Guide(description = "Whether the user explicitly supplied the portion size")
    val sizeSpecifiedByUser: Boolean,
)
