CREATE TABLE IF NOT EXISTS users (
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    uid VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_active_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS health_data (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_uid VARCHAR(255) REFERENCES users (uid) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    height DOUBLE PRECISION,
    height_unit VARCHAR(5) CHECK (height_unit IN ('CM', 'FT')),
    weight DOUBLE PRECISION,
    target_weight DOUBLE PRECISION,
    weight_unit VARCHAR(5) CHECK (weight_unit IN ('KG', 'LB')),
    gender VARCHAR(10) CHECK (
        gender IN ('MALE', 'FEMALE', 'OTHER')
    ),
    date_of_birth DATE,
    weight_goal VARCHAR(20) CHECK (
        weight_goal IN (
            'LOSE_WEIGHT',
            'MAINTAIN_WEIGHT',
            'GAIN_WEIGHT'
        )
    ),
    activity_level VARCHAR(20) CHECK (
        activity_level IN (
            'SEDENTARY',
            'LIGHTLY_ACTIVE',
            'MODERATELY_ACTIVE',
            'VERY_ACTIVE',
            'EXTREMELY_ACTIVE'
        )
    ),
    daily_calorie_goal int,
    daily_carb_goal int,
    daily_protein_goal int,
    daily_fat_goal int,
    daily_fiber_goal int
);

CREATE TABLE IF NOT EXISTS meals (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    user_uid VARCHAR(255) NOT NULL REFERENCES users (uid) ON DELETE CASCADE,
    name VARCHAR(255),
    quantity VARCHAR(255),
    meal_image_url TEXT,
    meal_description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    meal_type VARCHAR(30) CHECK (
        meal_type IN (
            'MEAL_TYPE_UNKNOWN',
            'MEAL_TYPE_BREAKFAST',
            'MEAL_TYPE_LUNCH',
            'MEAL_TYPE_DINNER',
            'MEAL_TYPE_SNACK'
        )
    ),
    health_score VARCHAR(20) CHECK (
        health_score IN (
            'NEUTRAL',
            'HEALTHY',
            'UNHEALTHY'
        )
    ),
    meal_health_score_reason VARCHAR(255),
    meal_tip VARCHAR(255),
    calorie_min int,
    calorie_default int NOT NULL,
    calorie_max int,
    carb_min int,
    carb_default int NOT NULL,
    carb_max int,
    protein_min int,
    protein_default int NOT NULL,
    protein_max int,
    fat_min int,
    fat_default int NOT NULL,
    fat_max int,
    fiber_min int,
    fiber_default int NOT NULL,
    fiber_max int
);

CREATE INDEX IF NOT EXISTS index_meals_user_uid_timestamp ON meals (user_uid, created_at DESC);

CREATE INDEX IF NOT EXISTS health_data_find_by_uid ON health_data (user_uid);

CREATE TABLE IF NOT EXISTS meal_analysis (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid (),
    user_uid VARCHAR(255) REFERENCES users (uid) ON DELETE CASCADE,
    text TEXT,
    image_base64 TEXT,
    image_mime_type VARCHAR(50) DEFAULT 'image/webp',
    status VARCHAR(50) CHECK (
        status IN (
            'INITIATED',
            'COMPONENT_DECOMPOSED',
            'INGREDIENT_DECOMPOSED',
            'USDA_MACRO_HYDRATED',
            'CLARIFICATION_GENERATED',
            'CLARIFICATION_RESOLVED',
            'PRESENTED',
            'FAILED'
        )
    ) DEFAULT 'INITIATED',
    decomposed_component JSONB,
    decomposed_component_at TIMESTAMPTZ,
    decomposed_ingredient JSONB,
    decomposed_ingredient_at TIMESTAMPTZ,
    usda_enriched JSONB,
    usda_enriched_at TIMESTAMPTZ,
    final_response JSONB,
    final_response_at TIMESTAMPTZ,
    is_liked BOOLEAN,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE meal_analysis
ADD COLUMN IF NOT EXISTS generated_clarification JSONB,
ADD COLUMN IF NOT EXISTS generated_clarification_at TIMESTAMPTZ,
ADD COLUMN IF NOT EXISTS failure_reason TEXT,
ADD COLUMN IF NOT EXISTS locale VARCHAR(50),
ADD COLUMN IF NOT EXISTS country_code VARCHAR(10),
ADD COLUMN IF NOT EXISTS timezone VARCHAR(100),
ADD COLUMN IF NOT EXISTS local_captured_at TIMESTAMPTZ;

CREATE TABLE IF NOT EXISTS llm_call (
    id bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    analysis_id UUID REFERENCES meal_analysis (id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP NOT NULL,
    stage VARCHAR(30) NOT NULL,
    model VARCHAR(100) NOT NULL,
    prompt_tokens int,
    cached_tokens int,
    completion_tokens int,
    duration_ms int NOT NULL,
    error TEXT
);

CREATE INDEX IF NOT EXISTS llm_call_stage_timestamp_idx ON llm_call (stage, created_at);

CREATE INDEX IF NOT EXISTS llm_call_analysis_id_idx ON llm_call (analysis_id);

DO $$
BEGIN
IF EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE
        table_schema = 'public'
        AND table_name = 'users'
        AND column_name = 'created_at'
        AND data_type = 'timestamp without time zone'
) THEN
        ALTER TABLE users
        ALTER COLUMN created_at TYPE TIMESTAMPTZ USING created_at AT TIME ZONE 'UTC';

END IF;

IF EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE
        table_schema = 'public'
        AND table_name = 'users'
        AND column_name = 'last_active_at'
        AND data_type = 'timestamp without time zone'
) THEN
ALTER TABLE users
ALTER COLUMN last_active_at TYPE TIMESTAMPTZ USING last_active_at AT TIME ZONE 'UTC';

END IF;

IF EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE
        table_schema = 'public'
        AND table_name = 'health_data'
        AND column_name = 'created_at'
        AND data_type = 'timestamp without time zone'
) THEN
ALTER TABLE health_data
ALTER COLUMN created_at TYPE TIMESTAMPTZ USING created_at AT TIME ZONE 'UTC';

END IF;

IF EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE
        table_schema = 'public'
        AND table_name = 'meals'
        AND column_name = 'created_at'
        AND data_type = 'timestamp without time zone'
) THEN
ALTER TABLE meals
ALTER COLUMN created_at TYPE TIMESTAMPTZ USING created_at AT TIME ZONE 'UTC';

END IF;

END $$;

ALTER TABLE llm_call ADD COLUMN IF NOT EXISTS component_id int;