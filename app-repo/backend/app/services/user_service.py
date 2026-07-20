from app.schemas.user import User

users = []

def get_all_users():
    return users

def get_user(user_id: int):
    for user in users:
        if user.id == user_id:
            return user
    return None

def create_user(user: User):
    users.append(user)
    return user

def update_user(user_id: int, updated_user: User):
    for index, user in enumerate(users):
        if user.id == user_id:
            users[index] = updated_user
            return updated_user
    return None

def delete_user(user_id: int):
    for user in users:
        if user.id == user_id:
            users.remove(user)
            return {"message": "User deleted"}
    return {"message": "User not found"}