CREATE TABLE IF NOT EXISTS users (
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    uid VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_active_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS health_data (
    user_id int PRIMARY KEY REFERENCES users (id) ON DELETE CASCADE,
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
    user_id int NOT NULL REFERENCES users (id) ON DELETE CASCADE,
    name VARCHAR(255),
    quantity VARCHAR(255),
    meal_image_url TEXT,
    meal_description TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
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

CREATE INDEX IF NOT EXISTS index_meals_user_id_timestamp ON meals (user_id, timestamp DESC);