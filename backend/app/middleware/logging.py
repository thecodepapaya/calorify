import time
from fastapi import Request, Response
from starlette.middleware.base import BaseHTTPMiddleware
from app.database import SessionLocal
from app.models.api_log import ApiLog
from app.services.firebase_auth import auth as firebase_auth
from app.utils.logger import logger

class RequestLoggingMiddleware(BaseHTTPMiddleware):
    async def dispatch(self, request: Request, call_next):
        start_time = time.time()
        
        # Get user ID from token if present (optional logging)
        user_id = None
        auth_header = request.headers.get("Authorization")
        if auth_header and auth_header.startswith("Bearer "):
            token = auth_header.split(" ")[1]
            try:
                # We don't verify again if it's already verified in deps, 
                # but middleware runs before deps.
                # To avoid double verification, we can just decode without verifying if needed,
                # or just accept that we might not have user_id here.
                decoded_token = firebase_auth.verify_id_token(token, check_revocable=False)
                user_id = decoded_token.get("uid")
            except:
                pass

        response = await call_next(request)
        
        process_time = time.time() - start_time
        
        # Log to database asynchronously (optional: use background tasks)
        try:
            db = SessionLocal()
            log_entry = ApiLog(
                user_id=user_id,
                method=request.method,
                path=request.url.path,
                status_code=response.status_code,
                response_time=process_time,
                ip_address=request.client.host if request.client else None,
                user_agent=request.headers.get("User-Agent")
            )
            db.add(log_entry)
            db.commit()
            db.close()
        except Exception as e:
            logger.error(f"Error saving API log: {e}")

        return response
