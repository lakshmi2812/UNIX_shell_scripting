# UNIX_shell_scripting
Introduction to the basics of the BASH shell, the frequently used commands and some BASH scripts

**Note:**
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

**Note:** When we type a command and then press Enter (the Return key), the shell adds a new line character to it and then the Bash Interpreter interprets the command.
What we have entered can be a built-in Shell command, or an executable file somewhere in the file system. If it is a built-in command, the shell interpreter executes the command.
If it is an executable file, **it will search for the file in a specific path**. This is probably what the PATH variable specifies? We will come back to this later!

The ``` type ``` command can be used to find out whether what we have entered after it is a built-in shell command or an executable. If it is none of these, the Shell will throw an error.

Example:
``` type cd ``` returns a message that ``` cd ``` is a shell built-in

**Note:** The echo command is used to print something (output something) to the terminal. If we use echo command with the option ```-n``` it omits the new line character that is printed by default after printing anything in the terminal.

Example:
```echo hello``` prints hello and a new line
```echo -n hello``` prints hello and then, prints the BASH prompt in the same line

**Note:**
UNIX has a tree-like directory structure. So, imagine a tree. At the bottom(root) of the tree, is the root directory denoted by the ```/``` character. The sub directories of the root are like the branches of the tree. To address a sub-directory under the root, we type ```/Shared``` for example. There is a directory called the Home directory, represented by the ```~``` symbol. So, ```cd ~``` will take us to the Home directoty.

Type ```cd``` to change directory and go to a specific directory. 
Example: ```cd ~/Dociments``` to navigate to the Documents directory.

Type ```ls``` to list all the files under the directory
Example: Navigate to the Documents directory and type ```ls``` to list all the directories and files under the Documents directory.

Type ```pwd``` to print the absolute path of the current directory to which we have navigated.

**Note: Absolute path and Relative path**
Absolute path: Absolute path denotes the path that starts from the root directory.
Example: ```/users/username/Documents/Pictures``` is an absolute path.
Relative path: Relative path is the path relative to the current directory.
Example: If we are currently within the Documents directory, and if we want to navigate to the Pictures directory, we can simple type ```cd Pictures``` instead of typing the entire absolute path of the Pictures directory.

Type ```cd ..``` to navigate to the parent directory

Type ```cd -``` to navigate to the previous directory
Example: Let's say that you are currently located at ```/users/username/Documents/Pictures```
Let's say that you now navigated to ```/Users/Shared```
If you type ```cd -``` you will navigate back to ```/users/username/Documents/Pictures```

Type ```ls -a``` to see the list of hidden files (the ones that start with a period.) under the current directory

**Wildcards:**

Wildcards allow us to list the files or directories whose names we do not know completely.
The ```?``` wildcard can be used when we have only one unknown character.
For Example, let us say we have a directory called MECH with several sub-directories such as MECH_283, MECH_287, MECH_289, MECH_275 inside it.
Type ```ls MECH_28?``` to list all the contents inside the MECH_283, MECH_287 and MECH_289 directories.

The ```*``` wildcard can be used to match the file or dircetory names which can have several unknown characters.
For Example, Type ```ls *.pdf``` to list all the files that have a .pdf extension in the current directory
The ```[]``` wildcard can be used when we want to match a set of characters

The ```{}``` wildcard can be used to append or prepend strings
Example: Type ```echo s{a,i,u}ng``` will print sang sing sung to the terminal
Use ```{}``` with ```..``` to expand a sequence of letters or numbers
Example: Type ```echo {a..z}``` to print letters from a to z to the terminal. Type ```echo {1..10}``` to [rint the numbers from 1 to 10 to the terminal.

**Other Meta characters:** Other metacharacters include:
```|``` -> pipe
```>``` -> redirect output
```\``` -> escape the next character
```#``` -> comments
```$``` -> denotes a SHELL variable
```;``` -> command separator (allows you to write mutiple commands on the same line)

**Phrases:**
Let's say we want to write an entire phrase/sentence to the output. To do this, we can use the ```\``` character along with the ```echo``` command.
Example: Type  ```echo Today is a great day, \
            this is the day when my country got Independence. We \
            celebrate this day with great enthusiasm in my country.``` and then press the Return key.
The entire sentence will be printed to the output at a stretch.

```''``` -> To escape any SHELL variables within a phrase, just enclose them within ```''```
Example: echo '$BASH_VERSION gives us information about the current BASH version'
will be printed as it is, without interpreting the ```$BASH_VERSION``` variabe.

Alternatively, we can use the backslash ```\``` character to escape the variable that comes after it.
Example: echo \$BASH_VERSION gives us information about the current version of BASH will also print the sentence as it is to teh output, without interpreting the ```$BASH_VERSION``` variable.


            






























