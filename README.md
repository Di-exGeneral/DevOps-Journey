
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

### Core Concepts
- **Image**: a snapshot of a configured environment, built from a Dockerfile
- **Container**: a running instance of an image
- **Dockerfile**: instructions for building an image
- Relationship: Dockerfile builds an Image, Image runs as a Container

### Dockerfile Instructions
- `FROM` - base image to start with
- `RUN` - execute a command during build
- `COPY` - copy files from host into the image
- `CMD` - default command when container starts

### Docker Commands
- `docker build -t name .` - build an image from a Dockerfile
- `docker run image` - create and start a container
- `docker run -it image bash` - interactive terminal session
- `docker run -d -p 8080:80 image` - detached mode with port mapping
- `docker ps` - show running containers
- `docker ps -a` - show all containers including stopped
- `docker images` - list local images
- `docker stop id` - stop a running container
- `docker rm id` - remove a container
- `docker rmi image` - remove an image

### Docker Compose
- Manages multiple containers as a single application
- Defined in `docker-compose.yml` using YAML
- `docker-compose up` - start all services
- `docker-compose down` - stop and remove all services
- Common keys: `image`, `ports`, `volumes`, `environment`, `depends_on`, `build`

### Projects
- `disk-alert` - containerised disk alert bash script using Alpine
- `nginx-demo` - custom Nginx container serving a static HTML page
- `compose-demo` - multi container setup using Docker Compose

## Stack
- Kali Linux
- AWS Free Tier
- Docker
- GitHub Actions

