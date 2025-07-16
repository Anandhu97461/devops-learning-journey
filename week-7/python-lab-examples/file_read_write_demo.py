with open("demo.txt", "w") as f:
    f.write("Hello\nWorld")

with open("demo.txt", "r") as f:
    for line in f:
        print(line.strip())