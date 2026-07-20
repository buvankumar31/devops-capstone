from dotenv import load_dotenv
import os

load_dotenv()

class Settings:
    APP_NAME = os.getenv("APP_NAME", "User Service")
    APP_VERSION = os.getenv("APP_VERSION", "1.0.0")
    APP_ENV = os.getenv("APP_ENV", "dev")
    LOG_LEVEL = os.getenv("LOG_LEVEL", "INFO")

settings = Settings()
