# Day 09 – Backup Script with Logging in Bash

This script is part of **Day-09** of my Bash scripting learning journey.  
The focus of this exercise is to build a **backup script with proper logging and error handling**, suitable for automation.

---

## 📌 What This Script Does

- Accepts a source file or directory as input
- Accepts a backup directory as input
- Creates a compressed `.tar.gz` backup
- Generates a timestamped backup filename
- Logs every important step of execution
- Handles errors gracefully with exit codes

---

## 🛠 Concepts Covered

- Logging with timestamps
- Custom logging function
- Command-line argument validation
- File and directory existence checks
- Directory creation using `mkdir -p`
- Backup creation using `tar`
- Redirecting standard output and errors to a log file
- Exit codes for failure handling

---

## ▶️ How to Run

Make the script executable:
```bash
chmod +x backup.sh

