# Day 10 – Debugging in Bash

This project demonstrates basic debugging and error-handling techniques in a Bash script.

## Description

The script:
- Enables command tracing for debugging
- Exits immediately on errors
- Validates input arguments
- Checks whether a directory exists
- Creates the directory and a test file if it does not exist
- Exits cleanly after successful execution

## Script Features

- `set -x` – Enables debugging (prints executed commands)
- `set -e` – Stops execution on the first error
- Argument validation for safe execution
- Directory existence check and creation logic

## Usage

```bash
bash script.sh <directory>


