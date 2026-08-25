CREATE TABLE IF NOT EXISTS meal_analysis_observation (
    id BIGSERIAL PRIMARY KEY,
    analysis_id UUID NOT NULL REFERENCES meal_analysis_session(analysis_id) ON DELETE CASCADE,
    request_id VARCHAR(80) NOT NULL,
    action VARCHAR(40) NOT NULL,
    stream_format VARCHAR(12) NOT NULL CHECK (stream_format IN ('ndjson', 'sse')),
    event_sequence JSONB NOT NULL DEFAULT '[]'::jsonb,
    trace_summary JSONB NOT NULL DEFAULT '{}'::jsonb,
    last_step VARCHAR(32),
    had_error BOOLEAN NOT NULL DEFAULT FALSE,
    started_at TIMESTAMPTZ NOT NULL,
    completed_at TIMESTAMPTZ NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_meal_analysis_observation_analysis_time
    ON meal_analysis_observation(analysis_id, started_at ASC, id ASC);
