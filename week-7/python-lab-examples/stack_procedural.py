stack = []

def push(item):
    stack.append(item)

def pop():
    return stack.pop()

push(10)
push(20)
print(pop())  # 20