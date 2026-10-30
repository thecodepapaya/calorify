/**
 * Calorify Web Demo - Polling API Client & Interactive Simulation
 * 
 * Demonstrates the asynchronous multi-stage meal analysis pipeline:
 * 1. POST /users/meals/analysis -> returns analysis_id
 * 2. GET /users/meals/analysis/{analysis_id} -> polled until PRESENTED or FAILED
 * Stages:
 * - INITIATED (0)
 * - COMPONENT_DECOMPOSED (1)
 * - INGREDIENT_DECOMPOSED (2)
 * - USDA_MACRO_HYDRATED (3)
 * - PRESENTED (6)
 */

(function () {
    'use strict';

    // -------------------------------------------------------------------------
    // High-Fidelity Preset Knowledge Base
    // -------------------------------------------------------------------------
    const PRESETS = {
        daal_roti: {
            title: "Daal Tadka with Whole Wheat Roti",
            prompt: "1 bowl of yellow lentil daal with 2 whole wheat rotis and a teaspoon of ghee",
            mealType: "DINNER",
            components: [
                {
                    name: "Yellow Daal Tadka",
                    canonical: "cooked lentil curry",
                    prep: "SIMMERED",
                    portionHint: "1 medium bowl (~180g)"
                },
                {
                    name: "Phulka / Roti",
                    canonical: "whole wheat flatbread",
                    prep: "TOASTED",
                    portionHint: "2 medium flatbreads (~60g)"
                },
                {
                    name: "Tempered Ghee",
                    canonical: "clarified butter",
                    prep: "TEMPERED",
                    portionHint: "1 tsp (~5g)"
                }
            ],
            ingredients: [
                { name: "Yellow Lentils (Toor / Moong)", canonical: "lentils dry, boiled", prep: "BOILED", grams: 50, min: 45, max: 60 },
                { name: "Whole Wheat Atta Flour", canonical: "whole wheat flour", prep: "TOASTED", grams: 55, min: 45, max: 65 },
                { name: "Clarified Butter (Ghee)", canonical: "ghee / butter oil", prep: "TEMPERED", grams: 6, min: 4, max: 8 },
                { name: "Tomato & Onion Base", canonical: "allium & solanaceae blend", prep: "SAUTEED", grams: 45, min: 35, max: 55 },
                { name: "Cumin, Turmeric & Spices", canonical: "ground spice blend", prep: "RAW", grams: 3, min: 2, max: 4 }
            ],
            usdaMatches: [
                { fdcId: "172428", food: "Lentils, mature seeds, cooked, boiled, without salt", similarity: "96.4%", cals: 116, p: 9.0, c: 20.1, f: 0.4, fb: 7.9 },
                { fdcId: "169747", food: "Wheat flour, whole-grain, soft wheat", similarity: "97.2%", cals: 187, p: 5.8, c: 39.2, f: 1.1, fb: 6.2 },
                { fdcId: "171314", food: "Butter oil, clarified, ghee", similarity: "99.1%", cals: 53, p: 0.0, c: 0.0, f: 6.0, fb: 0.0 },
                { fdcId: "170457", food: "Onions, yellow, sautéed", similarity: "92.8%", cals: 24, p: 0.6, c: 4.8, f: 0.2, fb: 0.9 }
            ],
            final: {
                calories: 380,
                caloriesMin: 340,
                caloriesMax: 410,
                protein: 15.4,
                carbs: 64.1,
                fat: 7.7,
                fiber: 15.0,
                healthScore: "HEALTHY",
                healthReason: "Rich in plant-based legume protein and complex unrefined grains. Exceptionally high in dietary fiber (15g), promoting gut microbiome health and glucose stabilization.",
                tip: "Lentil-wheat pairings provide complementary amino acid profiles (lysine in lentils + methionine in wheat), achieving a complete biological protein score."
            }
        },

        chicken_bowl: {
            title: "Grilled Herb Chicken & Quinoa Bowl",
            prompt: "Grilled chicken breast with 1 cup cooked quinoa, steamed broccoli, and 1 tbsp olive oil",
            mealType: "LUNCH",
            components: [
                {
                    name: "Herb Grilled Chicken Breast",
                    canonical: "skinless chicken breast fillet",
                    prep: "GRILLED",
                    portionHint: "1 palm-sized breast (~160g)"
                },
                {
                    name: "Steamed White Quinoa",
                    canonical: "cooked quinoa grain",
                    prep: "STEAMED",
                    portionHint: "1 measuring cup (~185g)"
                },
                {
                    name: "Tender Broccoli Florets",
                    canonical: "steamed broccoli",
                    prep: "STEAMED",
                    portionHint: "1 cup florets (~90g)"
                },
                {
                    name: "Extra Virgin Olive Oil Dressing",
                    canonical: "unrefined olive oil",
                    prep: "RAW",
                    portionHint: "1 tablespoon (~14g)"
                }
            ],
            ingredients: [
                { name: "Chicken Breast Fillet", canonical: "chicken breast, meat only", prep: "GRILLED", grams: 160, min: 145, max: 175 },
                { name: "Quinoa Seed", canonical: "quinoa, cooked", prep: "STEAMED", grams: 185, min: 170, max: 200 },
                { name: "Fresh Broccoli Florets", canonical: "broccoli, boiled, drained", prep: "STEAMED", grams: 90, min: 80, max: 105 },
                { name: "Extra Virgin Olive Oil", canonical: "olive oil, salad or cooking", prep: "RAW", grams: 14, min: 12, max: 16 }
            ],
            usdaMatches: [
                { fdcId: "171077", food: "Chicken, breast, meat only, cooked, grilled", similarity: "98.1%", cals: 242, p: 49.6, c: 0.0, f: 5.1, fb: 0.0 },
                { fdcId: "168917", food: "Quinoa, cooked", similarity: "97.5%", cals: 222, p: 8.1, c: 39.4, f: 3.6, fb: 5.2 },
                { fdcId: "170379", food: "Broccoli, cooked, boiled, drained, without salt", similarity: "95.0%", cals: 31, p: 2.1, c: 6.0, f: 0.4, fb: 4.6 },
                { fdcId: "171413", food: "Oil, olive, salad or cooking", similarity: "99.4%", cals: 119, p: 0.0, c: 0.0, f: 13.5, fb: 0.0 }
            ],
            final: {
                calories: 614,
                caloriesMin: 570,
                caloriesMax: 650,
                protein: 59.8,
                carbs: 45.4,
                fat: 22.6,
                fiber: 9.8,
                healthScore: "HEALTHY",
                healthReason: "Outstanding high-protein meal grounded in lean poultry and complete pseudograin amino acids. Monounsaturated fats from olive oil enhance absorption of broccoli's fat-soluble carotenoids.",
                tip: "Eating the cruciferous broccoli before the quinoa helps slow gastric emptying and reduces post-prandial glycemic excursions by up to 23%."
            }
        },

        avocado_toast: {
            title: "Artisan Sourdough Avocado Toast & Eggs",
            prompt: "2 slices sourdough toast topped with 1 mashed avocado, 2 poached eggs, and red chili flakes",
            mealType: "BREAKFAST",
            components: [
                {
                    name: "Toasted Sourdough Bread",
                    canonical: "fermented wheat sourdough bread",
                    prep: "TOASTED",
                    portionHint: "2 medium bakery slices (~80g)"
                },
                {
                    name: "Fresh Mashed Hass Avocado",
                    canonical: "fresh avocado pulp",
                    prep: "MASHED",
                    portionHint: "1 whole avocado (~140g)"
                },
                {
                    name: "Poached Free-Range Eggs",
                    canonical: "whole hen egg",
                    prep: "POACHED",
                    portionHint: "2 large eggs (~100g)"
                }
            ],
            ingredients: [
                { name: "Sourdough Bread Slices", canonical: "bread, sourdough", prep: "TOASTED", grams: 80, min: 70, max: 90 },
                { name: "Hass Avocado Pulp", canonical: "avocados, raw, all commercial varieties", prep: "RAW", grams: 140, min: 125, max: 155 },
                { name: "Large Chicken Eggs", canonical: "egg, whole, cooked, poached", prep: "POACHED", grams: 100, min: 95, max: 105 },
                { name: "Crushed Red Pepper & Sea Salt", canonical: "spices, pepper, red or cayenne", prep: "RAW", grams: 2, min: 1, max: 3 }
            ],
            usdaMatches: [
                { fdcId: "172778", food: "Bread, sourdough", similarity: "96.9%", cals: 198, p: 7.2, c: 38.6, f: 1.5, fb: 2.1 },
                { fdcId: "171705", food: "Avocados, raw, all commercial varieties", similarity: "98.7%", cals: 224, p: 2.8, c: 12.0, f: 20.5, fb: 9.4 },
                { fdcId: "172186", food: "Egg, whole, cooked, poached", similarity: "99.0%", cals: 143, p: 12.6, c: 0.7, f: 9.5, fb: 0.0 }
            ],
            final: {
                calories: 565,
                caloriesMin: 520,
                caloriesMax: 605,
                protein: 22.6,
                carbs: 51.3,
                fat: 31.5,
                fiber: 11.5,
                healthScore: "HEALTHY",
                healthReason: "Superb lipid quality featuring heart-healthy oleic monounsaturated fatty acids from fresh avocado and bioavailable choline and lutein from poached egg yolks.",
                tip: "Naturally fermented sourdough contains organic acids that lower the bread's glycemic index compared to standard commercial white sandwich bread."
            }
        },

        salmon_quinoa: {
            title: "Pan-Seared Wild Salmon & Asparagus",
            prompt: "6 oz wild salmon fillet with 1 cup brown rice and grilled green asparagus",
            mealType: "DINNER",
            components: [
                {
                    name: "Wild Alaskan Salmon Fillet",
                    canonical: "wild salmon steak/fillet",
                    prep: "SEARED",
                    portionHint: "6 oz (~170g)"
                },
                {
                    name: "Steamed Brown Jasmine Rice",
                    canonical: "long-grain brown rice",
                    prep: "STEAMED",
                    portionHint: "1 cooked cup (~195g)"
                },
                {
                    name: "Tender Green Asparagus Spears",
                    canonical: "asparagus spears",
                    prep: "GRILLED",
                    portionHint: "8 spears (~120g)"
                }
            ],
            ingredients: [
                { name: "Wild Atlantic/Coho Salmon", canonical: "fish, salmon, Atlantic, wild, cooked", prep: "SEARED", grams: 170, min: 155, max: 185 },
                { name: "Whole Brown Rice", canonical: "rice, brown, long-grain, cooked", prep: "STEAMED", grams: 195, min: 180, max: 210 },
                { name: "Fresh Green Asparagus", canonical: "asparagus, cooked, boiled, drained", prep: "GRILLED", grams: 120, min: 100, max: 140 },
                { name: "Cooking Olive Oil", canonical: "oil, olive, salad or cooking", prep: "SAUTEED", grams: 8, min: 6, max: 10 }
            ],
            usdaMatches: [
                { fdcId: "173687", food: "Fish, salmon, Atlantic, wild, cooked, dry heat", similarity: "98.4%", cals: 310, p: 43.2, c: 0.0, f: 13.8, fb: 0.0 },
                { fdcId: "169704", food: "Rice, brown, long-grain, cooked", similarity: "97.1%", cals: 216, p: 5.0, c: 45.8, f: 1.8, fb: 3.5 },
                { fdcId: "170381", food: "Asparagus, cooked, boiled, drained", similarity: "94.6%", cals: 26, p: 2.9, c: 4.9, f: 0.3, fb: 2.5 },
                { fdcId: "171413", food: "Oil, olive, salad or cooking", similarity: "99.2%", cals: 71, p: 0.0, c: 0.0, f: 8.0, fb: 0.0 }
            ],
            final: {
                calories: 623,
                caloriesMin: 580,
                caloriesMax: 665,
                protein: 51.1,
                carbs: 50.7,
                fat: 23.9,
                fiber: 6.0,
                healthScore: "HEALTHY",
                healthReason: "Exceptional source of EPA & DHA Omega-3 marine polyunsaturated fatty acids, supporting cardiovascular and cognitive recovery. Low inflammatory load.",
                tip: "Wild salmon contains naturally occurring astaxanthin, an antioxidant that imparts its vibrant color and protects cellular membranes."
            }
        },

        cheeseburger_fries: {
            title: "Double Beef Cheeseburger & Fries",
            prompt: "Double cheeseburger with cheddar, brioche bun, and a side of french fries",
            mealType: "LUNCH",
            components: [
                {
                    name: "Double Beef Cheeseburger",
                    canonical: "ground beef burger with cheddar",
                    prep: "GRIDDLED",
                    portionHint: "1 sandwich (~240g)"
                },
                {
                    name: "Crispy Potato French Fries",
                    canonical: "deep fried potato batons",
                    prep: "DEEP_FRIED",
                    portionHint: "1 medium portion (~117g)"
                }
            ],
            ingredients: [
                { name: "Ground Beef Patties (80/20)", canonical: "beef, ground, 80% lean meat / 20% fat", prep: "GRIDDLED", grams: 180, min: 160, max: 200 },
                { name: "Brioche Burger Bun", canonical: "roll, hamburger or hot dog, plain", prep: "TOASTED", grams: 70, min: 65, max: 75 },
                { name: "Cheddar Cheese Slices", canonical: "cheese, cheddar", prep: "MELTED", grams: 42, min: 38, max: 46 },
                { name: "Fried Potatoes (French Fries)", canonical: "fast foods, potato, french fried", prep: "DEEP_FRIED", grams: 117, min: 100, max: 130 }
            ],
            usdaMatches: [
                { fdcId: "174032", food: "Beef, ground, 80% lean meat / 20% fat, patty, cooked", similarity: "97.8%", cals: 457, p: 46.1, c: 0.0, f: 30.0, fb: 0.0 },
                { fdcId: "172825", food: "Rolls, hamburger or hot dog, plain", similarity: "95.5%", cals: 196, p: 6.2, c: 35.4, f: 3.1, fb: 1.5 },
                { fdcId: "173418", food: "Cheese, cheddar", similarity: "98.9%", cals: 170, p: 9.6, c: 1.3, f: 14.4, fb: 0.0 },
                { fdcId: "170693", food: "Fast foods, potato, french fried in vegetable oil", similarity: "96.2%", cals: 365, p: 4.0, c: 48.1, f: 17.5, fb: 4.4 }
            ],
            final: {
                calories: 1188,
                caloriesMin: 1090,
                caloriesMax: 1280,
                protein: 65.9,
                carbs: 84.8,
                fat: 65.0,
                fiber: 5.9,
                healthScore: "NEUTRAL",
                healthReason: "High protein yield (66g), balanced by substantial saturated fatty acid density (26g) and sodium from processed cheese and deep-frying oils.",
                tip: "Pairing deep-fried fast food with water rather than sugary sodas prevents an additional 40g to 60g of liquid fructose and sucrose calories."
            }
        },

        greek_yogurt: {
            title: "Greek Yogurt with Berries, Chia & Honey",
            prompt: "1 cup plain nonfat Greek yogurt with fresh blueberries, chia seeds, and 1 tbsp clover honey",
            mealType: "BREAKFAST",
            components: [
                {
                    name: "Plain Nonfat Greek Yogurt",
                    canonical: "strained fermented dairy",
                    prep: "RAW",
                    portionHint: "1 cup (~170g)"
                },
                {
                    name: "Fresh Wild Blueberries",
                    canonical: "fresh berries",
                    prep: "RAW",
                    portionHint: "1/2 cup (~75g)"
                },
                {
                    name: "Organic Chia Seeds",
                    canonical: "salvia hispanica seeds",
                    prep: "RAW",
                    portionHint: "1 tablespoon (~12g)"
                },
                {
                    name: "Raw Clover Honey",
                    canonical: "pure bee honey",
                    prep: "RAW",
                    portionHint: "1 tablespoon (~21g)"
                }
            ],
            ingredients: [
                { name: "Nonfat Greek Yogurt", canonical: "yogurt, Greek, plain, nonfat", prep: "RAW", grams: 170, min: 160, max: 180 },
                { name: "Fresh Blueberries", canonical: "blueberries, raw", prep: "RAW", grams: 75, min: 65, max: 85 },
                { name: "Chia Seeds", canonical: "seeds, chia seeds, dried", prep: "RAW", grams: 12, min: 10, max: 14 },
                { name: "Natural Honey", canonical: "honey", prep: "RAW", grams: 21, min: 18, max: 24 }
            ],
            usdaMatches: [
                { fdcId: "170903", food: "Yogurt, Greek, plain, nonfat", similarity: "98.9%", cals: 100, p: 17.5, c: 6.1, f: 0.7, fb: 0.0 },
                { fdcId: "171711", food: "Blueberries, raw", similarity: "97.4%", cals: 43, p: 0.6, c: 10.9, f: 0.2, fb: 1.8 },
                { fdcId: "170554", food: "Seeds, chia seeds, dried", similarity: "98.1%", cals: 58, p: 2.0, c: 5.0, f: 3.7, fb: 4.1 },
                { fdcId: "169640", food: "Honey", similarity: "99.5%", cals: 64, p: 0.1, c: 17.3, f: 0.0, fb: 0.0 }
            ],
            final: {
                calories: 265,
                caloriesMin: 245,
                caloriesMax: 290,
                protein: 20.2,
                carbs: 39.3,
                fat: 4.6,
                fiber: 5.9,
                healthScore: "HEALTHY",
                healthReason: "High protein-to-calorie ratio with live active probiotic cultures that nourish intestinal microflora. Anthocyanins in blueberries supply potent antioxidant defense.",
                tip: "Chia seeds form a mucilage gel when mixed with yogurt liquids, delaying carbohydrate absorption and promoting prolonged fullness."
            }
        }
    };

    // -------------------------------------------------------------------------
    // Intelligent Fallback Generator for Arbitrary User Custom Inputs
    // -------------------------------------------------------------------------
    function generateDynamicMealAnalysis(userPrompt) {
        const text = userPrompt.trim();
        const words = text.toLowerCase();

        // 1. Determine Meal Category
        let mealType = "LUNCH";
        if (/breakfast|pancake|waffle|egg|toast|cereal|oat|morning|bagel|yogurt/i.test(words)) {
            mealType = "BREAKFAST";
        } else if (/dinner|steak|pasta|roast|soup|curry|salmon/i.test(words)) {
            mealType = "DINNER";
        } else if (/snack|protein bar|shake|cookie|nuts|apple|chips/i.test(words)) {
            mealType = "SNACK";
        }

        // 2. Extract potential dish components
        const rawSegments = text.split(/,|\band\b|\bwith\b|\bplus\b/i)
            .map(s => s.trim())
            .filter(s => s.length > 1);

        const segments = rawSegments.length > 0 ? rawSegments : [text];

        const components = [];
        const ingredients = [];
        const usdaMatches = [];

        let totalCals = 0;
        let totalP = 0;
        let totalC = 0;
        let totalF = 0;
        let totalFb = 0;

        segments.forEach((seg, idx) => {
            const clean = seg.replace(/^(1|2|3|4|5|a|an|some|few)\s+/i, '');
            const cap = clean.charAt(0).toUpperCase() + clean.slice(1);
            
            // Inferred prep
            let prep = "PREPARED";
            if (/fried|crispy/i.test(seg)) prep = "FRIED";
            else if (/grilled|bbq/i.test(seg)) prep = "GRILLED";
            else if (/boiled|simmered/i.test(seg)) prep = "BOILED";
            else if (/steamed/i.test(seg)) prep = "STEAMED";
            else if (/baked|roasted/i.test(seg)) prep = "ROASTED";
            else if (/raw|fresh|salad/i.test(seg)) prep = "RAW";

            const estGrams = Math.floor(80 + (Math.random() * 90));
            const minG = Math.max(30, Math.floor(estGrams * 0.85));
            const maxG = Math.floor(estGrams * 1.15);

            components.push({
                name: cap,
                canonical: clean.toLowerCase() + " dish",
                prep: prep,
                portionHint: `Standard serving (~${estGrams}g)`
            });

            ingredients.push({
                name: cap + " (Edible portion)",
                canonical: clean.toLowerCase(),
                prep: prep,
                grams: estGrams,
                min: minG,
                max: maxG
            });

            // Realistic macro modeling
            let cals = Math.floor(estGrams * 1.6);
            let p = Math.round(estGrams * 0.12 * 10) / 10;
            let c = Math.round(estGrams * 0.18 * 10) / 10;
            let f = Math.round(estGrams * 0.05 * 10) / 10;
            let fb = Math.round(estGrams * 0.02 * 10) / 10;

            if (/chicken|turkey|beef|pork|steak|fish|tuna|salmon|egg/i.test(clean)) {
                p = Math.round(estGrams * 0.26 * 10) / 10;
                c = 0;
                f = Math.round(estGrams * 0.07 * 10) / 10;
                cals = Math.round((p * 4) + (f * 9));
            } else if (/rice|pasta|bread|noodle|potato|grain/i.test(clean)) {
                c = Math.round(estGrams * 0.28 * 10) / 10;
                p = Math.round(estGrams * 0.03 * 10) / 10;
                f = Math.round(estGrams * 0.01 * 10) / 10;
                fb = Math.round(estGrams * 0.02 * 10) / 10;
                cals = Math.round((c * 4) + (p * 4) + (f * 9));
            } else if (/oil|butter|ghee|dressing|mayo/i.test(clean)) {
                const smallG = Math.min(15, estGrams);
                p = 0; c = 0; fb = 0;
                f = smallG;
                cals = f * 9;
            }

            totalCals += cals;
            totalP += p;
            totalC += c;
            totalF += f;
            totalFb += fb;

            const randomFdc = 169000 + Math.floor(Math.random() * 8000);
            const simScore = (94.0 + (Math.random() * 5.5)).toFixed(1) + "%";

            usdaMatches.push({
                fdcId: String(randomFdc),
                food: cap + ", culinary standard reference, USDA database grounded",
                similarity: simScore,
                cals: cals,
                p: p,
                c: c,
                f: f,
                fb: fb
            });
        });

        const isHealthy = (totalP >= 15 && totalFb >= 4) || (totalF < 35 && totalCals < 800);

        return {
            title: text.length > 40 ? text.substring(0, 37) + "..." : text,
            prompt: text,
            mealType: mealType,
            components: components,
            ingredients: ingredients,
            usdaMatches: usdaMatches,
            final: {
                calories: totalCals,
                caloriesMin: Math.floor(totalCals * 0.9),
                caloriesMax: Math.ceil(totalCals * 1.1),
                protein: Math.round(totalP * 10) / 10,
                carbs: Math.round(totalC * 10) / 10,
                fat: Math.round(totalF * 10) / 10,
                fiber: Math.round(totalFb * 10) / 10,
                healthScore: isHealthy ? "HEALTHY" : "NEUTRAL",
                healthReason: isHealthy
                    ? "Balanced macro distribution providing quality protein, wholesome satiety, and adequate dietary fiber."
                    : "Calorically dense meal with moderate nutritional variance. Hydrated using USDA FoodData reference tables.",
                tip: "For optimal metabolic control, combine protein and complex carbohydrates with fiber-rich ingredients to balance blood glucose response."
            }
        };
    }

    // -------------------------------------------------------------------------
    // Helper: Safe JSON parser & normalizers
    // -------------------------------------------------------------------------
    function parseMaybeJson(val) {
        if (!val) return null;
        if (typeof val === 'object') return val;
        try {
            return JSON.parse(val);
        } catch (_) {
            return null;
        }
    }

    function normalizeStatus(st) {
        if (typeof st === 'number') {
            const map = {
                0: 'INITIATED',
                1: 'COMPONENT_DECOMPOSED',
                2: 'INGREDIENT_DECOMPOSED',
                3: 'USDA_MACRO_HYDRATED',
                4: 'CLARIFICATION_GENERATED',
                5: 'CLARIFICATION_RESOLVED',
                6: 'PRESENTED',
                7: 'FAILED'
            };
            return map[st] || 'INITIATED';
        }
        return String(st || 'INITIATED').toUpperCase();
    }

    // -------------------------------------------------------------------------
    // Hybrid Live Backend & Interactive Simulation Client
    // -------------------------------------------------------------------------
    class CalorifyAnalysisClient {
        constructor(callbacks, options = {}) {
            this.callbacks = callbacks; // onTelemetry, onStageUpdate, onComplete, onError, onModeChange
            const isLocal = !window.location.hostname ||
                window.location.hostname === 'localhost' ||
                window.location.hostname === '127.0.0.1' ||
                window.location.protocol === 'file:';
            this.apiBaseUrl = options.apiBaseUrl || window.CALORIFY_API_URL || sessionStorage.getItem('calorify_api_url') ||
                (isLocal ? 'http://localhost:8000' : 'https://api-calorify.thecodepapaya.dev');
            this.firebaseApiKey = options.firebaseApiKey || 'AIzaSyDer6aCUz9rVX-DRwUVJqxbZ6OEoJG9PyY';

            this.mode = sessionStorage.getItem('calorify_mode') || 'api'; // 'api' | 'demo'
            this.activeAnalysisId = null;
            this.pollTimer = null;
            this.pollCycle = 0;
            this.isLiveBackend = (this.mode === 'api');
            this.activeSimData = null;
            this.lastStageEmitted = 0;
            this.cachedToken = null;
            this.tokenExpiry = 0;
        }

        async testBackendConnection() {
            try {
                const controller = new AbortController();
                const tid = setTimeout(() => controller.abort(), 1800);
                const res = await fetch(`${this.apiBaseUrl}/ready`, { signal: controller.signal });
                clearTimeout(tid);
                return res.ok;
            } catch (_) {
                return false;
            }
        }

        async getAuthToken() {
            // Check manual dev override first
            const manualToken = window.CALORIFY_AUTH_TOKEN || sessionStorage.getItem('calorify_auth_token');
            if (manualToken) {
                return manualToken;
            }

            const now = Date.now();
            if (this.cachedToken && this.tokenExpiry > now + 60000) {
                return this.cachedToken;
            }

            try {
                const storedToken = sessionStorage.getItem('calorify_id_token');
                const storedExp = parseInt(sessionStorage.getItem('calorify_token_exp') || '0', 10);
                if (storedToken && storedExp > now + 60000) {
                    this.cachedToken = storedToken;
                    this.tokenExpiry = storedExp;
                    return storedToken;
                }
            } catch (_) {}

            const res = await fetch(`https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=${this.firebaseApiKey}`, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ returnSecureToken: true })
            });

            if (!res.ok) {
                const errData = await res.json().catch(() => ({}));
                const msg = errData.error?.message || `HTTP ${res.status}`;
                throw new Error(`Firebase Auth error: ${msg}. (Make sure Anonymous Auth is enabled in Firebase Console, or provide token)`);
            }

            const data = await res.json();
            const token = data.idToken;
            const expiresInSec = parseInt(data.expiresIn || '3600', 10);
            this.cachedToken = token;
            this.tokenExpiry = now + (expiresInSec * 1000);

            try {
                sessionStorage.setItem('calorify_id_token', token);
                sessionStorage.setItem('calorify_token_exp', String(this.tokenExpiry));
            } catch (_) {}

            // Upsert user in backend
            fetch(`${this.apiBaseUrl}/users`, {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${token}`
                },
                body: JSON.stringify({ user: { id: data.localId } })
            }).catch(() => {});

            return token;
        }

        async initiateAnalysis(text) {
            this.cancel();
            this.pollCycle = 0;
            this.lastStageEmitted = 0;

            const trimmedText = text.trim();

            if (this.mode === 'demo') {
                this.isLiveBackend = false;
                this.initiateSimulatedAnalysis(trimmedText);
                return;
            }

            const startTime = performance.now();

            try {
                const authToken = await this.getAuthToken();
                const controller = new AbortController();
                const timeoutId = setTimeout(() => controller.abort(), 6000);

                const response = await fetch(`${this.apiBaseUrl}/users/meals/analysis`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': `Bearer ${authToken}`,
                        'X-Calorify-App-Version': 'web-demo'
                    },
                    body: JSON.stringify({
                        text: trimmedText,
                        metaInfo: {
                            timezone: Intl.DateTimeFormat().resolvedOptions().timeZone || 'UTC'
                        }
                    }),
                    signal: controller.signal
                });
                clearTimeout(timeoutId);

                if (!response.ok && response.status !== 202) {
                    const errBody = await response.text().catch(() => '');
                    throw new Error(`Server returned HTTP ${response.status}: ${errBody || response.statusText}`);
                }

                const resJson = await response.json();
                const analysisId = resJson.analysisId || resJson.analysis_id || resJson.id;
                if (!analysisId) {
                    throw new Error('Server response missing analysisId');
                }

                this.isLiveBackend = true;
                this.activeAnalysisId = analysisId;

                const latency = Math.round(performance.now() - startTime) + 'ms';
                if (this.callbacks.onModeChange) {
                    this.callbacks.onModeChange({ isLive: true, endpoint: this.apiBaseUrl });
                }

                this.callbacks.onTelemetry({
                    method: 'POST',
                    endpoint: '/users/meals/analysis',
                    status: response.status,
                    cycle: 0,
                    latency: latency,
                    phase: 'ACCEPTED',
                    analysisId: this.activeAnalysisId
                });

                this.scheduleNextLivePoll(800);
            } catch (err) {
                console.error('Actual API initiation failed:', err);
                this.cancel();
                if (this.callbacks.onError) {
                    this.callbacks.onError(err);
                }
            }
        }

        scheduleNextLivePoll(delayMs) {
            this.pollTimer = setTimeout(() => this.executeLivePoll(), delayMs);
        }

        async executeLivePoll() {
            if (!this.activeAnalysisId) return;
            this.pollCycle++;
            const startTime = performance.now();

            try {
                const token = await this.getAuthToken();
                const response = await fetch(`${this.apiBaseUrl}/users/meals/analysis/${this.activeAnalysisId}`, {
                    headers: {
                        'Authorization': `Bearer ${token}`
                    }
                });

                const latency = Math.round(performance.now() - startTime) + 'ms';

                if (!response.ok) {
                    if (response.status === 404 && this.pollCycle < 3) {
                        this.scheduleNextLivePoll(1000);
                        return;
                    }
                    throw new Error(`Polling request returned HTTP ${response.status}: ${response.statusText}`);
                }

                const statusData = await response.json();
                const rawStatus = statusData.status;
                const statusName = normalizeStatus(rawStatus);

                this.callbacks.onTelemetry({
                    method: 'GET',
                    endpoint: `/users/meals/analysis/${this.activeAnalysisId}`,
                    status: response.status,
                    cycle: this.pollCycle,
                    latency: latency,
                    phase: statusName,
                    analysisId: this.activeAnalysisId
                });

                if (statusName === 'FAILED') {
                    const errReason = statusData.errorMessage || statusData.error_message || 'Meal analysis marked as failed in backend';
                    this.cancel();
                    this.callbacks.onError(new Error(errReason));
                    return;
                }

                this.dispatchLiveStageUpdates(statusData, statusName);

                if (statusName === 'PRESENTED') {
                    const finalMeal = this.formatFinalMealFromBackend(statusData);
                    this.callbacks.onComplete(finalMeal);
                    this.activeAnalysisId = null;
                    return;
                }

                if (this.pollCycle >= 40) {
                    throw new Error('Analysis timed out after 40 seconds');
                }

                this.scheduleNextLivePoll(1100);
            } catch (err) {
                console.error('Actual API polling error:', err);
                this.cancel();
                if (this.callbacks.onError) {
                    this.callbacks.onError(err);
                }
            }
        }

        dispatchLiveStageUpdates(statusData, statusName) {
            // Stage 1: INITIATED
            if (this.lastStageEmitted < 1) {
                this.lastStageEmitted = 1;
                this.callbacks.onStageUpdate({
                    stage: 1,
                    status: 'INITIATED',
                    progress: 20,
                    data: {
                        message: 'Session registered in Calorify Go backend. Starting component decomposition...',
                        analysisId: this.activeAnalysisId,
                        createdAt: statusData.createdAt || statusData.created_at || new Date().toISOString()
                    }
                });
            }

            // Stage 2: COMPONENT_DECOMPOSED
            const pass1 = parseMaybeJson(statusData.decomposedComponent || statusData.decomposed_component);
            if (pass1 && this.lastStageEmitted < 2) {
                this.lastStageEmitted = 2;
                const components = (pass1.components || []).map(c => {
                    let portionHint = 'Standard portion';
                    if (c.bulk?.value?.value) portionHint = `~${c.bulk.value.value}g`;
                    else if (c.exact?.value) portionHint = `${c.exact.value} serving`;
                    return {
                        name: c.name || 'Dish Component',
                        canonical: (c.alias && c.alias.length) ? c.alias.join(', ') : (c.name || 'Component'),
                        prep: (c.preparationMethod || c.preparation_method || 'PREPARED').replace(/^PREPARATION_METHOD_/, ''),
                        portionHint: portionHint
                    };
                });

                this.callbacks.onStageUpdate({
                    stage: 2,
                    status: 'COMPONENT_DECOMPOSED',
                    progress: 45,
                    data: {
                        mealType: pass1.mealType || pass1.meal_type || 'LUNCH',
                        components: components,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });
            }

            // Stage 3: INGREDIENT_DECOMPOSED
            const pass2 = parseMaybeJson(statusData.decomposedIngredient || statusData.decomposed_ingredient);
            if (pass2 && this.lastStageEmitted < 3) {
                this.lastStageEmitted = 3;
                const ingredients = (pass2.ingredients || []).map(ing => {
                    let grams = 50, min = 40, max = 60;
                    if (ing.bulk?.value) {
                        grams = ing.bulk.value.value || 50;
                        min = ing.bulk.value.minValue || ing.bulk.value.min_value || Math.floor(grams * 0.85);
                        max = ing.bulk.value.maxValue || ing.bulk.value.max_value || Math.floor(grams * 1.15);
                    } else if (ing.exact?.perUnitGram) {
                        const count = ing.exact.value || 1;
                        const perG = ing.exact.perUnitGram.value || 50;
                        grams = count * perG;
                        min = ing.exact.perUnitGram.minValue || ing.exact.perUnitGram.min_value || Math.floor(grams * 0.85);
                        max = ing.exact.perUnitGram.maxValue || ing.exact.perUnitGram.max_value || Math.floor(grams * 1.15);
                    }
                    return {
                        name: ing.name || 'Ingredient',
                        canonical: (ing.alias && ing.alias.length) ? ing.alias.join(', ') : (ing.name || ''),
                        prep: (ing.preparationMethod || ing.preparation_method || 'PREPARED').replace(/^PREPARATION_METHOD_/, ''),
                        grams: Math.round(grams),
                        min: Math.round(min),
                        max: Math.round(max)
                    };
                });

                this.callbacks.onStageUpdate({
                    stage: 3,
                    status: 'INGREDIENT_DECOMPOSED',
                    progress: 70,
                    data: {
                        ingredients: ingredients,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });
            }

            // Stage 4: USDA_MACRO_HYDRATED
            const enriched = parseMaybeJson(statusData.usdaEnriched || statusData.usda_enriched);
            if (enriched && this.lastStageEmitted < 4) {
                this.lastStageEmitted = 4;
                const usdaMatches = (enriched.ingredients || []).map(m => {
                    const sim = typeof m.similarity === 'number' ? (m.similarity * 100).toFixed(1) + '%' : (m.similarity || '95.0%');
                    const macros = m.macros || {};
                    return {
                        fdcId: String(m.fdcId || m.fdc_id || ''),
                        food: m.description || m.name || 'USDA Grounded Reference Food',
                        similarity: sim,
                        cals: macros.calorie?.value || 0,
                        p: macros.protein?.value || 0,
                        c: macros.carb?.value || 0,
                        f: macros.fat?.value || 0,
                        fb: macros.fiber?.value || 0
                    };
                });

                this.callbacks.onStageUpdate({
                    stage: 4,
                    status: 'USDA_MACRO_HYDRATED',
                    progress: 90,
                    data: {
                        usdaMatches: usdaMatches,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });
            }

            // Stage 5: PRESENTED
            const meal = parseMaybeJson(statusData.finalResponse || statusData.final_response);
            if (meal && this.lastStageEmitted < 5) {
                this.lastStageEmitted = 5;
                const formatted = this.formatFinalMealFromBackend(statusData);
                this.callbacks.onStageUpdate({
                    stage: 5,
                    status: 'PRESENTED',
                    progress: 100,
                    data: {
                        mealTitle: formatted.title,
                        mealType: formatted.mealType,
                        final: formatted.final,
                        ingredients: formatted.ingredients,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });
            }
        }

        formatFinalMealFromBackend(statusData) {
            const meal = parseMaybeJson(statusData.finalResponse || statusData.final_response) || {};
            const pass1 = parseMaybeJson(statusData.decomposedComponent || statusData.decomposed_component) || {};
            const pass2 = parseMaybeJson(statusData.decomposedIngredient || statusData.decomposed_ingredient) || {};

            const m = meal.macros || {};
            const cals = m.calorie?.value || 0;
            const calsMin = m.calorie?.minValue || m.calorie?.min_value || Math.floor(cals * 0.9);
            const calsMax = m.calorie?.maxValue || m.calorie?.max_value || Math.ceil(cals * 1.1);
            const protein = m.protein?.value || 0;
            const carbs = m.carb?.value || 0;
            const fat = m.fat?.value || 0;
            const fiber = m.fiber?.value || 0;

            const h = meal.health || pass1.mealHealth || pass1.meal_health || {};
            let healthScore = h.healthScore || h.health_score || 'HEALTHY';
            if (healthScore === 1 || healthScore === '1' || healthScore === 'HEALTH_SCORE_HEALTHY') healthScore = 'HEALTHY';
            else if (healthScore === 2 || healthScore === '2' || healthScore === 'HEALTH_SCORE_UNHEALTHY') healthScore = 'UNHEALTHY';
            else if (healthScore === 0 || healthScore === '0' || healthScore === 'HEALTH_SCORE_NEUTRAL') healthScore = 'NEUTRAL';

            const healthReason = h.healthScoreReason || h.health_score_reason ||
                'Wholesome nutrient breakdown verified using USDA FoodData Central reference models.';

            const tip = meal.metadata?.tip || pass1.tip ||
                'Pair dietary fiber and high-quality protein to support sustained satiety and steady glycemic response.';

            let mealType = meal.type || pass1.mealType || pass1.meal_type || 'LUNCH';
            if (mealType === 1 || mealType === '1') mealType = 'BREAKFAST';
            else if (mealType === 2 || mealType === '2') mealType = 'LUNCH';
            else if (mealType === 3 || mealType === '3') mealType = 'DINNER';
            else if (mealType === 4 || mealType === '4') mealType = 'SNACK';

            const ingredients = (pass2.ingredients || []).map(ing => ({
                name: ing.name,
                canonical: (ing.alias && ing.alias.length) ? ing.alias.join(', ') : ing.name,
                prep: (ing.preparationMethod || ing.preparation_method || 'PREPARED').replace(/^PREPARATION_METHOD_/, ''),
                grams: ing.bulk?.value?.value || (ing.exact?.value ? ing.exact.value * (ing.exact.perUnitGram?.value || 50) : 50)
            }));

            return {
                title: meal.name || pass1.name || 'Analyzed Meal',
                prompt: statusData.text || '',
                mealType: mealType,
                components: pass1.components || [],
                ingredients: ingredients,
                final: {
                    calories: cals,
                    caloriesMin: calsMin,
                    caloriesMax: calsMax,
                    protein: protein,
                    carbs: carbs,
                    fat: fat,
                    fiber: fiber,
                    healthScore: healthScore,
                    healthReason: healthReason,
                    tip: tip
                }
            };
        }

        initiateSimulatedAnalysis(text) {
            this.cancel();
            this.pollCycle = 0;
            this.lastStageEmitted = 0;
            const randomId = "ca_sim_" + Math.random().toString(36).substring(2, 9);
            this.activeAnalysisId = randomId;

            if (this.callbacks.onModeChange) {
                this.callbacks.onModeChange({ isLive: false });
            }

            let matchedData = null;
            const lower = text.toLowerCase();
            for (const key of Object.keys(PRESETS)) {
                const p = PRESETS[key];
                if (lower.includes(key.replace('_', ' ')) || lower.includes(p.title.toLowerCase()) || lower.includes(p.prompt.toLowerCase())) {
                    matchedData = p;
                    break;
                }
            }

            if (!matchedData) {
                if (lower.includes("daal") || lower.includes("roti") || lower.includes("lentil")) {
                    matchedData = PRESETS.daal_roti;
                } else if (lower.includes("chicken") && (lower.includes("quinoa") || lower.includes("broccoli"))) {
                    matchedData = PRESETS.chicken_bowl;
                } else if (lower.includes("avocado") || (lower.includes("toast") && lower.includes("egg"))) {
                    matchedData = PRESETS.avocado_toast;
                } else if (lower.includes("salmon") || lower.includes("asparagus")) {
                    matchedData = PRESETS.salmon_quinoa;
                } else if (lower.includes("burger") || lower.includes("cheeseburger") || lower.includes("fries")) {
                    matchedData = PRESETS.cheeseburger_fries;
                } else if (lower.includes("yogurt") || lower.includes("chia") || lower.includes("berries")) {
                    matchedData = PRESETS.greek_yogurt;
                } else {
                    matchedData = generateDynamicMealAnalysis(text);
                }
            }

            this.activeSimData = matchedData;

            this.callbacks.onTelemetry({
                method: "POST",
                endpoint: "/users/meals/analysis",
                status: 202,
                cycle: 0,
                latency: "142ms",
                phase: "ACCEPTED",
                analysisId: this.activeAnalysisId
            });

            this.scheduleNextSimPoll(600);
        }

        scheduleNextSimPoll(delayMs) {
            this.pollTimer = setTimeout(() => this.executeSimPoll(), delayMs);
        }

        executeSimPoll() {
            if (!this.activeAnalysisId) return;
            this.pollCycle++;

            const latency = Math.floor(180 + Math.random() * 120) + "ms";
            let stageStatus = "INITIATED";
            let progress = 10;

            if (this.pollCycle === 1) {
                stageStatus = "INITIATED";
                progress = 20;
                this.callbacks.onStageUpdate({
                    stage: 1,
                    status: "INITIATED",
                    progress: progress,
                    data: {
                        message: "Session registered. Tokenizing meal description...",
                        analysisId: this.activeAnalysisId,
                        createdAt: new Date().toISOString()
                    }
                });
                this.scheduleNextSimPoll(1000);
            } else if (this.pollCycle === 2) {
                stageStatus = "COMPONENT_DECOMPOSED";
                progress = 45;
                this.callbacks.onStageUpdate({
                    stage: 2,
                    status: "COMPONENT_DECOMPOSED",
                    progress: progress,
                    data: {
                        mealType: this.activeSimData.mealType,
                        components: this.activeSimData.components,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });
                this.scheduleNextSimPoll(1100);
            } else if (this.pollCycle === 3) {
                stageStatus = "INGREDIENT_DECOMPOSED";
                progress = 70;
                this.callbacks.onStageUpdate({
                    stage: 3,
                    status: "INGREDIENT_DECOMPOSED",
                    progress: progress,
                    data: {
                        ingredients: this.activeSimData.ingredients,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });
                this.scheduleNextSimPoll(1100);
            } else if (this.pollCycle === 4) {
                stageStatus = "USDA_MACRO_HYDRATED";
                progress = 90;
                this.callbacks.onStageUpdate({
                    stage: 4,
                    status: "USDA_MACRO_HYDRATED",
                    progress: progress,
                    data: {
                        usdaMatches: this.activeSimData.usdaMatches,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });
                this.scheduleNextSimPoll(1200);
            } else if (this.pollCycle >= 5) {
                stageStatus = "PRESENTED";
                progress = 100;
                this.callbacks.onStageUpdate({
                    stage: 5,
                    status: "PRESENTED",
                    progress: progress,
                    data: {
                        mealTitle: this.activeSimData.title,
                        mealType: this.activeSimData.mealType,
                        final: this.activeSimData.final,
                        ingredients: this.activeSimData.ingredients,
                        timestamp: new Date().toLocaleTimeString()
                    }
                });

                this.callbacks.onTelemetry({
                    method: "GET",
                    endpoint: `/users/meals/analysis/${this.activeAnalysisId}`,
                    status: 200,
                    cycle: this.pollCycle,
                    latency: latency,
                    phase: "COMPLETED",
                    analysisId: this.activeAnalysisId
                });

                this.callbacks.onComplete(this.activeSimData);
                this.activeAnalysisId = null;
                return;
            }

            this.callbacks.onTelemetry({
                method: "GET",
                endpoint: `/users/meals/analysis/${this.activeAnalysisId}`,
                status: 200,
                cycle: this.pollCycle,
                latency: latency,
                phase: stageStatus,
                analysisId: this.activeAnalysisId
            });
        }

        cancel() {
            if (this.pollTimer) {
                clearTimeout(this.pollTimer);
                this.pollTimer = null;
            }
            this.activeAnalysisId = null;
        }
    }

    // -------------------------------------------------------------------------
    // UI Orchestration
    // -------------------------------------------------------------------------
    document.addEventListener('DOMContentLoaded', () => {
        // Elements
        const textarea = document.getElementById('meal-input');
        const charCountEl = document.getElementById('char-count');
        const btnAnalyze = document.getElementById('btn-analyze');
        const btnClear = document.getElementById('btn-clear');
        const chips = document.querySelectorAll('.preset-chip');

        const modeBadge = document.getElementById('demo-mode-badge');
        const modeText = document.getElementById('demo-mode-text');

        const apiEndpointDisplay = document.getElementById('api-endpoint-display');
        const btnEditApi = document.getElementById('btn-edit-api');
        const btnToggleDemoMode = document.getElementById('btn-toggle-demo-mode');
        const apiErrorBanner = document.getElementById('api-error-banner');
        const apiErrorTitle = document.getElementById('api-error-title');
        const apiErrorMessage = document.getElementById('api-error-message');
        const btnRetryApi = document.getElementById('btn-retry-api');
        const btnRunSimFallback = document.getElementById('btn-run-sim-fallback');

        const telemetryBar = document.getElementById('telemetry-bar');
        const telemetryDot = document.getElementById('telemetry-dot');
        const telemetryEndpoint = document.getElementById('telemetry-endpoint');
        const telemetryCycle = document.getElementById('telemetry-cycle');
        const telemetryCode = document.getElementById('telemetry-code');

        const stepperContainer = document.getElementById('stepper-container');
        const progressBarFill = document.getElementById('stepper-progress-fill');
        const progressPctText = document.getElementById('stepper-progress-text');
        const stepBoxes = document.querySelectorAll('.step-box');

        const resultsContainer = document.getElementById('results-container');
        const intermediateContainer = document.getElementById('intermediate-stages');
        const finalCardContainer = document.getElementById('final-response-container');

        // Helper to refresh Lucide icons
        const refreshIcons = () => {
            if (typeof lucide !== 'undefined' && lucide.createIcons) {
                lucide.createIcons();
            }
        };

        // Textarea character count
        if (textarea && charCountEl) {
            textarea.addEventListener('input', () => {
                const len = textarea.value.length;
                charCountEl.textContent = `${len} characters`;
                if (btnAnalyze) {
                    btnAnalyze.disabled = len.trim().length === 0;
                }
            });
        }

        // Preset Chips Click
        chips.forEach(chip => {
            chip.addEventListener('click', () => {
                chips.forEach(c => c.classList.remove('active'));
                chip.classList.add('active');
                const presetKey = chip.getAttribute('data-preset');
                if (PRESETS[presetKey]) {
                    textarea.value = PRESETS[presetKey].prompt;
                    textarea.dispatchEvent(new Event('input'));
                    textarea.focus();
                }
            });
        });

        // Clear button
        if (btnClear) {
            btnClear.addEventListener('click', () => {
                textarea.value = '';
                chips.forEach(c => c.classList.remove('active'));
                textarea.dispatchEvent(new Event('input'));
                resetUI();
            });
        }

        function resetUI() {
            client.cancel();
            if (apiErrorBanner) apiErrorBanner.style.display = 'none';
            if (telemetryBar) telemetryBar.style.display = 'none';
            if (stepperContainer) stepperContainer.style.display = 'none';
            if (resultsContainer) resultsContainer.style.display = 'none';
            if (intermediateContainer) intermediateContainer.innerHTML = '';
            if (finalCardContainer) finalCardContainer.innerHTML = '';

            stepBoxes.forEach((box, i) => {
                box.className = 'step-box pending';
                const circle = box.querySelector('.step-icon-circle');
                if (circle) circle.innerHTML = String(i + 1);
            });

            if (btnAnalyze) {
                btnAnalyze.disabled = textarea.value.trim().length === 0;
                btnAnalyze.innerHTML = '<i data-lucide="sparkles"></i><span>Analyze Meal</span>';
                refreshIcons();
            }
        }

        // Initialize Hybrid Analysis Client
        const client = new CalorifyAnalysisClient({
            onModeChange: (info) => {
                if (info.isLive) {
                    if (modeText) modeText.textContent = 'Live Backend Connected';
                    if (modeBadge) {
                        modeBadge.classList.add('live');
                        modeBadge.title = `Connected to Go Backend at ${info.endpoint}`;
                    }
                    if (apiErrorBanner) apiErrorBanner.style.display = 'none';
                } else {
                    if (modeText) modeText.textContent = 'Preset Simulation Mode';
                    if (modeBadge) {
                        modeBadge.classList.remove('live');
                        modeBadge.title = 'Running in browser simulation';
                    }
                }
                updateModeUI();
            },
            onTelemetry: (info) => {
                if (!telemetryBar) return;
                telemetryBar.style.display = 'flex';
                telemetryEndpoint.textContent = `${info.method} ${info.endpoint}`;
                telemetryCycle.textContent = `Poll #${info.cycle} • ${info.latency}`;
                telemetryCode.textContent = `${info.status} ${info.phase}`;

                if (info.phase === 'COMPLETED') {
                    telemetryDot.className = 'telemetry-indicator complete';
                } else {
                    telemetryDot.className = 'telemetry-indicator active';
                }
            },

            onStageUpdate: (stageInfo) => {
                if (stepperContainer) stepperContainer.style.display = 'block';
                if (resultsContainer) resultsContainer.style.display = 'flex';
                if (apiErrorBanner) apiErrorBanner.style.display = 'none';

                // Update progress bar
                if (progressBarFill) progressBarFill.style.width = `${stageInfo.progress}%`;
                if (progressPctText) progressPctText.textContent = `${stageInfo.progress}%`;

                // Update Stepper Box States
                stepBoxes.forEach((box, idx) => {
                    const stepNum = idx + 1;
                    const circle = box.querySelector('.step-icon-circle');
                    if (stepNum < stageInfo.stage) {
                        box.className = 'step-box completed';
                        if (circle) circle.innerHTML = '<i data-lucide="check"></i>';
                    } else if (stepNum === stageInfo.stage) {
                        box.className = 'step-box active';
                        if (circle) circle.innerHTML = '<i data-lucide="loader-2"></i>';
                    } else {
                        box.className = 'step-box pending';
                        if (circle) circle.innerHTML = String(stepNum);
                    }
                });

                // Render Intermediate Cards as they arrive!
                renderStageContent(stageInfo);
                refreshIcons();
            },

            onComplete: (fullData) => {
                stepBoxes.forEach((box) => {
                    box.className = 'step-box completed';
                    const circle = box.querySelector('.step-icon-circle');
                    if (circle) circle.innerHTML = '<i data-lucide="check"></i>';
                });

                if (btnAnalyze) {
                    btnAnalyze.disabled = false;
                    btnAnalyze.innerHTML = '<i data-lucide="refresh-cw"></i><span>Analyze Another</span>';
                }

                refreshIcons();
            },

            onError: (err) => {
                console.error('API Error handler invoked:', err);
                if (btnAnalyze) {
                    btnAnalyze.disabled = false;
                    btnAnalyze.innerHTML = '<i data-lucide="sparkles"></i><span>Analyze Meal</span>';
                }
                if (telemetryBar) {
                    telemetryDot.className = 'telemetry-indicator';
                    telemetryCode.textContent = 'ERR';
                }
                if (apiErrorBanner) {
                    apiErrorBanner.style.display = 'flex';
                    if (apiErrorTitle) apiErrorTitle.textContent = 'Backend API Error';
                    if (apiErrorMessage) {
                        apiErrorMessage.innerHTML = `${err.message || 'Request failed'}.<br><small style="color:#7F1D1D;">Target URL: <code>${client.apiBaseUrl}</code></small>`;
                    }
                }
                refreshIcons();
            }
        });

        function updateModeUI() {
            if (apiEndpointDisplay) apiEndpointDisplay.textContent = client.apiBaseUrl;
            if (client.mode === 'demo') {
                if (modeText) modeText.textContent = 'Preset Demo Mode';
                if (modeBadge) {
                    modeBadge.classList.remove('live');
                    modeBadge.title = 'Running in browser simulation';
                }
                if (btnToggleDemoMode) btnToggleDemoMode.textContent = 'Switch to Live Backend API';
                if (apiErrorBanner) apiErrorBanner.style.display = 'none';
            } else {
                if (btnToggleDemoMode) btnToggleDemoMode.textContent = 'Switch to Preset Demo Mode';
            }
        }

        async function checkConnection() {
            updateModeUI();
            if (client.mode === 'demo') return;

            if (modeText) modeText.textContent = 'Probing API (:8000)...';
            const online = await client.testBackendConnection();
            if (online) {
                if (modeText) modeText.textContent = 'Live Backend Connected';
                if (modeBadge) {
                    modeBadge.classList.add('live');
                    modeBadge.title = `Connected to Go backend at ${client.apiBaseUrl}`;
                }
                if (apiErrorBanner) apiErrorBanner.style.display = 'none';
            } else {
                if (modeText) modeText.textContent = 'Backend Offline';
                if (modeBadge) {
                    modeBadge.classList.remove('live');
                    modeBadge.title = `Could not reach ${client.apiBaseUrl}/ready`;
                }
                if (apiErrorBanner) {
                    apiErrorBanner.style.display = 'flex';
                    if (apiErrorTitle) apiErrorTitle.textContent = 'Backend API Offline';
                    if (apiErrorMessage) {
                        apiErrorMessage.innerHTML = `Cannot reach Calorify Go backend at <code>${client.apiBaseUrl}</code>. Start it with: <code>cd backend &amp;&amp; go run ./cmd/server</code>`;
                    }
                }
            }
            refreshIcons();
        }

        // Setup API controls
        if (btnEditApi) {
            btnEditApi.addEventListener('click', () => {
                const current = client.apiBaseUrl;
                const next = prompt('Enter Calorify Backend API Base URL:', current);
                if (next && next.trim()) {
                    client.apiBaseUrl = next.trim().replace(/\/+$/, '');
                    sessionStorage.setItem('calorify_api_url', client.apiBaseUrl);
                    checkConnection();
                }
            });
        }

        if (btnToggleDemoMode) {
            btnToggleDemoMode.addEventListener('click', () => {
                if (client.mode === 'demo') {
                    client.mode = 'api';
                    sessionStorage.setItem('calorify_mode', 'api');
                    checkConnection();
                } else {
                    client.mode = 'demo';
                    sessionStorage.setItem('calorify_mode', 'demo');
                    updateModeUI();
                }
            });
        }

        if (btnRetryApi) {
            btnRetryApi.addEventListener('click', () => {
                if (apiErrorBanner) apiErrorBanner.style.display = 'none';
                checkConnection().then(() => {
                    if (textarea && textarea.value.trim() && btnAnalyze) {
                        btnAnalyze.click();
                    }
                });
            });
        }

        if (btnRunSimFallback) {
            btnRunSimFallback.addEventListener('click', () => {
                client.mode = 'demo';
                sessionStorage.setItem('calorify_mode', 'demo');
                if (apiErrorBanner) apiErrorBanner.style.display = 'none';
                updateModeUI();
                if (textarea && textarea.value.trim() && btnAnalyze) {
                    btnAnalyze.click();
                }
            });
        }

        // Check connection on page load
        checkConnection();

        // Click Analyze Button
        if (btnAnalyze) {
            btnAnalyze.addEventListener('click', () => {
                const text = textarea.value.trim();
                if (!text) return;

                if (apiErrorBanner) apiErrorBanner.style.display = 'none';
                btnAnalyze.disabled = true;
                btnAnalyze.innerHTML = '<i data-lucide="loader-2" class="spin"></i><span>Analyzing...</span>';
                refreshIcons();

                // Clear previous results
                if (intermediateContainer) intermediateContainer.innerHTML = '';
                if (finalCardContainer) finalCardContainer.innerHTML = '';
                if (resultsContainer) resultsContainer.style.display = 'flex';

                client.initiateAnalysis(text);
            });
        }

        // Dynamic Stage Card Renderers
        function renderStageContent(stageInfo) {
            if (stageInfo.stage === 2 && stageInfo.data.components) {
                // Pass 1: Component Decomposition
                const comps = stageInfo.data.components;
                const html = `
                    <div class="stage-card">
                        <div class="stage-card-header">
                            <div class="stage-badge-title">
                                <span class="stage-number-pill">Stage 1</span>
                                <h4>Pass 1: Dish Component Decomposition</h4>
                            </div>
                            <span class="stage-timestamp">${stageInfo.data.timestamp}</span>
                        </div>
                        <p style="font-size:0.88rem;color:var(--text-muted);margin-bottom:1rem;">
                            Identified top-level culinary dishes and inferred meal candidate 
                            <strong style="color:var(--primary);">${stageInfo.data.mealType}</strong> from user prompt.
                        </p>
                        <div class="components-grid">
                            ${comps.map(c => `
                                <div class="component-item-card">
                                    <div class="component-name">
                                        <span>${c.name}</span>
                                        <span class="prep-badge">${c.prep}</span>
                                    </div>
                                    <div class="component-meta">
                                        Canonical Identity: <span>${c.canonical}</span>
                                    </div>
                                    <div class="component-meta">
                                        Portion context: <span>${c.portionHint}</span>
                                    </div>
                                </div>
                            `).join('')}
                        </div>
                    </div>
                `;
                appendOrUpdateStage('stage-card-1', html);
            } else if (stageInfo.stage === 3 && stageInfo.data.ingredients) {
                // Pass 2: Ingredient Decomposition
                const ings = stageInfo.data.ingredients;
                const html = `
                    <div class="stage-card">
                        <div class="stage-card-header">
                            <div class="stage-badge-title">
                                <span class="stage-number-pill">Stage 2</span>
                                <h4>Pass 2: Atomic Ingredient Extraction & Portions</h4>
                            </div>
                            <span class="stage-timestamp">${stageInfo.data.timestamp}</span>
                        </div>
                        <p style="font-size:0.88rem;color:var(--text-muted);margin-bottom:1rem;">
                            Decomposed each dish component into atomic ingredient units with preparation states and estimated gram mass bounds.
                        </p>
                        <div class="ingredients-table-wrapper">
                            <table class="ingredients-table">
                                <thead>
                                    <tr>
                                        <th>Ingredient</th>
                                        <th>Canonical Identity</th>
                                        <th>Preparation</th>
                                        <th>Estimated Mass</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    ${ings.map(ing => `
                                        <tr>
                                            <td>
                                                <div class="ingredient-primary-name">${ing.name}</div>
                                            </td>
                                            <td>
                                                <span class="ingredient-subtext">${ing.canonical}</span>
                                            </td>
                                            <td>
                                                <span class="prep-badge">${ing.prep}</span>
                                            </td>
                                            <td>
                                                <span class="gram-estimate-pill">${ing.grams}g</span>
                                                <span class="gram-variance">[${ing.min}g - ${ing.max}g]</span>
                                            </td>
                                        </tr>
                                    `).join('')}
                                </tbody>
                            </table>
                        </div>
                    </div>
                `;
                appendOrUpdateStage('stage-card-2', html);
            } else if (stageInfo.stage === 4 && stageInfo.data.usdaMatches) {
                // Stage 3: USDA Semantic Vector Retrieval
                const matches = stageInfo.data.usdaMatches;
                const html = `
                    <div class="stage-card">
                        <div class="stage-card-header">
                            <div class="stage-badge-title">
                                <span class="stage-number-pill">Stage 3</span>
                                <h4>USDA FoodData Central Vector Grounding</h4>
                            </div>
                            <span class="stage-timestamp">${stageInfo.data.timestamp}</span>
                        </div>
                        <p style="font-size:0.88rem;color:var(--text-muted);margin-bottom:1rem;">
                            Matched ingredient queries against local USDA database via pgvector cosine semantic embeddings (<code>1 - (embedding <=> query_vec)</code>).
                        </p>
                        <div class="usda-cards-grid">
                            ${matches.map(m => `
                                <div class="usda-card">
                                    <div class="usda-card-top">
                                        <span class="fdc-badge">USDA FDC #${m.fdcId}</span>
                                        <span class="similarity-badge">
                                            <i data-lucide="check-circle-2" style="width:12px;height:12px;"></i>
                                            ${m.similarity} Match
                                        </span>
                                    </div>
                                    <div class="usda-matched-food">${m.food}</div>
                                    <div class="usda-hydrated-macros">
                                        <span><strong>${m.cals}</strong> kcal</span>
                                        <span>P: <strong>${m.p}g</strong></span>
                                        <span>C: <strong>${m.c}g</strong></span>
                                        <span>F: <strong>${m.f}g</strong></span>
                                    </div>
                                </div>
                            `).join('')}
                        </div>
                    </div>
                `;
                appendOrUpdateStage('stage-card-3', html);
            } else if (stageInfo.stage === 5 && stageInfo.data.final) {
                // Final Verified Nutrition Response
                const d = stageInfo.data;
                const f = d.final;
                const isHealthy = f.healthScore === "HEALTHY";

                const html = `
                    <div class="final-response-card">
                        <div class="final-card-header">
                            <div class="meal-title-group">
                                <h3>${d.mealTitle}</h3>
                                <div class="meal-subtitle">
                                    <span class="meal-category-tag">
                                        <i data-lucide="utensils" style="width:14px;height:14px;"></i>
                                        ${d.mealType}
                                    </span>
                                    <span>Analyzed &amp; Grounded</span>
                                </div>
                            </div>
                            <div class="health-status-badge ${isHealthy ? 'healthy' : 'neutral'}">
                                <i data-lucide="${isHealthy ? 'shield-check' : 'info'}" style="width:16px;height:16px;"></i>
                                <span>Health Score: ${f.healthScore}</span>
                            </div>
                        </div>

                        <!-- Nutrition Hero Grid -->
                        <div class="nutrition-hero-grid">
                            <div class="calories-hero-box">
                                <div class="calories-label">Total Calories</div>
                                <div class="calories-number">${f.calories}</div>
                                <div class="calories-unit">kcal</div>
                                <div class="calories-bounds">[${f.caloriesMin} - ${f.caloriesMax} kcal range]</div>
                            </div>
                            <div class="macros-grid">
                                <div class="macro-box">
                                    <div class="macro-box-top">
                                        <span class="macro-name">Protein</span>
                                        <span class="macro-amount">${f.protein}g</span>
                                    </div>
                                    <div class="macro-bar-track">
                                        <div class="macro-bar-fill protein" style="width:${Math.min(100, (f.protein / 60) * 100)}%;"></div>
                                    </div>
                                    <span class="macro-pct">${Math.round((f.protein * 4 / f.calories) * 100)}% of cals</span>
                                </div>

                                <div class="macro-box">
                                    <div class="macro-box-top">
                                        <span class="macro-name">Carbs</span>
                                        <span class="macro-amount">${f.carbs}g</span>
                                    </div>
                                    <div class="macro-bar-track">
                                        <div class="macro-bar-fill carb" style="width:${Math.min(100, (f.carbs / 80) * 100)}%;"></div>
                                    </div>
                                    <span class="macro-pct">${Math.round((f.carbs * 4 / f.calories) * 100)}% of cals</span>
                                </div>

                                <div class="macro-box">
                                    <div class="macro-box-top">
                                        <span class="macro-name">Fat</span>
                                        <span class="macro-amount">${f.fat}g</span>
                                    </div>
                                    <div class="macro-bar-track">
                                        <div class="macro-bar-fill fat" style="width:${Math.min(100, (f.fat / 40) * 100)}%;"></div>
                                    </div>
                                    <span class="macro-pct">${Math.round((f.fat * 9 / f.calories) * 100)}% of cals</span>
                                </div>

                                <div class="macro-box">
                                    <div class="macro-box-top">
                                        <span class="macro-name">Fiber</span>
                                        <span class="macro-amount">${f.fiber}g</span>
                                    </div>
                                    <div class="macro-bar-track">
                                        <div class="macro-bar-fill fiber" style="width:${Math.min(100, (f.fiber / 15) * 100)}%;"></div>
                                    </div>
                                    <span class="macro-pct">${f.fiber >= 8 ? 'High Fiber' : 'Moderate'}</span>
                                </div>
                            </div>
                        </div>

                        <!-- Scientific Insights & Tip -->
                        <div class="insights-row">
                            <div class="insight-card health-reason">
                                <div class="insight-header">
                                    <i data-lucide="activity"></i>
                                    <span>Nutritional Rationale</span>
                                </div>
                                <p>${f.healthReason}</p>
                            </div>
                            <div class="insight-card smart-tip">
                                <div class="insight-header">
                                    <i data-lucide="lightbulb"></i>
                                    <span>Calorify Smart Tip</span>
                                </div>
                                <p>${f.tip}</p>
                            </div>
                        </div>

                        <!-- Actions Bar -->
                        <div class="final-actions-bar">
                            <div class="final-actions-left">
                                <button class="btn-secondary-action" id="btn-copy-summary">
                                    <i data-lucide="clipboard-copy"></i>
                                    <span>Copy Summary</span>
                                </button>
                                <button class="btn-secondary-action" id="btn-view-json">
                                    <i data-lucide="code-2"></i>
                                    <span>Inspect JSON</span>
                                </button>
                            </div>
                            <a href="https://play.google.com/store/apps/details?id=dev.thecodepapaya.calorify" 
                               class="btn-download-app" target="_blank" rel="noopener noreferrer">
                                <i data-lucide="smartphone"></i>
                                <span>Get Calorify on Android</span>
                            </a>
                        </div>
                    </div>
                `;

                if (finalCardContainer) {
                    finalCardContainer.innerHTML = html;
                    finalCardContainer.scrollIntoView({ behavior: 'smooth', block: 'nearest' });

                    // Setup copy summary
                    const copyBtn = document.getElementById('btn-copy-summary');
                    if (copyBtn) {
                        copyBtn.addEventListener('click', () => {
                            const summaryText = `${d.mealTitle} (${d.mealType})\nCalories: ${f.calories} kcal [${f.caloriesMin}-${f.caloriesMax}]\nProtein: ${f.protein}g | Carbs: ${f.carbs}g | Fat: ${f.fat}g | Fiber: ${f.fiber}g\nHealth Score: ${f.healthScore}\nTip: ${f.tip}`;
                            navigator.clipboard.writeText(summaryText).then(() => {
                                copyBtn.innerHTML = '<i data-lucide="check"></i><span>Copied!</span>';
                                refreshIcons();
                                setTimeout(() => {
                                    copyBtn.innerHTML = '<i data-lucide="clipboard-copy"></i><span>Copy Summary</span>';
                                    refreshIcons();
                                }, 2000);
                            });
                        });
                    }

                    // Setup View JSON
                    const jsonBtn = document.getElementById('btn-view-json');
                    if (jsonBtn) {
                        jsonBtn.addEventListener('click', () => {
                            const jsonStr = JSON.stringify({
                                analysis_id: client.activeAnalysisId || "ca_demo_completed",
                                status: "PRESENTED",
                                meal: {
                                    name: d.mealTitle,
                                    type: d.mealType,
                                    macros: {
                                        calorie: { value: f.calories, min_value: f.caloriesMin, max_value: f.caloriesMax },
                                        protein: { value: f.protein },
                                        carb: { value: f.carbs },
                                        fat: { value: f.fat },
                                        fiber: { value: f.fiber }
                                    },
                                    health: {
                                        health_score: f.healthScore,
                                        health_score_reason: f.healthReason
                                    },
                                    metadata: {
                                        tip: f.tip
                                    }
                                }
                            }, null, 2);

                            alert("Calorify Analysis API Status JSON:\n\n" + jsonStr);
                        });
                    }
                }
            }
        }

        function appendOrUpdateStage(id, html) {
            if (!intermediateContainer) return;
            let el = document.getElementById(id);
            if (!el) {
                el = document.createElement('div');
                el.id = id;
                intermediateContainer.appendChild(el);
            }
            el.innerHTML = html;
        }

        // Auto-run if query param ?prompt= is present
        const urlParams = new URLSearchParams(window.location.search);
        const queryPrompt = urlParams.get('prompt');
        if (queryPrompt && textarea) {
            textarea.value = decodeURIComponent(queryPrompt);
            textarea.dispatchEvent(new Event('input'));
            if (btnAnalyze) {
                setTimeout(() => btnAnalyze.click(), 400);
            }
        }
    });
})();
