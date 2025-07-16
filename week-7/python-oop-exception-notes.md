
# 🐍 Python OOP, Exceptions & Functional Notes (Week 7 – Day 4)

These notes summarize the advanced Python concepts I learned on Day 4 of the PCAP course from KodeKloud.

---

## 🔹 Object-Oriented Programming (OOP)

### ✅ Classes and Objects

```python
class Dog:
    def __init__(self, name):
        self.name = name

    def bark(self):
        print(f"{self.name} says woof!")

d = Dog("Rocky")
d.bark()
```

### ✅ Private Variables and Encapsulation

```python
class Counter:
    def __init__(self):
        self.__count = 0

    def increment(self):
        self.__count += 1

    def get_count(self):
        return self.__count
```

### ✅ Inheritance

```python
class Animal:
    def speak(self):
        print("Some sound")

class Cat(Animal):
    def speak(self):
        print("Meow")
```

### ✅ Multiple Inheritance & MRO

```python
class A: pass
class B(A): pass
class C(B): pass

print(C.__mro__)
```

---

## 🔹 Composition

```python
class Engine:
    def start(self):
        print("Engine starting...")

class Car:
    def __init__(self):
        self.engine = Engine()

    def drive(self):
        self.engine.start()
        print("Car is moving")
```

---

## 🔹 Exception Handling

```python
try:
    x = int("abc")
except ValueError as e:
    print("Caught ValueError:", e)
finally:
    print("Cleanup code")
```

### ✅ Raising Custom Exceptions

```python
class EmailError(Exception):
    pass

raise EmailError("Invalid email!")
```

---

## 🔹 Functional Programming

### ✅ Lambdas

```python
squared = lambda x: x * x
print(squared(5))  # 25
```

### ✅ map(), filter()

```python
nums = [1, 2, 3, 4]
print(list(map(lambda x: x*2, nums)))
print(list(filter(lambda x: x % 2 == 0, nums)))
```

### ✅ Closures

```python
def outer(multiplier):
    def inner(x):
        return x * multiplier
    return inner

double = outer(2)
print(double(5))  # 10
```

---

## 🔹 Iterators & Generators

### ✅ Custom Iterator

```python
class CountDown:
    def __init__(self, start):
        self.n = start

    def __iter__(self):
        return self

    def __next__(self):
        if self.n == 0:
            raise StopIteration
        val = self.n
        self.n -= 1
        return val

for num in CountDown(3):
    print(num)
```

### ✅ Generator with yield

```python
def countdown(n):
    while n > 0:
        yield n
        n -= 1

for i in countdown(3):
    print(i)
```

---

## 🔹 File I/O

```python
with open("sample.txt", "w") as f:
    f.write("Hello\nWorld")
```

### ✅ Binary readinto()

```python
with open("image.png", "rb") as f:
    data = bytearray(10)
    f.readinto(data)
    print(data)
```

---

## 🔹 OS Module

```python
import os

os.mkdir("test_dir")
print(os.listdir("."))
os.system("echo Hello from system")
```

---

## ✅ Summary

- Classes, inheritance, and encapsulation clarify real-world modeling.
- Exceptions give better control over error handling.
- Functional tools like lambda/map/filter are great for concise code.
- Generators and file handling boost scripting power.
- OS module gives Python scripts Linux-level interaction.
