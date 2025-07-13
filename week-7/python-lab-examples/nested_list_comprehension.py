# Creates a 4x4 matrix using nested list comprehension

matrix = [[j for j in range(4)] for i in range(4)]
print("Matrix:")
for row in matrix:
    print(row)

print("Element at row 3, col 1:", matrix[3][1])  # Output: 1