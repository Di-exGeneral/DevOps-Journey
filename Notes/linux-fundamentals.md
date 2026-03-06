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


