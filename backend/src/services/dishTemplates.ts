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
  componentBounds?: Array<{ presentPattern: RegExp; minGrams: number; maxGrams: number }>;
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
  {
    id: 'pepperoni_pizza_slice',
    dishPattern: /\b(?:slice of )?pepperoni pizza\b/i,
    requiredComponents: [{
      presentPattern: /\b(?:crust|dough|pizza slice)\b/i,
      component: {
        rawName: 'pepperoni pizza crust',
        canonicalHint: 'pizza crust',
        gramsEstimated: 100,
        minGrams: 80,
        maxGrams: 110,
        notes: 'Defining base inferred from explicitly named pizza slice',
      },
    }],
    componentBounds: [
      { presentPattern: /\b(?:crust|dough)\b/i, minGrams: 80, maxGrams: 110 },
      { presentPattern: /\b(?:cheese|mozzarella)\b/i, minGrams: 15, maxGrams: 45 },
      { presentPattern: /\bpepperoni\b/i, minGrams: 10, maxGrams: 30 },
      { presentPattern: /\b(?:pizza|tomato) sauce\b/i, minGrams: 10, maxGrams: 30 },
    ],
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

export function dishTemplateGramBounds(
  sourceText: string,
  ingredientCorpus: string
): { minGrams: number; maxGrams: number } | undefined {
  for (const template of DISH_TEMPLATES) {
    if (!template.dishPattern.test(sourceText)) continue;
    for (const bound of template.componentBounds ?? []) {
      if (bound.presentPattern.test(ingredientCorpus)) return bound;
    }
  }
  return undefined;
}
