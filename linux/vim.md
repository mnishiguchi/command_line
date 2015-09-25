# vi
- pronouced "vee-eye”
- Usually the actual program installed on your system is vim
- graphical interface
    - GNOME: gvim
    - KDE: kvim

## vimtutor
- `$ vimtutor`
- comprehensive tutorial for those who want to learn their first vi commands
- a good place to start learning vi

## The three modes in vi
- https://courses.edx.org/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/VI_Editor.pdf

**Command**

- By default, vi starts in Command mode
- Keyboard strokes are interpreted as commands

**Insert**

- Type `i` to switch to Insert mode from Command mode
- Used to enter (insert)  text into a file
- Indicated by an "? INSERT ?" indicator at the bottom of the screen
- Press `Esc` to exit Insert mode (return to Command mode)

**Line**

- Type `:` to switch to the Line mode from Command mode.
- Each key is an external command
- Uses line editing commands inherited from older line editors
- Some line editing commands are very powerful.
- Press `Esc` to exit Line mode and return to Command mode.

## Working with Files

```
Command       |   Usage
--------------+-------------------------------------------------------
vi    file_1  |  Start vi and edit file_1
vi -r file_1  |  Start vi and edit file_1 in recovery mode from a system crash
:r    file_2  |  Read in file_2 and insert at current position
:w            |  Write to the file
:w    file_1  |  Write out the file to file_1
:w!   file_2  |  Overwrite file_2
:x or :wq     |  Exit vi and write out modified file
:q            |  Quit vi
:q!           |  Quit vi (without saving modifications)
```

## Changing Cursor Positions

- Line mode commands (those following colon (`:`))
- Require the `ENTER` key to be pressed after the command is typed.

```
Key                  |   Usage
---------------------+-----------------------------------------------
arrow keys           |   To move up, down, left and right
j or <ret>           |   To move one line down
k                    |   To move one line up
h or Backspace       |   To move one character left
l or Space           |   To move one character right
0                    |   To move to beginning of line
$                    |   To move to end of line
w                    |   To move to beginning of next word
:0 or 1G             |   To move to beginning of file
:n or nG             |   To move to line n
:$ or G              |   To move to last line in file
CTRL-F or Page Down  |   To move forward one page
CTRL-B or Page Up    |   To move backward one page
^l                   |   To refresh and center screen
H                    |   To move to the top of the screen
```


## Searching for Text

```
Command              |   Usage
---------------------+-----------------------------------------------
/pattern             | Search forward for pattern
?pattern             | Search backward for pattern


Key                  |   Usage
---------------------+-----------------------------------------------
n                    | Move to next occurrence of search pattern
N                    | Move to previous occurrence of search pattern
```

## Working with Text

```
Key        |   Usage
-----------+---------------------------------------------------------
a          | Append text after cursor; stop upon Escape key
A          | Append text at end of current line; stop upon Escape key
i          | Insert text before cursor; stop upon Escape key
I          | Insert text at beginning of current line; stop upon Escape key
o          | Start a new line below current line, insert text there; stop upon Esca       e key
O          | Start a new line above current line, insert text there; stop upon Esca       e key
r          | Replace character at current position
R          | Replace text starting with current position; stop upon Escape key
x          | Delete character at current position
Nx         | Delete N characters, starting at current position
dw         | Delete the word at the current position
D          | Delete the rest of the current line
dd         | Delete the current line
Ndd or dNd | Delete N lines
u          | Undo the previous operation
yy         | Yank (copy) the current line and put it in buffer
Nyy or yNy | Yank (copy) N lines and put it in buffer
p          | Paste at the current position the yanked line or lines from the buffer.
```

## Using External Commands

`:sh`
- Open an external command shell
- When you exit the shell, you will resume your vi editing session

`:!executes`
- Run a command from within vi
- Best suited for non-interactive commands such as: `:! wc %`
- The character `%` represents the file currently being edited.

`:%!fmt`
- Do simple formatting of text so that the file will look nice
- Run the entire file through fmt and replaces the file with the results
