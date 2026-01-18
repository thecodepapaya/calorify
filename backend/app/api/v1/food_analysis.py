from fastapi import APIRouter, Depends, UploadFile, File, HTTPException
from app.schemas.food_analysis import MealDetectionResult, DescriptionAnalysisRequest
from app.services.food_analysis import food_analysis_service
from app.api import deps
from app.utils.logger import logger

router = APIRouter()

@router.post("/analyze-image", response_model=MealDetectionResult)
async def analyze_food_image(
    file: UploadFile = File(...),
    current_user_id: str = Depends(deps.get_current_user_id)
):
    """
    Analyze a food image using AI and return nutritional information.
    """
    if not file.content_type.startswith("image/"):
        raise HTTPException(status_code=400, detail="File must be an image")
    
    try:
        contents = await file.read()
        result = await food_analysis_service.analyze_image(contents)
        return result
    except Exception as e:
        logger.error(f"API Error in analyze-image: {e}")
        raise HTTPException(status_code=500, detail="Failed to analyze image")

@router.post("/analyze-description", response_model=MealDetectionResult)
async def analyze_food_description(
    request: DescriptionAnalysisRequest,
    current_user_id: str = Depends(deps.get_current_user_id)
):
    """
    Analyze a food description text using AI and return nutritional information.
    """
    try:
        result = await food_analysis_service.analyze_description(request.description)
        return result
    except Exception as e:
        logger.error(f"API Error in analyze-description: {e}")
        raise HTTPException(status_code=500, detail="Failed to analyze description")
