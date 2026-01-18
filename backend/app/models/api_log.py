from sqlalchemy import Column, Integer, String, DateTime, Float
from sqlalchemy.sql import func
from app.database import Base

class ApiLog(Base):
    __tablename__ = "api_logs"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(String, index=True, nullable=True)  # Firebase UID
    method = Column(String)
    path = Column(String)
    status_code = Column(Integer)
    response_time = Column(Float)  # in seconds
    ip_address = Column(String)
    user_agent = Column(String)
    
    timestamp = Column(DateTime(timezone=True), server_default=func.now())
