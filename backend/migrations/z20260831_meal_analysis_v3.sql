CREATE TABLE IF NOT EXISTS meal_analysis_v3_session (
    user_id TEXT NOT NULL,
    analysis_id UUID NOT NULL,
    input_data JSONB NOT NULL,
    input_digest TEXT NOT NULL,
    result_data JSONB,
    nutrition_answers JSONB,
    meal_type_answer TEXT,
    feedback_signal TEXT,
    feedback_at TIMESTAMPTZ,
    logged_at TIMESTAMPTZ,
    logged_meal JSONB,
    deleted_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, analysis_id),
    CONSTRAINT meal_analysis_v3_meal_type_check CHECK (
        meal_type_answer IS NULL OR
        meal_type_answer IN ('BREAKFAST', 'LUNCH', 'DINNER', 'SNACK')
    ),
    CONSTRAINT meal_analysis_v3_feedback_check CHECK (
        feedback_signal IS NULL OR feedback_signal IN ('UP', 'DOWN')
    )
);

CREATE INDEX IF NOT EXISTS meal_analysis_v3_session_updated_idx
    ON meal_analysis_v3_session (updated_at DESC);
