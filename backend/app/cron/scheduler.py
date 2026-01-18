from apscheduler.schedulers.asyncio import AsyncIOScheduler
from apscheduler.jobstores.sqlalchemy import SQLAlchemyJobStore
from app.config import settings
from app.utils.logger import logger

# Configure job stores
jobstores = {
    'default': SQLAlchemyJobStore(url=settings.DATABASE_URL)
}

scheduler = AsyncIOScheduler(jobstores=jobstores)

def start_scheduler():
    if not scheduler.running:
        scheduler.start()
        logger.info("APScheduler started")

def stop_scheduler():
    if scheduler.running:
        scheduler.shutdown()
        logger.info("APScheduler stopped")
