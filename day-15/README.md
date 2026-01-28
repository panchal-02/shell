# Day 15 – Text Processing in Bash

This script is part of **Day-15** of my Bash scripting learning journey.  
The goal of this exercise is to understand **text processing in Linux** using common command-line utilities and how they are combined in real Bash scripts.

---

## 📌 What This Script Does

- Demonstrates **text processing using pipes**
- Shows input and output redirection
- Extracts, filters, sorts, and modifies text data
- Uses standard Linux text-processing tools together
- Writes processed output to files

---

## 🧠 Why Text Processing Matters

In Linux and DevOps:
- Logs are plain text
- Configuration files are text-based
- Monitoring and automation depend on parsing text output
- Almost every system command produces text

Mastering text processing is **essential for Bash scripting**.

---

## 🛠 Concepts Covered

- Pipes (`|`)
- Output redirection (`>`, `>>`)
- Input redirection (`<`)
- `grep` for pattern searching
- `cut` for column extraction
- `sort` and `uniq` for data organization
- `awk` for field processing
- `sed` for text substitution

---

## 📄 Script Explanation

### 🔹 Pipe (`|`)
```bash
df -h | grep /dev

