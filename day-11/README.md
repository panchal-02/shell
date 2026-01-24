# Bash Trap Example – Cleanup and Signal Handling (Day 11)

This project demonstrates how to use `trap` in a Bash script to handle errors, interrupts, and process termination while ensuring proper cleanup of temporary resources.

---

## Overview

The script illustrates a common production pattern in shell scripting:

- Fail fast on errors
- Print the exact line number when a failure occurs
- Guarantee cleanup logic runs on exit or interruption

This approach is essential for automation, CI/CD pipelines, cron jobs, and system scripts where leaving temporary files behind is unacceptable.

---

## Key Features

- **Strict error handling** using `set -e`
- **Error tracing** with line-number reporting
- **Signal handling** for `EXIT`, `INT` (Ctrl+C), and `TERM`
- **Automatic cleanup** of temporary files

---

## Script Workflow

1. Enable strict mode (`set -e`)
2. Register an error trap to report failure line numbers
3. Define a cleanup function
4. Register cleanup to run on exit or interruption
5. Create a temporary file
6. Pause execution for 10 seconds to allow signal testing
7. Exit gracefully and clean up resources

---

## Usage

Make the script executable and run it:

```bash
chmod +x script.sh
./script.sh

