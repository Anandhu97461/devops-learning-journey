
# 🐍 Python Basics – Notes (Week 7)

These notes cover fundamental Python concepts I learned during the KodeKloud "Python for Beginners" course. They include key syntax, examples, behavior differences from C/Flutter, and pitfalls I encountered in quizzes.

---

## 🔹 Basics & Syntax

- **Print**: `print("Hello")`
- **Input**: `x = input("Enter: ")`
- **Variables**: No type declaration, dynamic typing.
- **Comments**: `# Single-line`, `''' Multi-line '''`

---

## 🔹 Data Types

- `int`, `float`, `str`, `bool`, `list`, `tuple`, `dict`, `set`
- Use `type(x)` to check type.

---

## 🔹 Operators

- **Arithmetic**: `+`, `-`, `*`, `/`, `//`, `%`, `**`
- **Comparison**: `==`, `!=`, `<`, `>`, `<=`, `>=`
- **Logical**: `and`, `or`, `not`
- **Bitwise**: `&`, `|`, `^`, `~`, `<<`, `>>`

---

## 🔹 Strings

- Immutable
- Slicing: `s[1:4]`, `s[::-1]` for reverse
- Methods: `upper()`, `lower()`, `split()`, `replace()`
- f-strings: `f"Hello {name}"`

---

## 🔹 Lists

- Mutable, ordered, allows duplicates
- Slicing: `list1[::2]`, `list1[::-1]`
- Methods: `append()`, `insert()`, `pop()`, `remove()`, `sort()`, `reverse()`
- Copy vs Reference: `copy()`, `list2 = list1.copy()`

---

## 🔹 Tuples

- Immutable, ordered
- Useful for fixed collections
- Single element: `(3,)`

---

## 🔹 Dictionaries

- Key-value pairs: `{"name": "Anandhu"}`
- Methods: `keys()`, `values()`, `items()`, `get()`

---

## 🔹 Sets

- Unordered, no duplicates
- `{1, 2, 3}`, `set([1,2,2])` → `{1,2}`

---

## 🔹 Conditional Statements

```python
if x > 0:
    print("Positive")
elif x < 0:
    print("Negative")
else:
    print("Zero")
```

---

## 🔹 Loops

```python
for i in range(5):
    print(i)

while x < 10:
    x += 1
```

- `break`, `continue`, `pass` supported

---

## 🔹 Functions

```python
def greet(name):
    return f"Hello {name}"
```

- Default args: `def f(x=5):`
- `*args` and `**kwargs` for flexible parameters

---

## 🔹 Exception Handling

```python
try:
    x = int(input())
except ValueError:
    print("Not a number")
```

- `raise`, `assert`, `finally` also available

---

## 🔹 Truthy & Falsy

- **Falsy**: `None`, `0`, `''`, `[]`, `{}`, `()`, `False`
- **Truthy**: Everything else

---

## 🔹 Mutability

| Type        | Mutable |
|-------------|---------|
| int, str    | ❌       |
| list, dict  | ✅       |
| tuple       | ❌       |

---

## 🔹 Comprehensions

- **List**: `[x*x for x in range(5)]`
- **Nested**: `[[i*j for j in range(3)] for i in range(3)]`

---

## 🔹 Common Pitfalls I Faced

- String methods don’t modify in-place
- List slicing with `::` syntax
- Reference vs copy (`list2 = list1` is not a copy)
- `range()` expects integer
- Tuples like `(5,10)` are truthy in `if` statements

---

## 🧠 Key Takeaways

- Python’s syntax is simple but conceptually different from C/Flutter
- List slicing and truthiness require practice
- Writing and debugging code manually is the best way to learn
