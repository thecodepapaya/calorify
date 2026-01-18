from sqlalchemy import Column, Integer, String, DateTime, Boolean, ForeignKey, UniqueConstraint
from sqlalchemy.sql import func
from app.database import Base


class IdempotencyKey(Base):
    __tablename__ = "idempotency_keys"
    __table_args__ = (
        UniqueConstraint("user_id", "key", name="uq_idempotency_user_key"),
    )

    id = Column(Integer, primary_key=True, index=True)
    key = Column(String, nullable=False, index=True)
    user_id = Column(Integer, ForeignKey("users.id"), nullable=False)
    op_type = Column(String, nullable=False)
    success = Column(Boolean, default=False)
    error = Column(String, nullable=True)
    remote_id = Column(String, nullable=True)
    created_at = Column(DateTime(timezone=True), server_default=func.now())
