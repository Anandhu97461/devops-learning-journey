# Git Branches and Remote Repositories

## 🌿 Branches:
```bash
git branch 1.1-testing
git checkout 1.1-testing

Merge Back:
```bash
git checkout master
git merge 1.1-testing

## 🌍 Remote Git:
```bash
git remote add origin git@github.com:user/repo.git
git push origin master

## 🔑 SSH:
```bash
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub  # Add to GitHub SSH settings

## 🔽 Cloning:
```bash
git clone git@github.com:user/repo.git


---