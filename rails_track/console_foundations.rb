Creating Users 8:25
with Jim Hoskins
Managing users is an important aspect on any computer system. It's the foundation upon which the privacy and security controls are built. This video looks specifically at how to create users on Ubuntu Linux.

Apply the patch

Before getting started, or if you are revisiting this video, use the following command to prepare your system to create a new user.

curl -L trhou.se/patch01 | bash
If you receive an error when creating a new user stating that mike is already a user, the above command will remove the user so you can create him again.

Commands

whoami - Print which user you are
adduser - Interactive tool for creating users
su - Switch user
sudo - Perform a command as the super user
exit - exits from current user
pwd - shows current directory

File Permissions 11:31

Each file and folder has permissions that define which users can read, write, and run files. Understanding how users and permissions interact is critical when working from the console.


ls -l - List files in long format, including permissions info
chmod - Change the permissions (mode) of a file or directory
rwx notation

In ls -l, each file has a 10 character permission representation such as drwxrwxrwx. Each character represents a permission on the file. If the letter is replaced with a dash (-), it indicates the permission is not granted. For example -rwxr-xr-x.

The first character denotes if it is a dirctory. d means directory, -, means not a directory.

The next 9 characters can be grouped into triplets of rwx. The leftmost triplet is for the owner of the file, the middle is the group owner, and the right is permissions for others. rwx stand for the read, write, and execute permissions, respectively.

Octal notation

You may read or set permissions using a 3 digit octal number. The digits represent the owner, group, and other permissions, from left to right. Each digit may be 0 through 7 representing the different combinations of read, write, and execute.

To compute what each digit means, use this formula.

read/r = 4

write/w = 2

execute/x = 1

For each permission you want to grant, sum their corresponding values.
