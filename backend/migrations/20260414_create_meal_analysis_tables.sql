CREATE TABLE IF NOT EXISTS meal_analysis_session (
    analysis_id UUID PRIMARY KEY,
    parent_analysis_id UUID REFERENCES meal_analysis_session(analysis_id) ON DELETE SET NULL,
    user_id VARCHAR(255),
    source VARCHAR(20) NOT NULL CHECK (source IN ('text', 'image')),
    locale VARCHAR(16) NOT NULL DEFAULT 'en',
    country_code VARCHAR(2),
    request_payload JSONB NOT NULL,
    decomposition_data JSONB,
    ingredients_data JSONB,
    uncertainty_data JSONB,
    meal_type_question_data JSONB,
    selected_meal_type VARCHAR(20),
    selected_meal_type_source VARCHAR(20),
    result_data JSONB,
    clarification_answers JSONB,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_meal_analysis_session_user_id
    ON meal_analysis_session(user_id);

CREATE INDEX IF NOT EXISTS idx_meal_analysis_session_parent_analysis_id
    ON meal_analysis_session(parent_analysis_id);

CREATE TABLE IF NOT EXISTS meal_analysis_clarification (
    id BIGSERIAL PRIMARY KEY,
    analysis_id UUID NOT NULL REFERENCES meal_analysis_session(analysis_id) ON DELETE CASCADE,
    answers_payload JSONB NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_meal_analysis_clarification_analysis_id
    ON meal_analysis_clarification(analysis_id);

CREATE TABLE IF NOT EXISTS meal_analysis_meal_type (
    id BIGSERIAL PRIMARY KEY,
    analysis_id UUID NOT NULL REFERENCES meal_analysis_session(analysis_id) ON DELETE CASCADE,
    selected_meal_type VARCHAR(20) NOT NULL,
    source VARCHAR(20) NOT NULL CHECK (source IN ('model', 'user')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_meal_analysis_meal_type_analysis_id
    ON meal_analysis_meal_type(analysis_id);

CREATE TABLE IF NOT EXISTS meal_analysis_feedback (
    id BIGSERIAL PRIMARY KEY,
    analysis_id UUID NOT NULL REFERENCES meal_analysis_session(analysis_id) ON DELETE CASCADE,
    user_id VARCHAR(255),
    signal VARCHAR(10) NOT NULL CHECK (signal IN ('up', 'down')),
    issues TEXT[] NOT NULL DEFAULT '{}',
    other_text TEXT,
    payload JSONB,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_meal_analysis_feedback_analysis_id
    ON meal_analysis_feedback(analysis_id);

CREATE INDEX IF NOT EXISTS idx_meal_analysis_feedback_user_id
    ON meal_analysis_feedback(user_id);

CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_meal_analysis_session_updated_at
    BEFORE UPDATE ON meal_analysis_session
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();
