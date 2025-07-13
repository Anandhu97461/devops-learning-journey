# 🔄 Git Workflows – Team Collaboration



## 👨‍💻 Feature Branch Workflow

1\. `git checkout -b feature-x`

2\. Make changes, commit.

3\. Push to GitHub: `git push origin feature-x`

4\. Open Pull Request on GitHub

5\. Request Reviewers and Approve

6\. Merge PR to main



---



## ⛓️ Fast-forward vs No-fast-forward



- `git merge feature-x` — default is fast-forward if no divergence.

- `git merge --no-ff feature-x` — creates a merge commit even if possible to fast-forward.



🟢 Use \*\*no-ff\*\* to preserve feature history.



---



## ⚠️ Merge Conflicts

Handled by:

- Editing conflicted files

- `git add`

- `git merge --continue`



---



## 🧰 Tools I Used

- `git stash`: for quick switches between tasks

- `git cherry-pick`: for selectively applying commits

- `git revert` vs `git reset`: undo changes differently

- `git reflog`: saved me when I thought I lost commits!



---



## 🧠 Git Internals

- Git stores everything as \*\*objects\*\*

&nbsp; - Files → `blob`

&nbsp; - Directories → `tree`

&nbsp; - Commits → point to trees

- Everything has a \*\*SHA-1 hash\*\*

- View with: 

&nbsp; ```bash

&nbsp; git hash-object filename

&nbsp; git cat-file -p <hash>

&nbsp; ```

