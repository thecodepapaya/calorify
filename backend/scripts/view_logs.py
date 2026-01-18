import sys
import os

# Add the parent directory to sys.path to import app modules
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from sqlalchemy.orm import Session
from app.database import SessionLocal
from app.models.api_log import ApiLog
from tabulate import tabulate

def view_recent_logs(limit: int = 50):
    db = SessionLocal()
    try:
        logs = db.query(ApiLog).order_by(ApiLog.timestamp.desc()).limit(limit).all()
        
        table_data = []
        for log in logs:
            table_data.append([
                log.timestamp.strftime("%Y-%m-%d %H:%M:%S"),
                log.user_id or "Anonymous",
                log.method,
                log.path,
                log.status_code,
                f"{log.response_time:.4f}s",
                log.ip_address
            ])
            
        headers = ["Timestamp", "User ID", "Method", "Path", "Status", "Duration", "IP"]
        print(tabulate(table_data, headers=headers))
    finally:
        db.close()

if __name__ == "__main__":
    limit = 50
    if len(sys.argv) > 1:
        limit = int(sys.argv[1])
    view_recent_logs(limit)
