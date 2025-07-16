
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

## 🔹 Modules, Imports & Packages

### ✅ Importing Modules

```python
import math
from math import sqrt
import random as rnd
from platform import system
```

- `import module` – whole module  
- `from module import name` – specific entities  
- `as` – alias  
- Avoid `from module import *` (not recommended)

---

### ✅ Built-in Modules

| Module     | Usage Examples                        |
|------------|----------------------------------------|
| `math`     | `sqrt()`, `floor()`, `ceil()`, `pi`    |
| `random`   | `randint()`, `choice()`, `shuffle()`   |
| `platform` | `platform()`, `system()`, `machine()`  |
| `sys`      | `sys.path`, `sys.argv`, `sys.exit()`   |

---

### ✅ sys.path — Module Search Path

```python
import sys
print(sys.path)
```

---

### ✅ User-Defined Modules

Create `tools.py`:

```python
def greet(name):
    return f"Hello, {name}"
```

Use it in another script:

```python
import tools
print(tools.greet("Anandhu"))
```

---

### ✅ Package Structure

```
project/
└── mypackage/
    ├── __init__.py
    └── helper.py
```

Use it like:

```python
from mypackage import helper
```

---

### ✅ __name__ == "__main__"

```python
def test():
    print("Testing...")

if __name__ == "__main__":
    test()
```

This ensures code runs **only when executed directly**, not when imported.

---

### ✅ Installing External Packages (pip)

```bash
pip install package_name
pip uninstall package_name
pip install package_name==1.2.3
```

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

## 🔹 Encoding & Unicode

- `ord('A')` → 65  
- `chr(97)` → `'a'`  
- Python uses **Unicode (UTF-8)** by default

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

### ✅ OOP Concepts

- **Classes** and **Objects**
- **Encapsulation**: private variables (`_var`, `__var`)
- **Methods**: `def method(self):`
- **Inheritance**: `class B(A):`
- **MRO** and `super()`
- **Composition**: using class instances inside other classes

### ✅ Exception Hierarchy

- `BaseException` → `Exception` → `ValueError`, `TypeError`, etc.
- `try/except/else/finally`
- `raise`, `assert`, `custom exceptions`

### ✅ Functional Programming

- `lambda`, `map()`, `filter()`, `zip()`
- Closures and decorators (intro level)
- List comprehensions and generator expressions

### ✅ Generators

```python
def gen():
    yield 1
    yield 2
```

### ✅ File I/O

- `open()`, `read()`, `readlines()`, `readinto()`
- Context manager: `with open() as f:`
- `os` module for system tasks


## 🧠 Key Takeaways

- Python’s syntax is simple but conceptually different from C/Flutter
- List slicing and truthiness require practice
- Writing and debugging code manually is the best way to learn
- Modules and packages in Python help organize and reuse code easily
- Built-in modules like `math`, `random`, and `platform` are powerful helpers
