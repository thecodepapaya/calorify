from datetime import datetime, timezone
from typing import Optional

from fastapi import APIRouter, Depends, Request, Response
from sqlalchemy.orm import Session

from app.api import deps
from app.database import get_db
from app.models.idempotency import IdempotencyKey
from app.models.meal import Meal as MealModel
from app.models.user import User, FcmToken
from app.protos.calorify import sync_pb2, models_pb2
from app.utils.proto_utils import (
    meal_type_to_str,
    health_score_to_str,
    apply_user_profile_update,
)

router = APIRouter()


def _get_or_create_user(db: Session, uid: str) -> User:
    user = db.query(User).filter(User.firebase_uid == uid).first()
    if not user:
        user = User(firebase_uid=uid)
        db.add(user)
        db.commit()
        db.refresh(user)
    return user


def _timestamp_to_datetime(ts) -> datetime:
    return ts.ToDatetime().astimezone(timezone.utc)


def _upsert_meal(
    db: Session,
    user: User,
    meal: models_pb2.MealInfo,
) -> Optional[MealModel]:
    client_id = meal.client_id if meal.HasField("client_id") else None

    existing = None
    if client_id:
        existing = (
            db.query(MealModel)
            .filter(MealModel.user_id == user.id, MealModel.client_id == client_id)
            .first()
        )

    meal_type = meal_type_to_str(meal.meal_type)
    health_score = None
    if meal.HasField("health_score"):
        score = health_score_to_str(meal.health_score)
        reason = (
            meal.health_score_reason
            if meal.HasField("health_score_reason")
            else None
        )
        if score is not None or reason is not None:
            health_score = {"score": score, "reason": reason}

    timestamp = (
        _timestamp_to_datetime(meal.timestamp)
        if meal.HasField("timestamp")
        else datetime.now(timezone.utc)
    )

    if existing:
        existing.name = meal.meal_name
        existing.meal_quantity = meal.meal_quantity or None
        existing.meal_type = meal_type
        existing.calories = meal.calories
        existing.protein = meal.protein
        existing.carbs = meal.carbs
        existing.fat = meal.fat
        existing.fiber = meal.fiber
        existing.timestamp = timestamp
        existing.image_url = meal.image_url if meal.HasField("image_url") else None
        existing.health_score = health_score
        db.commit()
        db.refresh(existing)
        return existing

    db_meal = MealModel(
        user_id=user.id,
        client_id=client_id,
        name=meal.meal_name,
        meal_quantity=meal.meal_quantity or None,
        meal_type=meal_type,
        calories=meal.calories,
        protein=meal.protein,
        carbs=meal.carbs,
        fat=meal.fat,
        fiber=meal.fiber,
        timestamp=timestamp,
        image_url=meal.image_url if meal.HasField("image_url") else None,
        health_score=health_score,
    )
    db.add(db_meal)
    db.commit()
    db.refresh(db_meal)
    return db_meal


def _delete_meal(
    db: Session,
    user: User,
    delete_meal: sync_pb2.DeleteMeal,
) -> Optional[MealModel]:
    meal = None
    if delete_meal.HasField("client_id"):
        meal = (
            db.query(MealModel)
            .filter(
                MealModel.user_id == user.id,
                MealModel.client_id == delete_meal.client_id,
            )
            .first()
        )
    elif delete_meal.HasField("local_id"):
        meal = (
            db.query(MealModel)
            .filter(MealModel.user_id == user.id, MealModel.id == delete_meal.local_id)
            .first()
        )

    if meal:
        db.delete(meal)
        db.commit()
    return meal


def _register_fcm_token(
    db: Session,
    user: User,
    token_msg: models_pb2.FcmToken,
) -> None:
    token = token_msg.token
    device_type = token_msg.device_type if token_msg.HasField("device_type") else None
    existing = db.query(FcmToken).filter(FcmToken.token == token).first()
    if existing:
        existing.user_id = user.id
        existing.device_type = device_type
    else:
        db.add(FcmToken(user_id=user.id, token=token, device_type=device_type))
    db.commit()


@router.post("")
async def sync_batch(
    request: Request,
    db: Session = Depends(get_db),
    uid: str = Depends(deps.get_current_user_id),
):
    body = await request.body()
    batch = sync_pb2.SyncBatch()
    batch.ParseFromString(body)

    user = _get_or_create_user(db, uid)
    results = []

    for op in batch.ops:
        existing = (
            db.query(IdempotencyKey)
            .filter(IdempotencyKey.key == op.idempotency_key)
            .filter(IdempotencyKey.user_id == user.id)
            .first()
        )
        if existing:
            results.append(
                sync_pb2.SyncResult(
                    idempotency_key=existing.key,
                    success=existing.success,
                    error=existing.error or "",
                    remote_id=existing.remote_id or "",
                )
            )
            continue

        result = sync_pb2.SyncResult(idempotency_key=op.idempotency_key)
        op_type_name = sync_pb2.SyncOpType.Name(op.op_type)

        try:
            if op.op_type == sync_pb2.SYNC_OP_TYPE_UPSERT_MEAL:
                meal = _upsert_meal(db, user, op.meal)
                result.success = True
                result.remote_id = str(meal.id) if meal else ""
            elif op.op_type == sync_pb2.SYNC_OP_TYPE_DELETE_MEAL:
                meal = _delete_meal(db, user, op.delete_meal)
                result.success = True
                result.remote_id = str(meal.id) if meal else ""
            elif op.op_type == sync_pb2.SYNC_OP_TYPE_UPSERT_PROFILE:
                apply_user_profile_update(user, op.profile)
                db.commit()
                db.refresh(user)
                result.success = True
            elif op.op_type == sync_pb2.SYNC_OP_TYPE_FCM_TOKEN:
                _register_fcm_token(db, user, op.fcm_token)
                result.success = True
            else:
                result.success = False
                result.error = "Unsupported sync op"
        except Exception as exc:
            result.success = False
            result.error = str(exc)

        db.add(
            IdempotencyKey(
                key=op.idempotency_key,
                user_id=user.id,
                op_type=op_type_name,
                success=result.success,
                error=result.error or None,
                remote_id=result.remote_id or None,
            )
        )
        db.commit()
        results.append(result)

    ack = sync_pb2.SyncAck(results=results)
    return Response(content=ack.SerializeToString(), media_type="application/x-protobuf")
