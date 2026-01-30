# Day 17 – Basic Monitoring in Bash

This script is part of **Day-17** of my Bash scripting learning journey.  
The focus of this exercise is to build a **basic system monitoring script** using Bash that checks system health and logs results for later review.

---

## 📌 What This Script Does

- Logs monitoring activity to a file
- Checks **disk usage** against a defined threshold
- Checks **memory (RAM) usage** against a defined threshold
- Verifies whether a specific **service is running**
- Records warnings and alerts in a log file
- Designed to be **cron-ready** for automation

---

## 🧠 Why Monitoring Matters

In real-world systems:
- Manual monitoring is not scalable
- Servers must be checked continuously
- Logs help identify issues after failures
- Monitoring scripts are the foundation of:
  - Alerts
  - Health checks
  - Automation
  - DevOps workflows

---

## 🛠 Concepts Covered

- Bash functions
- Logging with timestamps
- Disk usage monitoring using `df`
- Memory usage monitoring using `free`
- Text processing with `awk` and `tr`
- Process/service checks using `pgrep`
- Conditional logic for threshold validation
- Output redirection (`>>`, `2>&1`)

---

## 📄 Script Breakdown

### 🔹 Log File
```bash
LOG="./basic_monitoring_file.log"

