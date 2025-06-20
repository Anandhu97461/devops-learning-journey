# Git Basic Operations

## 🔧 Setup Git:
```bash
git config --global user.name "YourName"
git config --global user.email "your@email.com"

## 📁 Start a Project:
```bash
mkdir project && cd project
git init

## 📝 File Changes:
```bash
echo "line" > file1
git status      # shows untracked
git add file1
git commit -m "Initial commit"

## 📄 Git Structure:
.git/ directory holds all repo data

HEAD points to current branch

---