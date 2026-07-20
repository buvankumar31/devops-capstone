from fastapi import FastAPI

from app.config.settings import settings
from app.routers.user import router
from app.utils.logger import logger
from app.utils.exceptions import global_exception_handler
from fastapi import FastAPI, Request


app = FastAPI(
    title=settings.APP_NAME,
    version=settings.APP_VERSION
)

app.include_router(router)

app.add_exception_handler(
    Exception,
    global_exception_handler
)


app.include_router(router)


@app.on_event("startup")
def startup():
    logger.info(f"{settings.APP_NAME} started")
    logger.info(f"Environment : {settings.APP_ENV}")


@app.get("/")
def home():
    return {
        "service": settings.APP_NAME,
        "version": settings.APP_VERSION,
        "environment": settings.APP_ENV,
        "status": "Running"
    }


@app.get("/health")
def health():
    return {
        "status": "healthy"
    }