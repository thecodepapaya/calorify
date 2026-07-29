export type DishTemplateComponent = {
  rawName: string;
  canonicalHint: string;
  gramsEstimated: number;
  minGrams: number;
  maxGrams: number;
  notes: string;
};

type DishTemplate = {
  id: string;
  dishPattern: RegExp;
  requiredComponents: Array<{
    presentPattern: RegExp;
    component: DishTemplateComponent;
  }>;
};

// Templates are intentionally few and structural. They describe defining
// components of named dishes observed in eval/production failures; spelling
// and regional-name equivalence belong in the food-concept layer.
const DISH_TEMPLATES: DishTemplate[] = [
  {
    id: 'masala_dosa',
    dishPattern: /\bmasala dosa\b/i,
    requiredComponents: [{
      presentPattern: /\b(?:potato(?:es)?|aloo)\b/i,
      component: {
        rawName: 'masala dosa potato filling',
        canonicalHint: 'potato boiled',
        gramsEstimated: 60,
        minGrams: 40,
        maxGrams: 80,
        notes: 'Defining filling inferred from explicitly named masala dosa',
      },
    }],
  },
];

export function missingDishTemplateComponents(
  sourceText: string,
  ingredientCorpus: string
): DishTemplateComponent[] {
  const additions: DishTemplateComponent[] = [];
  for (const template of DISH_TEMPLATES) {
    if (!template.dishPattern.test(sourceText)) continue;
    for (const requirement of template.requiredComponents) {
      if (!requirement.presentPattern.test(ingredientCorpus)) additions.push(requirement.component);
    }
  }
  return additions;
}
