import google.generativeai as genai
from app.config import settings
from app.schemas.food_analysis import MealDetectionResult, MealInfoSchema, HealthScore
from datetime import datetime
import json
from app.utils.logger import logger
import PIL.Image
import io

# Configure Gemini
# In a real setup, you'd use Vertex AI or a service account
# For now, we assume an API key is provided or configured via ADC
def initialize_genai():
    # If using Google Cloud Project / Vertex AI, it handles auth via ADC
    # If using direct Gemini API, use api_key
    # genai.configure(api_key=settings.GOOGLE_API_KEY)
    pass

initialize_genai()

SYSTEM_PROMPT = """
You are an expert food analysis AI. Given an image or a description of food,
analyze the main food item(s). Be precise with nutrient estimations.
Respond ONLY with a JSON object in the following format:
{
  "meal_identified": boolean,
  "calorie_confidence": float (0-1),
  "tip": string,
  "meal_info": {
    "name": string,
    "calories": integer,
    "protein": float,
    "carbs": float,
    "fat": float,
    "fiber": float,
    "timestamp": "ISO-8601 string",
    "health_score": {
      "score": "healthy" | "neutral" | "unhealthy" | "unknown",
      "reason": string
    }
  }
}
"""

class FoodAnalysisService:
    def __init__(self):
        self.model = genai.GenerativeModel('gemini-1.5-flash')

    async def analyze_image(self, image_bytes: bytes) -> MealDetectionResult:
        try:
            image = PIL.Image.open(io.BytesIO(image_bytes))
            response = self.model.generate_content([
                SYSTEM_PROMPT,
                "Estimate calories in this meal picture and respond in JSON.",
                image
            ])
            
            # Extract JSON from response
            text = response.text
            # Basic cleanup if model includes markdown code blocks
            if "```json" in text:
                text = text.split("```json")[1].split("```")[0]
            elif "```" in text:
                text = text.split("```")[1].split("```")[0]
            
            result_dict = json.loads(text)
            # Ensure timestamp is current if not provided or to match local time
            result_dict["meal_info"]["timestamp"] = datetime.now().isoformat()
            
            return MealDetectionResult(**result_dict)
        except Exception as e:
            logger.error(f"Error analyzing image: {e}")
            raise e

    async def analyze_description(self, description: str) -> MealDetectionResult:
        try:
            response = self.model.generate_content([
                SYSTEM_PROMPT,
                f"Meal: {description}."
            ])
            
            text = response.text
            if "```json" in text:
                text = text.split("```json")[1].split("```")[0]
            elif "```" in text:
                text = text.split("```")[1].split("```")[0]
                
            result_dict = json.loads(text)
            result_dict["meal_info"]["timestamp"] = datetime.now().isoformat()
            
            return MealDetectionResult(**result_dict)
        except Exception as e:
            logger.error(f"Error analyzing description: {e}")
            raise e

food_analysis_service = FoodAnalysisService()
