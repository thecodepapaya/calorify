import dotenv from 'dotenv';
import { readFileSync } from 'fs';
import { resolve } from 'path';

// Load environment variables
dotenv.config();

interface Config {
    readonly APP_NAME: string;
    readonly DEBUG: boolean;
    readonly API_V1_STR: string;
    readonly SECRET_KEY: string;
    readonly DATABASE_URL: string | null;
    readonly FIREBASE_SERVICE_ACCOUNT_PATH: string | null;
    readonly ENVIRONMENT: 'development' | 'staging' | 'production';
    readonly PORT: number;
    readonly EXTERNAL_PORT: number; // Port exposed to host (for Docker port mapping)
    readonly OPENAI_API_KEY: string | null;
    readonly ORACLE_BUCKET_DOWNLOAD_URL: string;
    readonly LOKI_URL: string | null;
    /** Log full request/response bodies in JSON logs (Grafana/Loki). Default true for staging, false for production. */
    readonly LOG_REQUEST_RESPONSE_BODIES: boolean;
    /** Max size in bytes for request/response body in logs. Larger bodies are truncated. */
    readonly MAX_BODY_LOG_BYTES: number;
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

function validateFirebaseServiceAccount(path: string | null): string | null {
    if (path === null) {
        return null;
    }

    try {
        const resolvedPath = resolve(path);
        const content = readFileSync(resolvedPath, 'utf-8');
        JSON.parse(content); // Validate it's valid JSON
        return resolvedPath;
    } catch (error) {
        throw new Error(`Invalid FIREBASE_SERVICE_ACCOUNT_PATH: ${path}. Error: ${error instanceof Error ? error.message : 'Unknown error'}`);
    }
}

const port = getEnvVarNumber('PORT', 8000);
const config: Config = {
    APP_NAME: getEnvVar('APP_NAME', 'CalorifyBackend'),
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
