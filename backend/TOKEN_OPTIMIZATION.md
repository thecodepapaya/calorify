# Token Optimization Guide for OpenAI Food Analysis

## Overview

This guide outlines strategies and code examples for reducing token usage in OpenAI API calls for food analysis, which can significantly reduce API costs while maintaining functionality.

## Current Token Usage Issues

1. **Verbose System Prompt** (~400+ tokens per request)
   - Long JSON structure explanation
   - Detailed rules that could be condensed
   - Redundant explanations

2. **Redundant User Messages** 
   - In `analyzeTextDescription`, description is repeated twice
   - Unnecessary prompt text

3. **Large Image Payloads**
   - Base64 encoded images can be 100KB+ (hundreds of tokens)
   - No image compression/resizing on backend (client-side compression exists)

4. **High max_tokens**
   - Set to 2000, but responses are typically much smaller

## Optimization Strategies

### 1. Condense System Prompt (Estimated 60-70% reduction)

**Current**: ~400 tokens  
**Optimized**: ~120-150 tokens

**Key changes:**
- Remove verbose JSON structure (model already knows from `response_format: { type: 'json_object' }`)
- Use abbreviated field names in instructions
- Condense rules to essential points
- Remove redundant explanations

#### Current Version (~400 tokens):
```typescript
function getSystemPrompt(locale: string = 'en'): string {
  return `You are an expert food analysis AI. Analyze food from images or descriptions. Be precise with nutrient estimations. Always respond in locale: ${locale}.

Respond ONLY with JSON matching this structure:
{
  "result": {
    "meal_identified": boolean,
    "calorie_confidence": "UNSPECIFIED" | "LOW" | "MEDIUM" | "HIGH",
    "tip": string,
    "meal": {
      "name": string,
      "quantity": string,
      "type": "UNKNOWN" | "BREAKFAST" | "LUNCH" | "DINNER" | "SNACK",
      "macros": {
        "calories": integer,
        "carbs": integer,
        "protein": integer,
        "fat": integer,
        "fiber": integer
      },
      "health": {
        "health_score": "HEALTHY" | "NEUTRAL" | "UNHEALTHY",
        "health_score_reason": string (optional)
      }
    }
  },
  "variations": array of variation objects
}

RULES:
1. calorie_confidence: "LOW" (0-40%), "MEDIUM" (41-70%), "HIGH" (71-100%), "UNSPECIFIED" (cannot determine)
2. variations: Include only when confidence is "LOW" or "MEDIUM"; return [] for "HIGH" or "UNSPECIFIED"
3. meal field: Required if meal_identified=true (include all fields: name, quantity, type, macros with all 5 values). Omit if meal_identified=false. health is optional.
4. variations format: { "question": string, "options": [{"option": string, "macro_diff": {calories, carbs, protein, fat, fiber (all integers)}}] }
5. Generate variations only when needed for accuracy (unclear ingredients, ambiguous portions, uncertain quantities)
6. All numeric values must be integers, not decimals.`;
}
```

#### Optimized Version (~120-150 tokens):
```typescript
function getSystemPrompt(locale: string = 'en'): string {
  return `Food analysis AI. Analyze images/descriptions. Respond in ${locale} JSON only.

JSON: {"result": {"meal_identified": bool, "calorie_confidence": "LOW"|"MEDIUM"|"HIGH"|"UNSPECIFIED", "tip": str, "meal": {"name": str, "quantity": str, "type": "BREAKFAST"|"LUNCH"|"DINNER"|"SNACK"|"UNKNOWN", "macros": {"calories": int, "carbs": int, "protein": int, "fat": int, "fiber": int}, "health": {"health_score": "HEALTHY"|"NEUTRAL"|"UNHEALTHY", "health_score_reason": str?}}}, "variations": [{"question": str, "options": [{"option": str, "macro_diff": {"calories": int, "carbs": int, "protein": int, "fat": int, "fiber": int}}]}]}

Rules: confidence LOW(0-40%)/MEDIUM(41-70%)/HIGH(71-100%). variations only if LOW/MEDIUM. meal required if meal_identified=true. All numbers integers.`;
}
```

**Savings**: ~250-280 tokens per request

### 2. Remove Redundant Text in User Messages

**Current**: Description appears twice in `analyzeTextDescription`  
**Optimized**: Single, concise user message

#### Current (analyzeTextDescription):
```typescript
const prompt = `${systemPrompt}\n\nMeal description: ${description}\n\nEstimate calories and respond in JSON.`;

messages: [
  { role: 'system', content: prompt },
  { role: 'user', content: `Analyze this meal description: ${description}` },
]
```

#### Optimized:
```typescript
messages: [
  { role: 'system', content: getSystemPrompt(locale) },
  { role: 'user', content: description },
]
```

**Savings**: ~30-50 tokens per text request

### 3. Client-Side Image Compression with WebP

**Strategy**: 
- Use WebP format instead of JPEG (25-35% better compression)
- Resize images appropriately on client side
- This can reduce image tokens by 25-35% on top of existing compression

**Note**: Images are already compressed on the client side. The optimization is to use WebP format instead of JPEG.

#### Client-Side Implementation (Flutter):
```dart
// Use WebP format for better compression (25-35% smaller than JPEG)
final compressed = await FlutterImageCompress.compressWithList(
  original,
  quality: quality,
  format: CompressFormat.webp,  // Changed from CompressFormat.jpeg
  minWidth: 512,
  minHeight: 512,
);
```

**Savings**: 25-35% additional reduction in image token count (on top of existing compression)

### 4. Reduce max_tokens

**Current**: 2000  
**Optimized**: 800-1000 (sufficient for most responses)

#### Current:
```typescript
max_tokens: 2000
```

#### Optimized:
```typescript
max_tokens: 800  // Sufficient for most responses, prevents over-generation
```

**Note**: This doesn't reduce input tokens but prevents unnecessary output generation.

### 5. Use Fewer Variations

- Limit variations to max 2-3 per response
- Only include essential variation questions

### 6. Cache System Prompts

- System prompts are identical per locale, could be cached
- Minor savings but good practice

## Implementation Priority

1. **High Impact, Easy**: Condense system prompt (#1) ✅ **IMPLEMENTED**
2. **High Impact, Easy**: Remove redundant text (#2) ✅ **IMPLEMENTED**
3. **High Impact, Easy**: Use WebP format on client (#3) ✅ **IMPLEMENTED**
4. **Medium Impact, Easy**: Reduce max_tokens (#4) ✅ **IMPLEMENTED**
5. **Low Impact, Easy**: Limit variations (#5)
6. **Low Impact, Easy**: Cache system prompts (#6)

## Complete Optimized Method Example

```typescript
async analyzeTextDescription(description: string, locale: string = 'en'): Promise<MealDetectionResponse> {
  try {
    const response = await this.client.chat.completions.create({
      model: 'gpt-4.1-nano',
      messages: [
        {
          role: 'system',
          content: getSystemPrompt(locale),
        },
        {
          role: 'user',
          content: description, // Just the description, no extra text
        },
      ],
      response_format: { type: 'json_object' },
      max_tokens: 800, // Reduced from 2000
    });
    // ... rest of parsing code
  }
}
```

## Expected Token Savings

| Optimization | Tokens Saved | Difficulty | Status |
|-------------|--------------|------------|--------|
| Condense system prompt | ~250-280 per request | Easy | ✅ Implemented |
| Remove redundant text | ~30-50 per text request | Easy | ✅ Implemented |
| WebP image format | 25-35% additional reduction | Easy | ✅ Implemented |
| Reduce max_tokens | N/A (output only) | Easy | ✅ Implemented |

**Total estimated savings**: 
- **30-50% reduction** in input tokens for text requests
- **50-70% reduction** for image requests (including WebP compression on client side)

## Summary

The implemented optimizations provide significant token savings:
- System prompt: ~250-280 tokens saved per request (60-70% reduction)
- User message: ~20-50 tokens saved per text request
- Image compression: 25-35% additional reduction with WebP format
- max_tokens: Prevents over-generation (no input savings, but reduces unnecessary output)

All high-impact, easy optimizations have been implemented. The remaining optimizations (limiting variations, caching prompts) provide minor additional savings and can be implemented as needed.
