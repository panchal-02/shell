# Day 18 – Bash Automation & Monitoring Toolkit (Final Project)

This project is the **final Bash project** of my learning journey.  
It combines **monitoring, backups, logging, configuration management, signal handling, and defensive Bash scripting** into a single, real-world automation toolkit.

The goal of this project is to demonstrate how individual Bash concepts come together to build **production-style automation**, similar to what is used in DevOps and cloud environments.

---

## 📁 Project Structure

```text
day-18/
├── backups/               # Backup destination directory
├── config/
│   └── config.env         # Central configuration file
├── logs/
│   └── toolkit.log        # Log file (created automatically)
├── scripts/
│   ├── health_check.sh    # Disk & memory monitoring
│   ├── service_monitor.sh # Service monitoring
│   ├── backup.sh          # Backup automation
│   └── cleanup.sh         # Signal handling & cleanup
├── main.sh                # Main controller script
└── README.md


🎯 Project Objective

.To build a Bash-based automation toolkit that:

.Monitors system health (disk & memory usage)

.Checks whether a critical service is installed and running

.Performs automated backups

.Uses a centralized configuration file

.Logs all actions with timestamps

.Handles termination signals gracefully

.Can be executed manually or via cron

🧠 Concepts Covered

.Modular Bash scripting using functions

.Environment-based configuration (config.env)

.Disk usage monitoring (df)

.Memory usage monitoring (free)

.Text processing (awk, tr, grep)

.Service monitoring (systemctl, pgrep)

.Backup automation using tar

.Centralized logging with timestamps

.Exit codes and defensive Bash scripting

.Signal handling using trap

.Automation-ready script design


⚙️ Configuration File (config/config.env)

All configurable values are defined in one place:
# thresholds
disk_lmt="80"
mem_lmt="80"

# service to monitor
service="sshd"

# backup configuration
backup_src="/etc"
backup_dest="$(pwd)/backups"

-This allows changes without modifying the scripts.


📄 Script Overview
🔹 health_check.sh

-Checks disk usage and memory usage

-Compares values against defined thresholds

-Logs warnings or OK messages

🔹 service_monitor.sh

-Checks whether the configured service is installed

-Verifies if the service is currently running

-Logs alerts if the service is stopped or missing

🔹 backup.sh

-Creates the backup directory if it does not exist

-Generates timestamped .tar.gz backups

-Logs success or failure of backup operations

🔹 cleanup.sh

-Handles SIGINT and SIGTERM

-Performs cleanup before script exit

-Ensures graceful shutdown of the toolkit

🔹 main.sh

-Loads configuration and all scripts

-Defines a centralized logging function

-Enables defensive Bash options (set -eu)

-Traps termination signals

-Executes monitoring and backup tasks in sequence

▶️ How to Run

-Make all scripts executable:

-chmod +x main.sh scripts/*.sh


Run the toolkit:

-./main.sh


View logs:

-cat logs/toolkit.log

⏰ Cron Usage (Optional)

-To run the toolkit automatically every 10 minutes:

-crontab -e


Add:

-*/10 * * * * /full/path/day-18/main.sh


-Always use absolute paths when running scripts via cron.

