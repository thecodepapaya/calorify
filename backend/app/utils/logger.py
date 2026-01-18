import logging
import sys
from app.config import settings

def setup_logging():
    logging.basicConfig(
        level=logging.INFO if not settings.DEBUG else logging.DEBUG,
        format="%(asctime)s [%(levelname)s] %(name)s: %(message)s",
        handlers=[
            logging.StreamHandler(sys.stdout)
        ]
    )
    
    # Optional: File logging or external loggers can be added here
    logger = logging.getLogger("app")
    return logger

logger = setup_logging()
