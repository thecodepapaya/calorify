import os
from pydantic_settings import BaseSettings
from typing import Optional

class Settings(BaseSettings):
    APP_NAME: str = "CalorifyBackend"
    DEBUG: bool = True
    API_V1_STR: str = "/api/v1"
    SECRET_KEY: str = "DEFAULT_SECRET_KEY"
    
    # Database
    DATABASE_URL: str = "postgresql://calorify:calorify_pwd@localhost:5432/calorify_db"
    
    # Firebase
    FIREBASE_SERVICE_ACCOUNT_PATH: Optional[str] = None
    
    # Environment
    ENVIRONMENT: str = "development"

    class Config:
        case_sensitive = True
        # Pydantic Settings will automatically detect environment variables.
        # When running in Docker, these are injected via the 'env_file' or 'environment' sections.

settings = Settings()
