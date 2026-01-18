# Day 05 – Command-Line Arguments in Bash

This script is part of **Day 05** of my shell scripting learning journey.

The objective of this exercise was to understand how **command-line arguments** work in Bash and how scripts can perform operations without interactive input.

---

## 📌 What This Script Does

The script:
- Accepts two numbers as command-line arguments
- Validates the number of arguments before execution
- Performs arithmetic operations on the provided numbers
- Handles division safely by checking for division by zero
- Displays results in a clear and readable format

---

## 🛠 Concepts Covered

- Command-line arguments (`$1`, `$2`)
- Argument count validation using `$#`
- Arithmetic expansion using `$(( ))`
- Conditional logic with `if`
- Preventing division by zero
- Non-interactive script execution

---

## ▶️ How to Run the Script

Make the script executable:
```bash
chmod +x arguments.sh

## Run it 
bash argument.sh
