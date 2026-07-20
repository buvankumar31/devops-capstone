from fastapi import APIRouter, HTTPException
from app.utils.logger import logger
from app.schemas.user import User
from app.services.user_service import (
    get_all_users,
    get_user,
    create_user,
    update_user,
    delete_user,
)

router = APIRouter(
    prefix="/users",
    tags=["Users"]
)

@router.get("/")
def list_users():
    logger.info("Fetching all users")
    return get_all_users() 


@router.get("/{user_id}")
def fetch_user(user_id: int):
    user = get_user(user_id)
    logger.info(f"Fetching user {user_id}")

    if not user:
        raise HTTPException(status_code=404, detail="User not found")

    return user

@router.post("/")
def add_user(user: User):
    logger.info(f"Creating user {user.id}")
    return create_user(user)

@router.put("/{user_id}")
def modify_user(user_id: int, user: User):
    updated = update_user(user_id, user)
    logger.info(f"Updating user {user_id}")

    if not updated:
        raise HTTPException(status_code=404, detail="User not found")

    return updated

@router.delete("/{user_id}")
def remove_user(user_id: int):
    result = delete_user(user_id)
    logger.info(f"Deleting user {user_id}")
    
    if result["message"] == "User not found":
        raise HTTPException(status_code=404, detail="User not found")    

    return result