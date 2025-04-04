# UNIX_shell_scripting
Introduction to the basics of the BASH shell, the frequently used commands and some BASH scripts. The bash_scripts folder contains some sample scripts for writing for loops, while and until loops, select statements and if-elif-else blocks, and functions among others in Bash. There is also a program to write Bubble sort in Bash.

**Note:**
UNIX is a multi-user Operating System(OS). Apple's MAC OS is based on UNIX. 
A Kernel is at the heart of an Operating System. The Kernel is a program that gets loaded into the memory during system boot-up and manages the memory, processes/tasks, etc.,
A shell is a program that allows a user to interact with the Operating System's kernel. The shell gets loaded when the user logs in to a UNIX-based system or when the user opens a terminal.The shell allows the user to interact with the kernel either by typing commands at the command prompt or by using a script file.
BASH is a popular shell program. A variant of BASH called ZSH is also very popular with MAC OS.

## COMMANDS:
``` ps $$ ```
Tells the type of shell that is being used with our current system. By checking the name under the command column, we can tell if the default shell for our system is BASH or ZSH\

If the name of the default shell for your system is not BASH, type the ``` bash ``` command to switch to BASH.\

Type ``` bash --version ``` to find out the BASH version\

Type the commands ``` whoami ``` and ``` hostname ``` to get the current username(remember, BASH is a multi-user OS!) and the hostname respectively.\

Type the ``` exit ``` command or ``` Ctrl + D ``` to end the session\

Type the ``` clear ``` command to clear the terminal screen\

**Note:** When we type a command and then press Enter (the Return key), the shell adds a new line character to it and then the Bash Interpreter interprets the command.\
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

**Getting help**:
The ```help``` command gives us information about all the BASH built-in commands.
Example: Type ```help``` to get all this information, spanning several screens.
Or, type ```help | more``` to get this information one screen at a time
You can also use the ```help``` command to get information about a specific command.
Example: Type ```help exit``` to know about the ```exit``` command.
Note that the help command can only be used to get info about the built-in commands and not the shell programs on a file system.
Example: If you type ```help ps``` , you will get an error, since ```ps``` is more like a program on teh files system.

The ```man``` command can be used to get information about any SHELL bult-in command or a program on the file system.
Example: Type ```man ps``` to get information about the ```ps``` command 

**Files and Directories**

**Basename:**
To extract the file name or directory name at the end of a path, use the ```basename``` command.
Example: Type ```basename /a/b/c.txt``` to extract the file name in the given path. Result will be ```c.txt```

**Pathname:**
Conversely, to remove the filename or directory name occuring at the end of a given path, we can us ethe ```pathname``` command.
Example: Type ```pathname /a/b/c.txt``` to get remove the filename at the end of the path. Result will be ```/a/b```

**mv, cp and rm commands**\
```mv``` 

The ```mv``` command is used to move a file from one loation(directory) to the other. ```mv``` takes two arguments, first one is the name of the file you want to move and the second one is path to the new location where it is to be moved. \
Example: ```mv parrot.txt birds```. This command moves the file parrot.txt to the birds sub-directory within the same directory.\
Note: If the new location(directory) contains a file of the same name, that file will be overridden without warning. If you want to be warned about this, use the ```mv``` command with the ```-i``` option.\
Example: Let us say we are at location ```/x/y``` which has the contents a.txt and a sub-directory called notebook. Let us say that notebook also has a file called a.txt. If we type ```mv -i a.txt notebook/a.txt``` we get a prompt asking if we want to overwrite the a.txt at the destination.\
Note: The ```mv``` command can also be used to rename a file. You can specify the current file name as the first argument and the new file name as the second argument to rename a file.\
Example: ```mv abcd.txt readme.txt``` renames the file to ```readme.txt```\

```cp``` 

The ```cp``` command allows us to create a copy of one or more files to another location, while keeping the contents of the original files and location intact.
Example: Let us say that we have two files at the paths ```/a/b/dummy1.txt``` and ```/a/b/dummy2.txt```. Let us say that ```/a/b/dummies``` is a sub-directory in the directory named b. Now if we want to copy dummy1.txt and dummy2.txt to the dummies directory, we can do it like this: \
First, navigate to the directory b like this:  ```cd /a/b```, then type ```cp dummy1.txt dummy2.txt dummies```
This will make a copy of both dummy1.txt and dummy2.txt in the dummies directory.

```rm``` 

The ```rm``` command is used to remove one or more files. If we want to remove all the files in a directory, we can use the * wildcard with ```rm``` to do so.
Example: Let us say that the directory /x/y has the files x1.txt and x2.txt. If we want to remove x1.txt, we can do so like this: \
Type ```rm x1.txt```
If we want to remove all the files from /x/y, we can do so like this:
Navigate to /x/y and type: ```rm *```
Note: ```rm *``` will remove all the files in the directory, including all the hidden files as well. So, we need to use it with caution. Looks like it is better to use the earlier ```rm -ri``` which will ask us before deleting each file, to clean up our directories (by removing unwanted files). \

Note: We can display the contents of a text file(.txt file) to the terminal by using the ```cat``` command.
Example: Type ```cat dummy1.txt``` to display the contents of dummy1.txt to the terminal. 

**Adding links:**
```ln```

The ```ln``` command can be used to create links for a file. There are two types of links: hardlink and softlink.
A hardlink file is named as .hardlink, a softlink file is named as .softlink \
To ```ln``` command creates a hardlink by default. To create a hardlink for a file at the location /a/b/dummy1.txt: \
Type ```ln dummy1.txt dummy1.hardlink``` \
Now, you can use the hardlink to display the contents of the file like this:
Type ```cat dummy1.hardlink``` to display the contents of dummy.txt to the terminal. \
If you delete the file dummy1.txt, you can still display the contents of it by typing ```cat dummy.hardlink```!!

To create a softlink, use the ```-s``` flag with the ```ln``` command
Example: Type ```ln -s dummy2.txt dummy2.softlink``` \
Now, you can use the softlink as well to display the contents of dummy2.txt like this: \
Type ```cat dummy2.softlink``` \
If you delet the file dummy2.txt, and try to display the contents of it like this:
Type ```cat dummy2.softlink```, you will get an error! \
Note: Files in UNIX have two components: the filename and an inode that points to the data. When we create a hardlink, the hardlink gets assigned the same numeric inode (inode is probably sort of an identifier, because inodes are like IDs that only contain digits between 0-9) as that of the one that was pointing to the data. When we create a softlink, the softlink gets a different inode, which is not pointing to the data. So, when a file gets deleted, we are still able to read the data using the hardlink, but not using the softlink as shown in the example above. \

We can numeric inodes allocated to files using the ```ls``` command with the ```-i``` flag as shown below:
In the above example, navigate to the path /a/b and type ```ls -i``` to see the inodes for all the files and the hardlinks and the softlinks.

We can get the original filename for a given softlink using the ```readlink``` command as shown below:
In the example above, type ```readlink dummy2.softlink```. The result will be dummy2.txt which is the origunal file to which the softlink is pointing.

**Commands to check the file properties**
We can use ```cat -n``` to display the file text along with the line numbers as shown below: \
Type ```cat dummy1.txt``` to display the contents of dummy.txt along with its line numbers. \
We can use the ```stat``` command to know the properties of the file such as, the inode number, the file access(read, write, etc.,) permissions, the date when the file was modofied, etc.,\
Type ```stat dummy.txt``` to display the properties of the file.

Use the ```wc``` command to find the line count, word count and byte size for the file.
Example: Type ```wc dummy1.txt``` to display the number of words and lines and the byte size of that file.

Use the ```file``` command to find out the type of file.
Example: Type ```file dummy1.txt``` to find out the type of that file.

**touch**
The ```touch``` command ca be used to create a new file. This command can be used with several flags. For example, we can use the ```-d``` flag to modify the access and modified times for a file. \
Example: To create a new file using the touch command: \
Type ```touch a.txt```. This creates a new file called a.txt
To set the access and modified times, type ```touch -d "2024-01-20 03:03:03" a.txt```. This changes the access and modified times for the file to the given date and time. Now, type ```stat a.txt``` and you will see that the access and modified times for that file have changed. \
The ```-t``` flag can be used for a similar purpose as well - to change the access and modified times to the specified date and time instead of the current date and time. But, we need to use a different datetime format with the ```-t``` flag. Type ```man touch``` and look up the ```-t``` option to read about this in detail. 

**Comparing files**
There are two commands that can be used to compare two files: The ```cmp``` command and the ```comm``` command. \
The ```cmp``` command outputs the line number and the character number where there is a difference between the two files. \
The ```comm``` command outputs three lines:\
Line 1 - outputs what is in file 1 and not in file 2 \
Line 2 - outputs what is in file 2 and not in file 1 \
Line 3 - outputs what is in both the files 

Example: Create two files, a.txt and b.txt. Make sure that they have some common text and some text that is unique to each file as well. Now, to test the ```cmp``` command, type the following: ```cmp a.txt b.txt```. You will see that the command outputs the first line at which there is a difference between the text files. It also outputs the character at which the text in the files has started differing. To test the ```comm``` command, type the following: ```comm a.txt b.txt```. This compares both the files and outputs three lines as discussed in the command definition above.\

The ```diff``` command can also be used to compare the files line by line. It can be used to output any unique lines in the two files.\
Let us say that we have two files - fruits1.txt and fruits2.txt, and we want to find the lines that are different in the files. We can do so using the example below:
Example: Type ```diff fruits1.txt fruits2.txt``` will output the unique lines in fruits1.txt followed by the unique line in fruits2.txt.\

**Checksum**
The ```cksum``` command produces a checksum for a given file. The same checksum will be produced for a file if it is intact. This way, we can check to see if the file is intact or corrupted. Example: ```cksum a.txt``` produces a checksum for the file. This command also outputs the file size in bytes.\

We can use the ```gzip``` command to compress files. Example: ```gzip a.txt```. This produces a.txt.gz file.\
We can uncompress this file again using the ```gunzip``` command. Example: ```gunzip a.txt.gz``` gives you the original a.txt file back.\

The ```du``` command can be used to find out the number of 512 byte blocks used by a file. This command can be used with the ```-k``` flag to get the file size in kilobytes.\
Example: ```du a.txt``` outputs the number of 512 byte blocks used by a.txt and ```du -k a.txt``` gives the file size in kilobytes.\

We can also use the ```zip``` command to compress files. The ```zip``` command take atleast two arguments: the filename.zip(the file name after compressing with the .zip extension) and the original file to be compressed. We can compress several files and store them within the same zip file. How we plan to uncompress them in the future is something to think about though!\
We can uncompress the .zip file using the ```unzip``` command. The unzip command produces a new uncompressed file with the same name as that of the original file. 

Example for the ```zip``` command usage: ```zip  a.zip a.txt``` produces the file a.zip\
To uncompress a.zip, type: ```unzip a.zip```. This command will prompt you to enter an option to either replace the original file or rename the unzipped file and give it a different name from that of the original file to avoid confusion.\

The ```find``` command can be used to find files or directories. It has a syntax that is a little difficult to remember. It is better to use the man pages to refer to the exact syntax. It has several options(flags). Let us see how we can find a fie using this command using the example below:\
Type ```find ~/eclipse -type f -name hello*```. This gives you a list of all the files that start with the word 'hello'.\
If we want the ```find``` command search list to include the links as well, we can do so using the ```-L``` flag.\
Example: Type ```find -L type f -name hello*``` will return the list of all files that start with 'hello', including any links.\

An action can be performed on each of the files that form the search result of the ```find``` command using the ```-exec``` option as shown below:
Type ```find ~/eclipse type f -name hello* -exec {} \; to know the file types of each of the files returned in the search.\

Use the variant ```-newermt``` option with the ```find``` command to get all the files that are newer than a given date as shown below:\
Type ```find ~/eclipse type -f -name hello* -newer "2018-12-12"``` to get all the files in the given directory that are newer than the specified date.\

**Taking Backups**\

There are two commands that we can use to archive files. They are ```cpio``` and ```tar```.\
```cpio```\
The ```cpio``` command can be used to archive out data(taking a backup of our data). Here is an example usage:\
Let us say that we are in the directory called sample and we have two files - a.txt, b.png and a sub-directory called backup_sample inside it. Let us say that the backup_sample folder has three files - screenshot.png, sad.jpg and and presentation.ppt. Now, cd into the backup_sample folder and type the following:\
```ls | cpio -o > ../archive.cpio``` to take a backup of the list of all the current files and store them in the parent directory with the name archive.cpio.\
To extract the files from the archive do the following:\
First, cd into the parent directory to make sure that the archive.cpio archive exists. Next, go to backup_sample folder and type ```rm *``` to delete all the files from the directory. Now, type ```ls``` to make sure that the backup_sample directory is empty. Now, to extract all the archive files from the parent directory, type the following:\
```cpio -i < ../archive.cpio```. Now, type ```ls``` to see that all of the files are back!

```tar```\
The ```tar``` command can be used to create a tape archive(a type of archive file). Example usage is as shown below:\
In the above example, cd into the backup_sample folder and type ```ls```. Now, type the following:\
```tar -cf ../archive.tar *```. This command creates a tape arhive of all the files (indicated by * in the command) in the current directory and stores it in the parent directory(indicated by the .. in the command) under the file name archive.tar. Now, go back to parent dircetory and make sure that the archive.tar file has been created. Now, go back to the backup_sample directory and type ```rm *``` to remove all the files in the backup_sample directory. Now, to extract the files from the archive, type the following:\
```tar -xf ../archive.tar``` in the backup_sample directory and then type ```ls``` to see that all the files are back!\

The tar command can be used with ```-czf``` and ```-xzf``` options to create and extract compressed tar archives (called tarball archives). Use the exact description given in the above example, but use the ```tar -czf ../archive.tar.gz *``` and ```tar -xzf ../archive.tar.gz``` to take a backup of the files and then extract the files respectively.\

```cat```
The ```cat``` command can be used to accept user input and print it to the output(terminal). For example:\
```cat filename.txt``` will print the contents of the file to the terminal.\
Multiple filenames can be given to the ```cat``` command to output the contents of multiple files one after the other.\
Example: ```cat file1.txt file2.txt``` will output the contents of both file1.txt and file2.txt one after the other to the terminal.\
We can number the lines in the file by using the ```-n``` option with the ```cat``` command.\
Example: ```cat -n file1.txt``` will output the lines in file1.txt to the terminal and also give numbers to the lines in the file.\
The ```cat``` command without any filenames given, will prompt the user for input and when the user types a new line and hts Return, it prints the newline to the terminal. This goes on until the user types ```Ctrl + D``` to exit this loop.\
Example: Type ```cat``` and press the Return key. Type a line and press the Return key and it will be printed to the output. Repeat for as many lines as you want, and then type ```Ctrl+D``` to exit this command loop.\

We have learnt earlier that the ```echo``` command can be used to print something to the output. But, instead if we want to print it to a file, we can do that using the > redirection operator.\
For example: ```echo hello! > hello.txt``` will create a new file called hello.txt and write hello! to that file.\
If that file already has some contents in it, those contents will be overwritten by the above command. If we don't want that to happen, we need to use the >> operator which will instead append the text to the file.\

We can escape the ```\n``` newline and ```\t``` tab characters using the ```-e``` option with the echo command and also the \ character.\
Example: Type ```echo -e \``` to get a prompt where you can enter multiple lines and the Return key will be ignored. Now type ```Here is a \\nNew line and a new \\tTab```

**Redirecting Output**
The ```|``` pipe operator allows the output from one command to be given as the input to the next command. When we give two or more commands like this, separated by the ```|``` operator, it is called a pipeline.

The ```|``` pipe command is often used with the ```more``` option to display large text files or manual pages, one page at a time. If we do not give the ```more``` option, the cursor will scroll to the bottom of the screen.

Example: Suppose we have a file called stories.txt that has many stories, spanning multiple pages. Type ```cat stories.txt | more``` to display one screen at a time. We can then use the Return key to scroll line by line or you can also use the spacebar to scroll page by page. Type ```q``` to quit this command.

A similar option is the ```less``` command that serves a similar purpose. Additionally, it allows us to also use the up and down arrow keys to scroll up or down line by line.

Example: ```cat stories.txt | less```

We can use the ```head``` and ```tail``` options with the cat command using the ```|``` opeartor to display the first few or the last few lines of a file respectively. \
For Example: Type ```cat -n stories.txt | head``` to display the first 10 lines of the stories.txt file. The lines will be numbered.
Type ```cat -n stories.txt | tail``` to display the last 10 lines of the stories.txt file, with the lines numbered.\
Note that the ```-n``` option numbers the empty lines as well. The ```-b``` option numbers only the non-empty lines. But, the caveat with the ```-b``` option is that the non-empty lines will be counted too as part of the 10 lines displayed.

We can use the ```head -n``` or the ```tail -n``` options to display only a specific number of lines on the screen. \
Example: ```cat -n stories.txt | head -6``` will display the first 6 lines of the file, and ```cat -n stories.txt | tail -6``` will display the last 6 lines of the file respectively.

**Seeking Strings**
```grep```:  The ```grep``` command can be used to find a string in a given file or set of files. \
Example: ```grep 'story' stories.txt``` will display all the lines in the file stories.txt that have the string 'story'. For instance, lines containing words like history, storyteller, etc., will aslo be displayed. To see the line numbers of the displayed lines, we can type ```grep -n 'story' stories.txt```

We can also use ```grep``` to find the string in mutiple files. For example, ```grep 'story' *.txt``` will display the lines containing 'story' in all the text files in the current location.\

If we only want to display the names of the files containing the given string, and not the lines containing the string, we can use the ```-l``` option as follows: Type ```grep -l 'hi' *.txt``` to display the names of all the text files in the current location that have the string 'hi' in them.\

If we only want to display the count of the files containing the given string, we do so as follows: Type ```grep -c 'hi' *.txt``` to get the number of file in the current location that contain the string 'hi'.\

The ```grep``` command can be used along with the ```|``` operator to fetch the files containing a given string among the list of files obtained as a result of the command used before the ```|``` operator. For example: Type ```ls * | grep -i 'hi'``` will do the following:\
The first command ```ls *``` will fetch all the files in the current directory and also in its sub-directories. The second command ```grep -i 'hi'``` will make a case-insensitive search(because of the -i) and fetch the names of the files containing the string 'hi'.\







































































            






























