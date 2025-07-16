msg = input("Enter your message to encrypt: ")

def encrypt(msg):
    result = ""
    for char in msg:
        if char.isalpha():
            if char == 'Z':
                result += 'A'
            elif char == 'z':
                result += 'a'
            else:
                result += chr(ord(char) + 1)
        else:
            result += char
    return result

print("Message to encrypt:", msg)
print("Cipher:", encrypt(msg))