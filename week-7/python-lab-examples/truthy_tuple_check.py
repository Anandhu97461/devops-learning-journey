# Demonstrates that non-empty tuples are truthy

if (5, 10):
    print("Tuple is truthy!")  # This will print

if ():
    print("This won't print")
else:
    print("Empty tuple is falsy")