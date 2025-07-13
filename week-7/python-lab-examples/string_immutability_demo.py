# Demonstrates that strings are immutable in Python

x = 'abcd'
for i in range(len(x)):
    x[i].upper()  # This does nothing

print("Original string:", x)

# Fix: use reassignment
x = x.upper()
print("After upper():", x)