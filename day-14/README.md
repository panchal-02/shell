# Day 14 – Environment Variables in Bash

This script is part of **Day-14** of my Bash scripting learning journey.  
The focus of this exercise is to understand **environment variables**, how they work in **parent–child scripts**, and how variable exporting behaves in Bash.

---

## 📌 What This Script Does

- Defines variables in a parent script
- Exports variables using `export`
- Demonstrates how environment variables are inherited by child scripts
- Explains the difference between:
  - Running a script normally
  - Sourcing a script
- Shows common mistakes beginners make with environment variables

---

## 🛠 Concepts Covered

- Environment variables vs local shell variables
- `export` command
- Parent and child process relationship
- Variable inheritance
- `./script.sh` vs `source script.sh`
- Why variables may appear empty in child scripts
- Best practices for sharing configuration between scripts

---

## 📂 Script Structure

```text
day-14/
├── envar.sh    # Parent script (exports variables)
├── child.sh    # Child script (reads variables)
└── README.md

##▶️ How to Run
1️⃣ Make scripts executable
chmod +x envar.sh child.sh

2️⃣## Run the parent script
./envar.sh


This script exports environment variables and then executes the child script.
