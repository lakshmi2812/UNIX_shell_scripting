# UNIX_shell_scripting
Introduction to the basics of the BASH shell, the frequently used commands and some BASH scripts

Notes:
UNIX is a multi-user Operating System(OS). Apple's MAC OS is based on UNIX. 
A Kernel is at the heart of an Operating System. The Kernel is a program that gets loaded into the memory during system boot-up and manages the memory, processes/tasks, etc.,
A shell is a program that allows a user to interact with the Operating System's kernel. The shell gets loaded when the user logs in to a UNIX-based system or when the user opens a terminal.The shell allows the user to interact with the kernel either by typing commands at the command prompt or by using a script file.
BASH is a popular shell program. A variant of BASH called ZSH is also very popular with MAC OS.

## COMMANDS:
``` ps $$ ```
Tells the type of shell that is being used with our current system. By checking the name under the command column, we can tell if the default shell for our system is BASH or ZSH

If the name of the default shell for your system is not BASH, type the ``` bash ``` command to switch to BASH.

Type ``` bash --version ``` to find out the BASH version

Type the commands ``` whoami ``` and ``` hostname ``` to get the current username(remember, BASH is a multi-user OS!) and the hostname respectively.

Type the ``` exit ``` command or ``` Ctrl + D ``` to end the session

Type the ``` clear ``` command to clear the terminal screen

Note: When we type a command and then press Enter (the Return key), the shell adds a new line character to it and then the Bash Interpreter interprets the command.
What we have entered can be a built-in Shell command, or an executable file somewhere in the file system. If it is a built-in command, the shell interpreter executes the command.
If it is an executable file, **it will search for the file in a specific path**. This is probably what the PATH variable specifies? We will come back to this later!

The ``` type ``` command can be used to find out whether what we have entered after it is a built-in shell command or an executable. If it is none of these, the Shell will throw an error.

Example:

``` type cd ``` returns a message that ``` cd ``` is a shell built-in



















