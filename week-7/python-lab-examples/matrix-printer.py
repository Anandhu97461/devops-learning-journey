# Creates a matrix using nested list comprehension and prints it nicely

def create_matrix(rows, cols):
    return [[i * cols + j for j in range(cols)] for i in range(rows)]

def print_matrix(matrix):
    for row in matrix:
        for item in row:
            print(f"{item:3}", end=" ")
        print()

rows = 4
cols = 4
matrix = create_matrix(rows, cols)
print_matrix(matrix)