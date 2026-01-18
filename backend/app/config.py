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
    ENVIRONMENT: str = os.getenv("ENVIRONMENT", "development")

    class Config:
        env_file = ".env"
        # Support loading from different files if needed
        if os.getenv("ENVIRONMENT") == "staging":
            env_file = "staging.env"
        elif os.getenv("ENVIRONMENT") == "production":
            env_file = "production.env"
        case_sensitive = True

settings = Settings()
