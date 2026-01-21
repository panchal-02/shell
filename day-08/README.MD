# Day 08 – Exit Codes & Error Handling in Bash

This script is part of **Week 02 – Day 08** of my Bash scripting learning journey.

The focus of this exercise is to understand how **exit codes and error handling** work in Bash and how scripts should fail safely and predictably.

---

## 📌 What This Script Does

The script:
- Validates the number of command-line arguments
- Checks whether a directory exists
- Creates the directory if it does not exist
- Checks whether a file exists inside the directory
- Creates the file if it does not exist
- Exits with meaningful exit codes on failure

---

## 🛠 Concepts Covered

- Command-line argument validation
- Exit codes (`exit 0`, `exit 1`, `exit 2`, `exit 3`)
- Conditional checks using `[ ]`
- Defensive scripting using `||` (OR logic)
- Safe directory and file creation
- Functions for structured logic

---

## ▶️ How to Run

Make the script executable:
```bash
chmod +x day-08.sh

