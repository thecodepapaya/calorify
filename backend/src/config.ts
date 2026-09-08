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
    /** Version returned at GET /, read from the package bundled in the image. */
    readonly APP_VERSION: string;
    readonly DEBUG: boolean;
    readonly API_V1_STR: string;
    readonly API_V3_STR: string;
    readonly DATABASE_URL: string | null;
    /** Shared USDA reference database. Falls back to DATABASE_URL for local development. */
    readonly USDA_DATABASE_URL: string | null;
    readonly FIREBASE_SERVICE_ACCOUNT_PATH: string | null;
    readonly ENVIRONMENT: 'development' | 'staging' | 'production';
    readonly PORT: number;
    readonly EXTERNAL_PORT: number; // Port exposed to host (for Docker port mapping)
    readonly OPENAI_API_KEY: string | null;
    readonly OPENROUTER_API_KEY: string | null;
    readonly OPENROUTER_BASE_URL: string;
    readonly OPENROUTER_MEAL_MODEL: string;
    /** Dedicated model override used by the scenario-heavy V3 interpreter. */
    readonly OPENROUTER_MEAL_V3_MODEL: string;
    readonly OPENROUTER_AI_SUMMARY_MODEL: string;
    readonly OPENROUTER_HTTP_REFERER: string | null;
    readonly ORACLE_BUCKET_UPLOAD_URL: string;
    readonly ORACLE_BUCKET_DOWNLOAD_URL: string;
    readonly LOKI_URL: string | null;
    /** Trusted proxy policy: false/true or the number of trusted proxy hops. */
    readonly TRUST_PROXY: boolean | number;
    readonly USDA_DATA_DIR: string;
    readonly USDA_DATASET_VERSION: string | null;
    readonly USDA_SOURCE_RELEASE_DATE: string | null;
    readonly USDA_ZIP_URL: string;
    /** Enables PostgreSQL full-text candidate retrieval for the V3 USDA resolver. */
    readonly USDA_FTS_ENABLED: boolean;
    /** Optional path to meal analysis rotating tips JSON; default backend/data/meal_analysis_tips.json */
    readonly MEAL_ANALYSIS_TIPS_PATH: string | null;
    /** Enables the protected read-only V3 meal-analysis history page. */
    readonly ANALYSIS_HISTORY_PASSWORD: string | null;
    /** Appends successful V3 model nutrition fallback responses as JSON lines; null disables. */
    readonly NUTRITION_FALLBACK_LOG_PATH: string | null;
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

export function parseTrustProxy(value: string | undefined): boolean | number {
    if (value === undefined) return false;

    const normalized = value.trim().toLowerCase();
    if (normalized === 'true') return true;
    if (normalized === 'false' || normalized === '0') return false;
    if (/^[1-9]\d*$/.test(normalized)) {
        const hopCount = Number(normalized);
        if (Number.isSafeInteger(hopCount)) return hopCount;
    }

    throw new Error(
        `Environment variable TRUST_PROXY must be true, false, or a non-negative integer, got: ${value}`
    );
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
    } catch {
        throw new Error('Unable to read Firebase service account configuration');
    }
}

const port = getEnvVarNumber('PORT', 8000);

function getAppVersion(): string {
    try {
        const pkg = JSON.parse(readFileSync(join(process.cwd(), 'package.json'), 'utf-8'));
        if (typeof pkg.version === 'string' && pkg.version.trim() !== '') {
            return pkg.version;
        }
    } catch {
        throw new Error('Unable to read backend version from package.json');
    }
    throw new Error('Backend package.json must contain a non-empty version');
}

const config: Config = {
    APP_NAME: getEnvVar('APP_NAME', 'CalorifyBackend'),
    APP_VERSION: getAppVersion(),
    DEBUG: getEnvVarBoolean('DEBUG', true),
    API_V1_STR: getEnvVar('API_V1_STR', '/api/v1'),
    API_V3_STR: getEnvVar('API_V3_STR', '/api/v3'),
    DATABASE_URL: getEnvVarOptional('DATABASE_URL'),
    USDA_DATABASE_URL: getEnvVarOptional('USDA_DATABASE_URL'),
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
        'openai/gpt-5.6-luna'
    ),
    OPENROUTER_MEAL_V3_MODEL: getEnvVar(
        'OPENROUTER_MEAL_V3_MODEL',
        'openai/gpt-5.6-luna'
    ),
    OPENROUTER_AI_SUMMARY_MODEL: getEnvVar(
        'OPENROUTER_AI_SUMMARY_MODEL',
        'openai/gpt-5.6-luna'
    ),
    OPENROUTER_HTTP_REFERER: getEnvVarOptional('OPENROUTER_HTTP_REFERER'),
    // PAR bases come from env. The upload URL is secret; the read URL is returned to clients.
    ORACLE_BUCKET_UPLOAD_URL: getEnvVar('ORACLE_BUCKET_UPLOAD_URL', ''),
    ORACLE_BUCKET_DOWNLOAD_URL: getEnvVar('ORACLE_BUCKET_DOWNLOAD_URL', ''),
    LOKI_URL: getEnvVarOptional('LOKI_URL'),
    TRUST_PROXY: parseTrustProxy(process.env.TRUST_PROXY),
    USDA_DATA_DIR: getEnvVar('USDA_DATA_DIR', join(process.cwd(), 'data', 'usda')),
    USDA_DATASET_VERSION: getEnvVarOptional('USDA_DATASET_VERSION'),
    USDA_SOURCE_RELEASE_DATE: getEnvVarOptional('USDA_SOURCE_RELEASE_DATE'),
    USDA_ZIP_URL: getEnvVar(
        'USDA_ZIP_URL',
        'https://fdc.nal.usda.gov/fdc-datasets/FoodData_Central_csv_2025-12-18.zip'
    ),
    USDA_FTS_ENABLED: getEnvVarBoolean('USDA_FTS_ENABLED', true),
    MEAL_ANALYSIS_TIPS_PATH: getEnvVarOptional('MEAL_ANALYSIS_TIPS_PATH'),
    ANALYSIS_HISTORY_PASSWORD: getEnvVarOptional('ANALYSIS_HISTORY_PASSWORD'),
    NUTRITION_FALLBACK_LOG_PATH: getEnvVarOptional('NUTRITION_FALLBACK_LOG_PATH'),
} as const;

// Validate critical settings in production
if (config.ENVIRONMENT === 'production') {
    if (config.DEBUG === true) {
        throw new Error('DEBUG must be false in production');
    }
    if (config.FIREBASE_SERVICE_ACCOUNT_PATH === null) {
        throw new Error('FIREBASE_SERVICE_ACCOUNT_PATH must be set in production');
    }
    if (!config.ORACLE_BUCKET_DOWNLOAD_URL) {
        throw new Error('ORACLE_BUCKET_DOWNLOAD_URL must be set in production');
    }
    if (!config.ORACLE_BUCKET_UPLOAD_URL) {
        throw new Error('ORACLE_BUCKET_UPLOAD_URL must be set in production');
    }
    if (!config.OPENROUTER_API_KEY || !config.OPENROUTER_AI_SUMMARY_MODEL) {
        throw new Error(
            'OPENROUTER_API_KEY and OPENROUTER_AI_SUMMARY_MODEL must be set in production'
        );
    }
}

export default config;
