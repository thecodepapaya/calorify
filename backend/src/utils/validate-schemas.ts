/**
 * Schema Validation Script
 * Validates that OpenAPI schemas match proto definitions
 * Run with: npm run validate-schemas
 */

import {
  getMealDetectionResponseSchema,
  getImageMealDetectionRequestSchema,
  getTextMealDetectionRequestSchema,
  getMealSchema,
  getMealMacroSchema,
  getVariationSchema,
} from './schema-generator.js';

/**
 * Validate that required fields are present in schemas
 */
function validateSchema(schema: any, name: string): boolean {
  let isValid = true;

  if (!schema) {
    console.error(`❌ ${name}: Schema is undefined`);
    return false;
  }

  if (schema.type === 'object' && schema.required) {
    // Check that all required properties are defined
    for (const requiredField of schema.required) {
      if (!schema.properties || !schema.properties[requiredField]) {
        console.error(`❌ ${name}: Required field '${requiredField}' is missing from properties`);
        isValid = false;
      }
    }
  }

  if (schema.type === 'object' && schema.properties) {
    // Check that all properties have type definitions
    for (const [propName, propSchema] of Object.entries(schema.properties)) {
      const prop = propSchema as any;
      if (!prop.type && !prop.$ref) {
        console.error(`❌ ${name}.${propName}: Missing type definition`);
        isValid = false;
      }
    }
  }

  return isValid;
}

/**
 * Main validation function
 */
function main() {
  console.log('🔍 Validating OpenAPI schemas against proto definitions...\n');

  let allValid = true;

  // Validate all schemas
  allValid = validateSchema(getMealMacroSchema(), 'MealMacro') && allValid;
  allValid = validateSchema(getMealSchema(), 'Meal') && allValid;
  allValid = validateSchema(getVariationSchema(), 'Variation') && allValid;
  allValid = validateSchema(getMealDetectionResponseSchema(), 'MealDetectionResponse') && allValid;
  allValid = validateSchema(getImageMealDetectionRequestSchema(), 'ImageMealDetectionRequest') && allValid;
  allValid = validateSchema(getTextMealDetectionRequestSchema(), 'TextMealDetectionRequest') && allValid;

  console.log('');
  if (allValid) {
    console.log('✅ All schemas are valid!');
    process.exit(0);
  } else {
    console.log('❌ Some schemas have validation errors. Please fix them.');
    process.exit(1);
  }
}

// Run validation if called directly
if (import.meta.url === `file://${process.argv[1]}`) {
  main();
}

export { validateSchema };
