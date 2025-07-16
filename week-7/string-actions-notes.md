# Python String Actions



### 🔹 Comparing Strings

Python compares strings based on Unicode (ASCII) values. `'apple' < 'banana'` returns `True`. Comparisons are case-sensitive.



### 🔹 Sorting Strings

- `sorted(list)` returns a new sorted list.

- `list.sort()` sorts in-place.



Example:

```python

sorted(\['kiwi', 'apple', 'mango'])  # \['apple', 'kiwi', 'mango']

sorted("Sort me!")  # \[' ', '!', 'S', 'e', 'm', 'o', 'r', 't']

```

### 🔹 String Conversion

Use str(), int(), float() to convert values safely.



```python

age = 23

print("I am " + str(age) + " years old")

```

### 🔹 TypeError Example

```python

avg\_age\_input = '34.2'

print(float(avg\_age\_input) > 30)  # ✅

print(avg\_age\_input > 30)         # ❌ TypeError

```

Tip: Always convert values to correct data types before operations.



---

