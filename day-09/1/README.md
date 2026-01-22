# Logging & Error Handling in Bash

This script demonstrates how to implement **logging, argument validation, and error handling** in a Bash script.

It is designed to be **automation-friendly**, suitable for use with cron jobs or other non-interactive execution environments.

---

## 📌 What This Script Does

- Creates a log file (`script.log`)
- Logs script execution with timestamps
- Validates required command-line arguments
- Checks if a directory exists
- Creates the directory if it does not exist
- Logs both success and error messages
- Exits with meaningful exit codes

---

## 🛠 Concepts Covered

- Logging with timestamps
- Custom logging function
- Command-line argument validation
- Directory existence checks
- Safe directory creation
- Error handling with exit codes
- Redirecting errors to log files

---

## ▶️ How to Run

Make the script executable:
```bash
chmod +x script.sh

