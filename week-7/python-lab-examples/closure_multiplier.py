def outer(multiplier):
    def inner(x):
        return x * multiplier
    return inner

double = outer(2)
print(double(4))  # 8