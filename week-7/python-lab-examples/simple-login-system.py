# A basic username-password check using a dictionary

users = {
    "admin": "admin123",
    "anandhu": "devops!",
    "guest": "guest"
}

def login(username, password):
    if username in users and users[username] == password:
        return True
    return False

try:
    user = input("Enter username: ")
    pwd = input("Enter password: ")
    if login(user, pwd):
        print("Login successful!")
    else:
        print("Login failed!")
except Exception as e:
    print("Something went wrong:", e)