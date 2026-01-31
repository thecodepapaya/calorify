# API Schema Synchronization Guide

> **Quick Start**: Run `npm run validate-schemas` to validate schemas match proto definitions.

## Problem

API response schemas can become outdated when proto definitions change, leading to incorrect documentation and client integration issues.

## Solution

Centralized schema generator (`src/utils/schema-generator.ts`) generates OpenAPI schemas from proto TypeScript types, ensuring consistency and providing a single source of truth.

## Schema Functions

- `getMealDetectionResponseSchema()` - Main response
- `getMealDetectionResultSchema()` - Result object
- `getMealSchema()` - Meal object
- `getVariationSchema()` - Variations (Variation message type)
- `getImageMealDetectionRequestSchema()` - Image request
- `getTextMealDetectionRequestSchema()` - Text request
- `getStandardErrorResponses()` - Error responses

## Usage

```typescript
import {
  getMealDetectionResponseSchema,
  getStandardErrorResponses,
} from '../../utils/schema-generator.js';

response: {
  200: { ...getMealDetectionResponseSchema() },
  ...getStandardErrorResponses(),
}
```

## Workflow When Protos Change

1. Regenerate types: `cd ../scripts && ./generate_protos.sh`
2. Update `src/utils/schema-generator.ts` to match new types
3. Validate: `npm run validate-schemas`
4. Routes automatically use updated schemas

## Validation

```bash
npm run validate-schemas
```

Checks: required fields, property types, schema structure.

## Example: Adding a Field

1. Add field to proto → Regenerate types
2. Update schema generator function:
   ```typescript
   properties: {
     name: { type: 'string' },
     newField: { type: 'string' },  // ADDED
   }
   ```
3. Validate: `npm run validate-schemas`
4. Routes automatically include new field

## Best Practices

- Always use schema generator functions (don't manually define schemas)
- Update schemas when protos change
- Run validation before committing
- Document all enum values

## Troubleshooting

**Schema doesn't match**: Verify generator matches proto, check enum values  
**Validation fails**: Check required fields have properties, verify types  
**Wrong documentation**: Clear Swagger cache, restart server, verify imports
