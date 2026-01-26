# Day 13 – Cron Job Health Check Script in Bash

This script is part of **Day-13** of my Bash scripting learning journey.  
The focus of this task is to understand **cron jobs**, **automated health checks**, and **logging system metrics** in Linux using Bash.

---

## 📌 What This Script Does

- Runs a **system health check**
- Logs output to a file (`health.log`)
- Records:
  - Disk usage
  - Memory usage
- Adds timestamps for start and end of each run
- Designed to be executed by **cron** automatically

---

## 🧠 Why This Topic Matters

In real-world systems:
- Servers must be monitored automatically
- Manual checks do not scale
- Cron jobs are used for:
  - Health monitoring
  - Backups
  - Cleanup tasks
  - Reporting

This script simulates a **basic server health monitoring job**.

---

## 🛠 Concepts Covered

- Cron job execution
- Non-interactive script execution
- Logging output to a file
- Redirecting stdout and stderr
- Disk usage monitoring using `df`
- Memory usage monitoring using `free`
- Timestamped logging

---

## 📄 Script Overview

### Log File
```bash
log="/home/health.log"

