with open("binary_sample.bin", "wb") as f:
    f.write(b'1234567890')

with open("binary_sample.bin", "rb") as f:
    b = bytearray(5)
    f.readinto(b)
    print(b)