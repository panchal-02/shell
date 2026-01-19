# Day 06 – Functions in Bash

This script is part of **Day 06** of my shell scripting learning journey.

The focus of this exercise was to understand how **functions work in Bash** and how logic can be organized into reusable blocks.

---

## 📌 What This Script Does

The script defines multiple Bash functions to perform different tasks:

- Greets a user using a name passed as an argument
- Performs addition using numeric arguments
- Checks whether a given file exists on the system

Each function is designed to be reusable and independent.

---

## 🛠 Concepts Covered

- Defining functions in Bash
- Passing arguments to functions (`$1`, `$2`)
- Using arithmetic inside functions
- File existence checks using `-f`
- Writing modular and readable scripts

---

## 🧠 Function Overview

### `greet_user`
- Accepts a name as an argument
- Prints a greeting message

### `add_num`
- Accepts two numbers as arguments
- Prints their sum

### `check_file`
- Accepts a file path as an argument
- Checks whether the file exists

---

## ▶️ How to Use

These functions can be called from within the script like this:

```bash
greet_user "Pawan"
add_num 10 20
check_file "/etc/passwd"

