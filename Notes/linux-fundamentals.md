# LINUX FUNDAMENTALS

## 1. PERMISSIONS
### 1.1 CHMOD and CHOWN

#### a) CHMOD
Short for "Change Modification", is used to set file permission for all user handlind that file. 
Permissions "`rwxrwxrwx`" are divided into 3 parts: owner, group and others
- The first 3 represent the owner
- The middle 3 represent the group
- The last 3 represent other users

Each letter of the permission has it's own numeric value:
- r = 4
- w = 2
- x = 1


You can change permissions using both letters or numbers

Meaning you can either:

    chmod u=rwx,g=rx,o=rx filename

or

    chmod 755 filename

Both of these commands set permossions to `-rwxr-xr-x`


#### b) CHOWN
Short for "Change Owner", is used to change owners and groups owning the file.

The syntax is as follows:

    chown owner:group filename

- owner = the person you want to own the file
- group = the group you want to own the file


----
## 2. PROCESSES
#### Covered commands:
- top
- ps aux
- kill
- job
- fg

#### a) TOP
The `top` command is used to see all live running processes. It's like Task Manager in Windows

#### b) PS AUX
The `ps aux` command works similar to the `top` command, the difference is that `ps` shows a static processes. It makes a snapshot of all running processes


#### c) KILL
The `kill` command is used to stop unresponsive processes. `-15` is used to "politely" ask the process to stop, and `-9` is used to stop them immediately.

"15 please, nine for none"


#### d) JOB
The `job` command is used to display all processes running in the background

#### e) FG
The `fg` command is used to bring any selected preocess from the background to the foreground

The syntax is as follows: 

        fg %?

- `?` is the number of a process


## 3. FILE SYSTEM AND NAVIGATION
Linux is operates using files and each file has it's own category, from configuration files to personal files.

These are all linux directories and their categories
      
    /etc     = configuration files
    /var     = logs and variable data
    /home    = user personal folders
    /tmp     = temporary files, cleared on reboot
    /bin     = essential system commands
    /usr     = user installed programs
    /root    = root user's home folder
    /proc    = live kernel and process info
    /opt     = third party software


For now I only focused on `/var/log` dir. It is where all logs of what has been installed (or basically what changed on the system) are stored. You can `find` them in `/var/log/dpkg.log` and `/varlog/apt/history.log`, those are the files where the logs are recorded.

In addition I focused on other commands related to the file system which are:
- `tree`        = displays all folders and their sub-folders like a tree (don't use it alone, add `-L ?` to specify how many levels do you want)

  
- `find`        = it is used to locate files on the system (`find [where to look] [what to look for]`)

  
- `which`       = used to locate which and where a command is running

  
- `2>/dev/null` = not really a command but it's used to redirect errors into a "blackhole" so that they don't show on the terminal

## 4. TEXT PROCESSING
Manupilating text insede files using commands

Command covered here:
- grep
- sed
- awk

#### a) GREP
`grep` is used to highlight specific texts inside files. You can choose what the output be using flags like `-i`, `-n`, `-v`, and `-c`.

    -i = ignore case
    -n = return output with its line number
    -v = ignore all lines containing the word
    -c = how many times it appears or on how many lines

#### b) SED
Used to replace words in files. The effects of it are permanent and can't be undone so you have to be carefull using it. You can use `sed` without flags to test and see what the results would be, then use `-i` when you're sure.

- `-i` means "`inplace`", that's what changes the the text in the specified file

Syntax:

    sed 's/old/new/' [targeted file]     // only displays and won't change anything in the file
    sed -i 's/old/new/' [targeted file]  // changes the file contents


#### C) AWK
`awk` is used to manupilate and format text in files. It's like string manupilation in other languages.

Instead of staring with `0` like normal languages, `awk` starts with `$1` and `$0` is used to return the whole line. You can specify separators using `-F` flag.

    awk -F '{print $1 " - " $2}'  // the defualt way separates based on whitelines and add "-" between each word

    awk -F: '{print $1 " - " $2}' // will separate text based on colons ":" 


## 5. PACKAGE MANAGEMENT AND SERVICES

### a) APT
Advanced Package Tool used to manage packages on Debian based systems

Most `apt` used commands are: 

    sudo apt update
    sudo apt upgrade
    sudo apt install packagename
    sudo apt remove packagename
    sudo apt purge packagename
    sudo apt autoremove

#### The difference between remove, autoremove and purge
- `remove` only removes the package and keeps its config file
- `purge` on the other hand removes packages entirely
- `autoremove` remove all the extra packages that were automatically installed with the package


### b) SYSTEMCTL
System Control is used to manage services

Some of the

    sudo systemctl start servicename     
    sudo systemctl stop servicename
    sudo systemctl restart servicename
    sudo systemctl status servicename
    sudo systemctl enable servicename 
    sudo systemctl disable servicename


#### The difference between START AND ENABLE
- `start` starts a service at that moment
- `enable` tells the system to start automatically on boot
  








