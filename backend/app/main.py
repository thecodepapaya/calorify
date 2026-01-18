from fastapi import FastAPI, Depends
from fastapi.middleware.cors import CORSMiddleware
from contextlib import asynccontextmanager
from app.config import settings
from app.api.v1 import food_analysis, users, meals
from app.middleware.logging import RequestLoggingMiddleware
from app.cron.scheduler import start_scheduler, stop_scheduler, scheduler
from app.cron.jobs.example_job import send_daily_reminders

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    start_scheduler()
    # Register jobs if not already registered
    if not scheduler.get_job('daily_reminder'):
        scheduler.add_job(
            send_daily_reminders, 
            'cron', 
            hour=9, 
            minute=0, 
            id='daily_reminder',
            replace_existing=True
        )
    yield
    # Shutdown
    stop_scheduler()

app = FastAPI(
    title=settings.APP_NAME,
    openapi_url=f"{settings.API_V1_STR}/openapi.json",
    debug=settings.DEBUG,
    lifespan=lifespan
)

# Add logging middleware
app.add_middleware(RequestLoggingMiddleware)

# Set all CORS enabled origins
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # In production, specify origins
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.get("/")
async def root():
    return {"message": "Welcome to Calorify Backend API", "version": "1.0.0"}

@app.get("/health")
async def health_check():
    return {"status": "healthy"}

# Include routers
app.include_router(food_analysis.router, prefix=f"{settings.API_V1_STR}/food", tags=["food"])
app.include_router(users.router, prefix=f"{settings.API_V1_STR}/users", tags=["users"])
app.include_router(meals.router, prefix=f"{settings.API_V1_STR}/meals", tags=["meals"])
