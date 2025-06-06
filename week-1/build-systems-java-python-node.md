# Build Systems - Java, Python, Node.js (Week 1)

## Java Build Process

### Compiled Language
- Code is compiled → bytecode → `.class` files → packaged as `.jar`.

### JDK Tools Learned
- `javac` → Compile `.java` to `.class`.
- `java` → Run compiled classes.
- `javadoc -d doc` → Generate documentation.

### Packaging
- Multiple `.class` files → packaged into `.jar` → run via `java -jar file.jar`.

### Build Tools
- **Ant**: Read `build.xml`, learned about `compile`, `jar`, `doc` targets.
- **Maven**, **Gradle**: Installed, explored their purpose in modern Java build automation.

---

## Python Build & Packaging

### Interpreted Language
- Code is executed via interpreter → `.pyc` bytecode auto-generated.

### Package Management
- `pip install package`
- `pip show package`
- `pip install -r requirements.txt`
- `pip uninstall package`

### Notes
- Learned difference between Python 2 and Python 3 installations.
- Understood `pip`, `pip2`, `pip3` handling.

---

## Node.js Build & Packaging

### Interpreted Language (JS Engine)
- Code run via Node runtime → `node app.js`.

### Package Management
- `npm install package` → install locally.
- `npm install -g package` → install globally.
- `npm show package` → view package info.
- `npm install` → installs deps from `package.json`.

### Package.json Structure
- Basic structure:
  - `"dependencies"`
  - `"devDependencies"`
  - `"scripts"`

---

## Summary

- Understood basic build process differences:
  - Compiled → Java
  - Interpreted → Python & Node.js
- Understood how package managers ensure repeatable builds:
  - `pip`, `npm`, Maven, Gradle, Ant.

