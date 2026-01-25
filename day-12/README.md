# Day 12 – Signals, Trapping, and Background Processes in Bash

This script is part of **Day-12** of my Bash scripting learning journey.  
The goal of this exercise is to understand **Linux signals**, **signal trapping**, and **how to safely manage background processes** in Bash.

---

## 📌 What This Script Does

- Starts a long-running task in the background
- Continuously prints output to simulate a running service
- Captures the background process ID (PID)
- Listens for termination signals
- Executes cleanup logic before exiting
- Demonstrates graceful shutdown of scripts

---

## 🧠 Why This Topic Matters

In real systems:
- Scripts are stopped using `CTRL + C`
- Services are terminated using `kill`
- Cron jobs and monitoring agents must exit cleanly
- Improper termination causes orphan processes and resource leaks

Signal handling is **mandatory DevOps knowledge**.

---

## 🛠 Concepts Covered

### 🔹 Linux Signals
- **SIGINT (INT)** → Sent when you press `CTRL + C`
- **SIGTERM (TERM)** → Sent by `kill <pid>`
- Signals notify a process that an event occurred

---

### 🔹 Trap Command

The `trap` command allows Bash to **intercept signals** and execute custom logic.

```bash
trap cleanup "INT" "TERM"

