
# CHMOD and CHOWN

## 1. CHMOD
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


## 2. CHOWN
Short for "Change Owner", is used to change owners and groups owning the file.

The syntax is as follows:

    chown owner:group filename

- owner = the person you want to own the file
- group = the group you want to own the file
