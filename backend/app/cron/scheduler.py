import time
from apscheduler.schedulers.asyncio import AsyncIOScheduler
from apscheduler.jobstores.sqlalchemy import SQLAlchemyJobStore
from app.config import settings
from app.utils.logger import logger
from sqlalchemy import create_engine

# Configure job stores
jobstores = {
    'default': SQLAlchemyJobStore(url=settings.DATABASE_URL)
}

scheduler = AsyncIOScheduler(jobstores=jobstores)

def start_scheduler():
    if scheduler.running:
        return

    # Small retry logic to wait for DB to be truly ready
    retries = 5
    while retries > 0:
        try:
            # Test connection
            engine = create_engine(settings.DATABASE_URL)
            with engine.connect() as conn:
                pass
            scheduler.start()
            logger.info("APScheduler started successfully")
            return
        except Exception as e:
            logger.warning(f"Database not ready for scheduler (retrying in 2s...): {e}")
            retries -= 1
            time.sleep(2)
    
    logger.error("Could not start APScheduler: Database connection failed after retries")

def stop_scheduler():
    if scheduler.running:
        scheduler.shutdown()
        logger.info("APScheduler stopped")
