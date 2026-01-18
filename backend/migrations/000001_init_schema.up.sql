CREATE TABLE users (
    id TEXT PRIMARY KEY,
    email TEXT UNIQUE NOT NULL,
    height DOUBLE PRECISION,
    weight DOUBLE PRECISION,
    gender TEXT,
    date_of_birth TIMESTAMP WITH TIME ZONE,
    weight_goal TEXT,
    activity_level TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE meals (
    id SERIAL PRIMARY KEY,
    user_id TEXT REFERENCES users(id),
    meal_name TEXT NOT NULL,
    meal_quantity TEXT,
    meal_type TEXT,
    calories INTEGER,
    protein DOUBLE PRECISION,
    carbs DOUBLE PRECISION,
    fat DOUBLE PRECISION,
    fiber DOUBLE PRECISION,
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    calorie_confidence INTEGER,
    tip TEXT,
    health_score TEXT,
    health_reason TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE
);

CREATE TABLE api_logs (
    id SERIAL PRIMARY KEY,
    user_id TEXT,
    method TEXT,
    path TEXT,
    status INTEGER,
    duration_ms BIGINT,
    ip TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE cron_jobs (
    id SERIAL PRIMARY KEY,
    job_name TEXT,
    status TEXT,
    message TEXT,
    duration_ms BIGINT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE fcm_tokens (
    id SERIAL PRIMARY KEY,
    user_id TEXT REFERENCES users(id),
    token TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, token)
);
