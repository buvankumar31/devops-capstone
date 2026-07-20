from dotenv import load_dotenv
import os

load_dotenv()

class Settings:
    APP_NAME = os.getenv("APP_NAME")
    APP_VERSION = os.getenv("APP_VERSION")
    APP_ENV = os.getenv("APP_ENV")
    LOG_LEVEL = os.getenv("LOG_LEVEL")

settings = Settings()