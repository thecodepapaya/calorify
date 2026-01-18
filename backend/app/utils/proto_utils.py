from datetime import datetime, timezone
from typing import Optional

from app.protos.calorify import models_pb2


def _ensure_utc(dt: datetime) -> datetime:
    if dt.tzinfo is None:
        return dt.replace(tzinfo=timezone.utc)
    return dt.astimezone(timezone.utc)


def meal_type_to_str(value: models_pb2.MealType) -> Optional[str]:
    mapping = {
        models_pb2.BREAKFAST: "breakfast",
        models_pb2.LUNCH: "lunch",
        models_pb2.DINNER: "dinner",
        models_pb2.SNACK: "snack",
        models_pb2.UNKNOWN: "unknown",
    }
    return mapping.get(value)


def health_score_to_str(value: models_pb2.HealthScore) -> Optional[str]:
    mapping = {
        models_pb2.HEALTHY: "healthy",
        models_pb2.NEUTRAL: "neutral",
        models_pb2.UNHEALTHY: "unhealthy",
        models_pb2.UNKNOWN: "unknown",
    }
    return mapping.get(value)


def gender_to_str(value: models_pb2.Gender) -> Optional[str]:
    mapping = {
        models_pb2.MALE: "male",
        models_pb2.FEMALE: "female",
        models_pb2.OTHER: "other",
    }
    return mapping.get(value)


def gender_from_str(value: Optional[str]) -> Optional[models_pb2.Gender]:
    if value is None:
        return None
    mapping = {
        "male": models_pb2.MALE,
        "female": models_pb2.FEMALE,
        "other": models_pb2.OTHER,
    }
    return mapping.get(value.lower())


def weight_goal_to_str(value: models_pb2.WeightGoal) -> Optional[str]:
    mapping = {
        models_pb2LOSE_WEIGHT: "loseWeight",
        models_pb2MAINTAIN_WEIGHT: "maintainWeight",
        models_pb2GAIN_WEIGHT: "gainWeight",
    }
    return mapping.get(value)


def weight_goal_from_str(value: Optional[str]) -> Optional[models_pb2.WeightGoal]:
    if value is None:
        return None
    mapping = {
        "loseWeight": models_pb2LOSE_WEIGHT,
        "maintainWeight": models_pb2MAINTAIN_WEIGHT,
        "gainWeight": models_pb2GAIN_WEIGHT,
    }
    return mapping.get(value)


def activity_level_to_str(value: models_pb2.ActivityLevel) -> Optional[str]:
    mapping = {
        models_pb2.SEDENTARY: "sedentary",
        models_pb2.LIGHTLY_ACTIVE: "lightlyActive",
        models_pb2.MODERATELY_ACTIVE: "moderatelyActive",
        models_pb2.VERY_ACTIVE: "veryActive",
        models_pb2.EXTREMELY_ACTIVE: "extremelyActive",
    }
    return mapping.get(value)


def activity_level_from_str(value: Optional[str]) -> Optional[models_pb2.ActivityLevel]:
    if value is None:
        return None
    mapping = {
        "sedentary": models_pb2.SEDENTARY,
        "lightlyActive": models_pb2.LIGHTLY_ACTIVE,
        "moderatelyActive": models_pb2.MODERATELY_ACTIVE,
        "veryActive": models_pb2.VERY_ACTIVE,
        "extremelyActive": models_pb2.EXTREMELY_ACTIVE,
    }
    return mapping.get(value)


def unit_system_to_str(value: models_pb2.UnitSystem) -> Optional[str]:
    mapping = {
        models_pb2.METRIC: "metric",
        models_pb2.IMPERIAL: "imperial",
    }
    return mapping.get(value)


def unit_system_from_str(value: Optional[str]) -> Optional[models_pb2.UnitSystem]:
    if value is None:
        return None
    mapping = {
        "metric": models_pb2.METRIC,
        "imperial": models_pb2.IMPERIAL,
    }
    return mapping.get(value.lower())


def build_user_profile_proto(user) -> models_pb2.UserProfile:
    profile = models_pb2.UserProfile()
    if user.height is not None:
        profile.height = user.height
    if user.weight is not None:
        profile.weight = user.weight
    if user.target_weight is not None:
        profile.target_weight = user.target_weight
    gender_enum = gender_from_str(user.gender)
    if gender_enum is not None:
        profile.gender = gender_enum
    if user.date_of_birth is not None:
        profile.date_of_birth.FromDatetime(_ensure_utc(user.date_of_birth))
    weight_goal_enum = weight_goal_from_str(user.weight_goal)
    if weight_goal_enum is not None:
        profile.weight_goal = weight_goal_enum
    activity_enum = activity_level_from_str(user.activity_level)
    if activity_enum is not None:
        profile.activity_level = activity_enum
    height_unit_enum = unit_system_from_str(user.height_unit)
    if height_unit_enum is not None:
        profile.height_unit = height_unit_enum
    weight_unit_enum = unit_system_from_str(user.weight_unit)
    if weight_unit_enum is not None:
        profile.weight_unit = weight_unit_enum
    if user.daily_calorie_goal is not None:
        profile.daily_calorie_goal = user.daily_calorie_goal
    return profile


def apply_user_profile_update(user, profile: models_pb2.UserProfile) -> None:
    if profile.HasField("height"):
        user.height = profile.height
    if profile.HasField("weight"):
        user.weight = profile.weight
    if profile.HasField("target_weight"):
        user.target_weight = profile.target_weight
    if profile.HasField("gender"):
        user.gender = gender_to_str(profile.gender)
    if profile.HasField("date_of_birth"):
        user.date_of_birth = profile.date_of_birth.ToDatetime()
    if profile.HasField("weight_goal"):
        user.weight_goal = weight_goal_to_str(profile.weight_goal)
    if profile.HasField("activity_level"):
        user.activity_level = activity_level_to_str(profile.activity_level)
    if profile.HasField("height_unit"):
        user.height_unit = unit_system_to_str(profile.height_unit)
    if profile.HasField("weight_unit"):
        user.weight_unit = unit_system_to_str(profile.weight_unit)
    if profile.HasField("daily_calorie_goal"):
        user.daily_calorie_goal = profile.daily_calorie_goal
