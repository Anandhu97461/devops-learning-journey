# Shows how assigning a list creates a reference, not a copy

list1 = [3, 4, 6, 1, 2]
list2 = list1

list1[1] = 9

print("List1:", list1)
print("List2 (also changed):", list2)

# Fix: to copy properly
list3 = list1.copy()
list1[2] = 99

print("List3 (copy):", list3)
print("List1 (modified again):", list1)