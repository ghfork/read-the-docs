=====
Emacs
=====

emacs -nw No window mode
emacs --reverse-video # emacs -rv

# help
C-h C-h Emacs help
C-h t Help with tutorial
C-h ?
C-h c command Brief description of the command
C-h k command More Information about command
C-h K Go to the Emacs manual section that describe a key sequence
C-h w Opposite of C-h k, list the keys that invoke a command
C-h f Describe a function
C-h F Go to the Emacs manual section that describes an Emacs command
C-h d Show documentation for Lisp symbols whose documentation matches a word or regexp
C-h v Displays documentation of variables
C-h a Command Apropos
C-h i Read included Mauals
C-h r Read the emacs manuals
C-h p List available EmacsLisp packages
C-h n view emacs news
C-h l show your last 100 keystrokes
C-h b or describe-bindings
M-x search-emacs-glossary

# Canceling
C-g exit partially entered instruction
C-] or C-M-c
M-x top-level

# Movement
C-x C-c exit
C-v view next screen
M-v or <ESC>v view one screen backward
C-l moving the text around the cursor
C-0 C-l Recenter the screen at the top
C-- C-l Recenter the screen at the bottom
C-p previous line  
C-n Next line
C-b Backward
C-f Forward
M-f M-b Move in word basis
C-a C-e move to the beginning or end of a line
M-a M-e move to the beginning or end of a sentence
M-< M-> moves to the beginning or end of the whole text
C-u digits command Gives repeated count command
C-u digits M-v Moves count lines down
M-g g Jump to specified line

# Cursor Postition Information
M-= Display the number of lines, words, and characters that are present in the regions
M-x count-words-regions

# Delete operation
<DEL> or C-d Delete the character before or after the curser
M-<DEL> or M-d Kill the word before or after the cursor
C-k or M-k Kill from the cursor position to the end of line or current sentence
C-S-k Delete entire line
C-<SPC> C-<SPC> C-w Kill a segment
C-y or S-<INSERT> Yanking
M-y Yank back previous kill (after C-y)
C-/ or C-_ or C-x u Undo

# Whitespace Edits
<TAB>
C-x <TAB> Shift a block of lines rigidly right or left
M-q Fill paragraph
<RET> Add a new line after this one
C-o Open a new line before this one
C-x C-o Remove all but one empty line
M-<SPC> Remove all but one space
M-\ delete all spaces and tabs around point
M-^ Join this line to previous and fix up whitespace at join

# Windows
C-x 0 Delete window
C-x 1 One window
C-x 2 Split window (horizontal)
C-x 3 Split window (vertical)
C-x 4 f Open file in a different window
C-x 5 f Open file in a new frame
C-M-v Scroll the bottom window
C-x o move the cursor to the other window

# Adjust Windows
C-x ^ or enlarge-window Increse height
shrink-window
C-x } Increase width
C-x { Decrease width
C-x - or shrink-window-if-larger-than-buffer
C-x + or balance-windows

# Save split-window config
C-x r w "letter or digit" or window-configuration-to-register
C-x r j "letter or digit" or jump-to-register


# Multiple Frames
M-x make-frame
M-x delete-frame

# Files
C-x C-f Find a file
C-x C-s Save the file
C-x C-w Save as
C-x s Save some buffers
C-x i Insert a file into buffer
C-x C-b List buffers
C-x b command Switch to a buffer
ibuffer
ido-mode
C-x <C-LEFT> or C-x <LEFT> Previous buffer
C-x <C-RIGHT> or C-x <RIGHT> Next buffer
C-x C-v Kill current buffer and open another file
C-x k Kill a buffer
M-x recover-file
M-x fundamental-mode
M-x text-mode
C-h m View documentation of the current mode
M-x auto-fill-mode
M-x flyspell-mode
M-x follow-mode
C-x f Set margin (default 70)
M-q Re-fll paragraph

replace-string
M-x repl s<TAB>

# search
C-s Forward search # C-s, C-r to search next/previous
C-r Reverse search
C-u C-s Regular expression search
C-s C-s Search for most recently searched item
C-s M-p Previous item in search history
C-s M-n Next item in search history

M-% Query replace
y Replace
n Skip
q exit
. Replace this match, then exit
! Replace all remaining matches with no more questions



# Selecting and Modifying Region
C-@ or C-SPC Set-mark
C-x h Select entire buffer
C-x C-p Select page
C-x r s /# Copy selection to numbered clipboard
C-x r p /# Paste from numbered clipboard
C-x C-x Exchange point and mark
C-<INSERT> or M-w Copy text after setting mark
C-w or S-<DEL> Cut text after setting mark

C-x n n Narrow buffer to the current region
C-x n w Restore ("widen") buffer

# Hexl mode
M-x hexl-mode

C-h k C-f

# Viper mode
M-x viper-mode
M-x viper-go-away

# Repeat Commnad
C-x z
z

# Others
M-u Make word uppercase
M-l Make word lowercase
M-c Capitalized word

C-t Transpose adjacent characters
M-t Transpose adjacent words
C-x C-t Transpose adjacent lines
C-u 2 C-x C-t Move line 2 lines forward
M-^ Join previous line
C-1 M-^ Join next line

M-x list-command-history Return a command by hitting 'x' on the line containing a command

M-x list-colors-display

# Macros
F3 Start recording macro 
F4 Stop recording macro 
F4 Play back macro once
M-5 F4 Play back macro 5 times
M-0 F4 Play back macro over and over until it fails

# Integration with Common Tools
M-x shell
M-x compile
M-x gdb
M-x grep
M-x man
M-x calendar
M-x calculator
M-x phases-of-moon

M-x shell-command or M-!           # Prefix with C-u will insert output in current buffer
M-x shell-command-on-region or M-| # Executes a command, piping in the current region as input; displays the output in a new buffer.

# Dired
C-x d Open dired
C Copy file
R Rename/move file
D Delete file
+ Create a new dir
Z compress/decompress the file by gzip
M Change mode
m Mark a file
u Unmark
U Unmark all
% m Mark by pattern (regex)
^ Go to parent dir
g Refresh

# Elisp
C-x C-e or eval-last-sexp # evaluate the lisp expression to the left of the cursor
eval-region
M-: Read lisp expression in the minibuffer

# Common User Access (CUA) Keys
C-x C-c C-v C-z

#
M-p or M-n Scroll to previous or next command

# TAB
C-q <TAB> Insert one tab (C-q quote, insert literal character)
M-x local-set-key<RET> <TAB> self-insert-command # For this session, force just one TAB
C-M-\ or indent-region

# Bookmark
C-x r m or bookmark-set
C-x r l or bookmark-bmenu-list
C-x r space (#) Set numbered bookmark
C-x r j (#) Jump to numbered bookmark
## In bookmark
enter
o # Open in split window
s or bookmark-save
D # remove an item
r # rename

# Commands to Mark Textual Obcts

`M-@'
     Set mark after end of next word (`mark-word').  This does not move
     point.

`C-M-@'
     Set mark after end of following balanced expression (`mark-sexp').
     This does not move point.

`M-h'
     Move point to the beginning of the current paragraph, and set mark
     at the end (`mark-paragraph').

`C-M-h'
     Move point to the beginning of the current defun, and set mark at
     the end (`mark-defun').

`C-x C-p'
     Move point to the beginning of the current page, and set mark at
     the end (`mark-page').

`C-x h'
     Move point to the beginning of the buffer, and set mark at the end
     (`mark-whole-buffer').
