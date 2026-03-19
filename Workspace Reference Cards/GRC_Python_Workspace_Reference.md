# GRC Python Fundamentals — Workspace Reference Card

**Repo Path:** `/Users/alphabrav0/Repositories/grc_engineering-python-fundamentals`  
**GitHub Repo:** `github.com/YOUR-USERNAME/grc-python-fundamentals`

---

## Starting a Work Session

Run these commands every time you open a new terminal to start working:

```bash
cd /Users/alphabrav0/Repositories/grc_engineering-python-fundamentals
source .venv/bin/activate
code .
```

Your terminal prompt should show `(.venv)` — that confirms your environment is active.

---

## Saving and Closing Your Work

Run these four commands every time you stop working:

```bash
# 1. Stage all changes
git add .

# 2. Commit with a message (update the message to match what you worked on)
git commit -m "feat(ch01): complete exercise 1-1 getting started"

# 3. Push to GitHub
git push origin ch01-getting-started

# 4. Deactivate virtual environment
deactivate
```

Then close VS Code and your terminal normally.

---

## Commit Message Conventions

| Prefix | When to use | Example |
|---|---|---|
| `feat` | Completed exercise | `feat(ch02): complete exercise 2-1 control variables` |
| `wip` | Work in progress | `wip(ch02): exercise 2-3 in progress` |
| `fix` | Fixed something | `fix(ch03): correct list index error` |
| `docs` | Notes or comments | `docs(ch04): add GRC context notes` |

---

## Branch Workflow (one branch per chapter)

```bash
# Create and switch to a new chapter branch
git checkout -b ch02-variables

# When chapter is complete, merge back to main
git checkout main
git merge ch02-variables
git branch -d ch02-variables

# Start next chapter
git checkout -b ch03-lists
```

---

## Automated Save & Close Script

A script called `grc-save.sh` is saved in your repo at:
`/Users/alphabrav0/Repositories/grc_engineering-python-fundamentals/grc-save.sh`

**How to use it:**

```bash
# Save with a custom commit message
./grc-save.sh "feat(ch01): complete exercise 1-1"

# Save with default message (uses timestamp)
./grc-save.sh
```

The script automatically stages, commits, pushes, and deactivates your environment.

---

## Quick Command Reference

| Task | Command |
|---|---|
| Activate environment | `source .venv/bin/activate` |
| Deactivate environment | `deactivate` |
| Open in VS Code | `code .` |
| Check current branch | `git branch` |
| See unsaved changes | `git status` |
| View commit history | `git log --oneline` |
| Start Claude Code tutor | `claude` |

---

## About the Book

**Python Crash Course (3rd Edition)** — Eric Matthes (NoStarch Press)  
- Available at nostarch.com, Amazon, or as PDF (~$30–$40)
- The `grc_python_crash_course.md` file in your repo guides the exercises
- The book explains the *why* — go to it when an exercise concept isn't clear
- Deductible as a business expense

---

*Reference Card v1.0 — Feb 2026*
