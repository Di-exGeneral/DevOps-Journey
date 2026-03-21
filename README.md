
# DevOps Journey

My name is Tlotliso Ledwaba and this is a repo documenting my learning path into DevOps.
It includes notes, scripts, and projects built along the way.

## The roadmap for this journey
1. Git Foundations
2. Linux Fundamentals
3. Scripting and Automation
4. Containers
5. Networking and OS Concepts
6. Cloud and IaC
7. CI/CD and Monitoring
8. Kubernetes


## Phase 1: Git fundamentals

- Learned what branching and merging is and what to do when encountering merge conflicts. 
- Learned the difference between Gitflow and Trunk-Based Development
- Learned what are git hooks and wrote a simple automation script that check if the commit message is empty or not


## Phase 2: Linux fundamentals (using Kali Linux)

#### Commands covered
- `chmod` and `chown`
- `ps`
- `top`
- `kill`
- `job`
- `fg`
- `find` vs `which`
- `grep`
- `awk`
- `apt` with its key commands
- `systemctl`
- `nslookup`
- `curl`

## Phase 3: Scripting and Automation
### Bash Scripting
- Variables and user input with `read`
- Numeric comparisons: `-lt`, `-gt`, `-eq`, `-le`, `-ge`, `-ne`
- Conditionals: `if`, `elif`, `else`
- Loops: `for` with ranges and lists, `while` with conditions
- Arithmetic with `$(( ))`
- Functions with arguments using `$1`
- `seq` for variable ranges
- Exit codes: `exit 0` success, `exit 1` failure


### Automation Scripts
The scripts i created: 
- `disk-alert.sh` monitors disk usage and alerts when threshold is exceeded
- `error-checker.sh` parses log files and counts errors
- `remove-container.sh` interactive Docker container removal
- `stop-container.sh` stops the specified Docker container

### Cron Jobs
An automation tool used to schedule tasks
- Five position syntax: minute, hour, day of month, month, day of week
- `crontab -e` to edit, `crontab -l` to list
- Redirecting output to log files with `>>` and `2>&1`

## Phase 4: Containers (Current Phase)

## Stack
- Kali Linux
- AWS Free Tier
- Docker
- GitHub Actions

