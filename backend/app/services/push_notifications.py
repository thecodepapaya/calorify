from firebase_admin import messaging
from typing import List, Optional
from app.utils.logger import logger

class PushNotificationService:
    @staticmethod
    def send_to_token(token: str, title: str, body: str, data: Optional[dict] = None):
        """
        Send a push notification to a specific device token.
        """
        try:
            message = messaging.Message(
                notification=messaging.Notification(
                    title=title,
                    body=body,
                ),
                data=data or {},
                token=token,
            )
            response = messaging.send(message)
            logger.info(f"Successfully sent message: {response}")
            return response
        except Exception as e:
            logger.error(f"Error sending push notification: {e}")
            return None

    @staticmethod
    def send_to_multiple_tokens(tokens: List[str], title: str, body: str, data: Optional[dict] = None):
        """
        Send a push notification to multiple device tokens.
        """
        if not tokens:
            return None
            
        try:
            message = messaging.MulticastMessage(
                notification=messaging.Notification(
                    title=title,
                    body=body,
                ),
                data=data or {},
                tokens=tokens,
            )
            response = messaging.send_multicast(message)
            logger.info(f"Successfully sent multicast message: {response.success_count} success, {response.failure_count} failure")
            return response
        except Exception as e:
            logger.error(f"Error sending multicast push notification: {e}")
            return None

push_notification_service = PushNotificationService()
