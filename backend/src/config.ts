import dotenv from 'dotenv';
import { existsSync } from 'fs';
import { readFileSync } from 'fs';
import { join, resolve } from 'path';

// Load environment variables: use staging.env for local dev (no separate dev env file),
// then .env if present for overrides (e.g. DATABASE_URL, FIREBASE_SERVICE_ACCOUNT_PATH).
if (existsSync('staging.env')) {
    dotenv.config({ path: 'staging.env' });
}
dotenv.config({ override: true });

interface Config {
    readonly APP_NAME: string;
    /** Version returned at GET /. Set APP_VERSION in env, or falls back to package.json version. */
    readonly APP_VERSION: string;
    readonly DEBUG: boolean;
    readonly API_V1_STR: string;
    readonly SECRET_KEY: string;
    readonly DATABASE_URL: string | null;
    readonly FIREBASE_SERVICE_ACCOUNT_PATH: string | null;
    readonly ENVIRONMENT: 'development' | 'staging' | 'production';
    readonly PORT: number;
    readonly EXTERNAL_PORT: number; // Port exposed to host (for Docker port mapping)
    readonly OPENAI_API_KEY: string | null;
    readonly OPENROUTER_API_KEY: string | null;
    readonly OPENROUTER_BASE_URL: string;
    readonly OPENROUTER_MEAL_MODEL: string;
    readonly OPENROUTER_FREE_MODEL: string;
    readonly OPENROUTER_HTTP_REFERER: string | null;
    readonly GEMINI_API_KEY: string | null;
    readonly ORACLE_BUCKET_DOWNLOAD_URL: string;
    readonly LOKI_URL: string | null;
    /** Log full request/response bodies in JSON logs (Grafana/Loki). Default true for staging, false for production. */
    readonly LOG_REQUEST_RESPONSE_BODIES: boolean;
    /** Max size in bytes for request/response body in logs. Larger bodies are truncated. */
    readonly MAX_BODY_LOG_BYTES: number;
    /** Trust X-Forwarded-* headers for client IP (set true when behind a proxy/load balancer). */
    readonly TRUST_PROXY: boolean;
    readonly USDA_AUTO_REFRESH_ENABLED: boolean;
    readonly USDA_REFRESH_CRON: string;
    readonly USDA_DATA_DIR: string;
    readonly USDA_DATASET_VERSION: string | null;
    readonly USDA_SOURCE_RELEASE_DATE: string | null;
    readonly USDA_ZIP_URL: string;
    /** Optional path to meal analysis rotating tips JSON; default backend/data/meal_analysis_tips.json */
    readonly MEAL_ANALYSIS_TIPS_PATH: string | null;
}

function getEnvVar(name: string, defaultValue?: string): string {
    const value = process.env[name];
    if (value === undefined) {
        if (defaultValue !== undefined) {
            return defaultValue;
        }
        throw new Error(`Required environment variable ${name} is not set`);
    }
    return value;
}

function getEnvVarOptional(name: string): string | null {
    const value = process.env[name];
    return value === undefined ? null : value;
}

function getEnvVarBoolean(name: string, defaultValue: boolean): boolean {
    const value = process.env[name];
    if (value === undefined) {
        return defaultValue;
    }
    return value.toLowerCase() === 'true' || value === '1';
}

function getEnvVarNumber(name: string, defaultValue: number): number {
    const value = process.env[name];
    if (value === undefined) {
        return defaultValue;
    }
    const parsed = Number.parseInt(value, 10);
    if (Number.isNaN(parsed)) {
        throw new Error(`Environment variable ${name} must be a valid number, got: ${value}`);
    }
    return parsed;
}

function validateEnvironment(env: string): 'development' | 'staging' | 'production' {
    if (env === 'development' || env === 'staging' || env === 'production') {
        return env;
    }
    throw new Error(`Invalid ENVIRONMENT value: ${env}. Must be one of: development, staging, production`);
}

const DOCKER_FIREBASE_PATH = '/app/firebase-service-account.json';
const LOCAL_FIREBASE_FALLBACK = 'firebase-adminsdk.json';

function validateFirebaseServiceAccount(path: string | null): string | null {
    if (path === null) {
        return null;
    }

    let resolvedPath = resolve(path);
    // When running locally, staging.env points to Docker path /app/... which doesn't exist.
    // Fall back to firebase-adminsdk.json in cwd (backend/) so local dev works without .env.
    if (resolvedPath === resolve(DOCKER_FIREBASE_PATH) && !existsSync(resolvedPath)) {
        const fallback = resolve(LOCAL_FIREBASE_FALLBACK);
        if (existsSync(fallback)) {
            resolvedPath = fallback;
        } else {
            // Neither Docker path nor local fallback exists — Firebase disabled for local dev.
            // Place firebase-adminsdk.json in backend/ to enable Firebase auth locally.
            console.warn('[config] Firebase service account not found — Firebase auth disabled. Add backend/firebase-adminsdk.json to enable it.');
            return null;
        }
    }

    try {
        const content = readFileSync(resolvedPath, 'utf-8');
        JSON.parse(content); // Validate it's valid JSON
        return resolvedPath;
    } catch (error) {
        throw new Error(`Invalid FIREBASE_SERVICE_ACCOUNT_PATH: ${path}. Error: ${error instanceof Error ? error.message : 'Unknown error'}`);
    }
}

const port = getEnvVarNumber('PORT', 8000);

function getAppVersion(): string {
    const fromEnv = getEnvVarOptional('APP_VERSION');
    if (fromEnv) return fromEnv;
    try {
        const pkg = JSON.parse(readFileSync(join(process.cwd(), 'package.json'), 'utf-8'));
        return typeof pkg.version === 'string' ? pkg.version : '1.0.0';
    } catch {
        return '1.0.0';
    }
}

const config: Config = {
    APP_NAME: getEnvVar('APP_NAME', 'CalorifyBackend'),
    APP_VERSION: getAppVersion(),
    DEBUG: getEnvVarBoolean('DEBUG', true),
    API_V1_STR: getEnvVar('API_V1_STR', '/api/v1'),
    SECRET_KEY: getEnvVar('SECRET_KEY', 'DEFAULT_SECRET_KEY'),
    DATABASE_URL: getEnvVarOptional('DATABASE_URL'),
    FIREBASE_SERVICE_ACCOUNT_PATH: validateFirebaseServiceAccount(
        getEnvVarOptional('FIREBASE_SERVICE_ACCOUNT_PATH')
    ),
    ENVIRONMENT: validateEnvironment(getEnvVar('ENVIRONMENT', 'development')),
    PORT: port,
    EXTERNAL_PORT: getEnvVarNumber('EXTERNAL_PORT', port), // Defaults to PORT if not set
    OPENAI_API_KEY: getEnvVarOptional('OPENAI_API_KEY'),
    OPENROUTER_API_KEY: getEnvVarOptional('OPENROUTER_API_KEY'),
    OPENROUTER_BASE_URL: getEnvVar(
        'OPENROUTER_BASE_URL',
        'https://openrouter.ai/api/v1'
    ),
    OPENROUTER_MEAL_MODEL: getEnvVar(
        'OPENROUTER_MEAL_MODEL',
        'openai/gpt-4.1-nano'
    ),
    // OpenRouter selects a currently available free model that supports the
    // request's capabilities (vision / structured output where required).
    OPENROUTER_FREE_MODEL: getEnvVar('OPENROUTER_FREE_MODEL', 'openrouter/free'),
    OPENROUTER_HTTP_REFERER: getEnvVarOptional('OPENROUTER_HTTP_REFERER'),
    GEMINI_API_KEY: getEnvVarOptional('GEMINI_API_KEY'),
    // Oracle Object Storage pre-authenticated link for downloading
    // calorify-download-auth-bucket-link
    // Backup download link for when the above expires:
    // https://bmm3s6m8sdi5.objectstorage.ap-mumbai-1.oci.customer-oci.com/p/oOGxU2_EYPNWy2udsdJ9tzpbqdbRHQ5DmnpdoSEHfI1N6Q448dlg2tVUc_cxbELS/n/bmm3s6m8sdi5/b/calorify-images/o/
    ORACLE_BUCKET_DOWNLOAD_URL: getEnvVar(
        'ORACLE_BUCKET_DOWNLOAD_URL',
        'https://objectstorage.ap-mumbai-1.oraclecloud.com/p/oOGxU2_EYPNWy2udsdJ9tzpbqdbRHQ5DmnpdoSEHfI1N6Q448dlg2tVUc_cxbELS/n/bmm3s6m8sdi5/b/calorify-images/o/'
    ),
    LOKI_URL: getEnvVarOptional('LOKI_URL'),
    LOG_REQUEST_RESPONSE_BODIES: getEnvVarBoolean(
        'LOG_REQUEST_RESPONSE_BODIES',
        true
    ),
    MAX_BODY_LOG_BYTES: getEnvVarNumber('MAX_BODY_LOG_BYTES', 8192),
    TRUST_PROXY: getEnvVarBoolean('TRUST_PROXY', false),
    USDA_AUTO_REFRESH_ENABLED: getEnvVarBoolean('USDA_AUTO_REFRESH_ENABLED', false),
    USDA_REFRESH_CRON: getEnvVar('USDA_REFRESH_CRON', '0 3 1 * *'),
    USDA_DATA_DIR: getEnvVar('USDA_DATA_DIR', join(process.cwd(), 'data', 'usda')),
    USDA_DATASET_VERSION: getEnvVarOptional('USDA_DATASET_VERSION'),
    USDA_SOURCE_RELEASE_DATE: getEnvVarOptional('USDA_SOURCE_RELEASE_DATE'),
    USDA_ZIP_URL: getEnvVar(
        'USDA_ZIP_URL',
        'https://fdc.nal.usda.gov/fdc-datasets/FoodData_Central_csv_2025-12-18.zip'
    ),
    MEAL_ANALYSIS_TIPS_PATH: getEnvVarOptional('MEAL_ANALYSIS_TIPS_PATH'),
} as const;

// Validate critical settings in production
if (config.ENVIRONMENT === 'production') {
    if (config.SECRET_KEY === 'DEFAULT_SECRET_KEY') {
        throw new Error('SECRET_KEY must be set to a secure value in production');
    }
    if (config.DEBUG === true) {
        throw new Error('DEBUG must be false in production');
    }
    if (config.FIREBASE_SERVICE_ACCOUNT_PATH === null) {
        throw new Error('FIREBASE_SERVICE_ACCOUNT_PATH must be set in production');
    }
}

export default config;
