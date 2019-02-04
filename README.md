# Verified Functional Programming in Agda

This repository are my solutions & notes from the [Learn you an Agda with "Verified Functional Programming in Agda"](https://www.meetup.com/SF-Types-Theorems-and-Programming-Languages/events/257219496/)
Meetup in San Francisco.  The purpose of this meetup is to work our way through  Aaron Stump's book ["Verified Functional Programming in Agda"](https://www.amazon.com/Verified-Functional-Programming-Agda-Books/dp/1970001240), the first dead-tree text on the language.

## Setup & installation of Agda (Mac OSX)

These are the steps that I took to install Agda and support it in my Emacs configuration on Mac OSX using [brew](https://docs.brew.sh/). There are alternate installation approaches so, when in doubt, [Read the Docs](https://agda.readthedocs.io/en/latest/overview.html).

1. brew update && brew install agda
   - Installs agda, agda-mode, etc. into /usr/local/bin 
   - CAUTION: This brew formula also installs emacs, etc. into /usr/local/bin.  I wish it hadn't or at least offered a way to prevent it.
2. Add the following to your .emacs file:
  
   ```elisp
   (load-file (let ((coding-system-for-read 'utf-8))
       (shell-command-to-string "agda-mode locate")))
   ```

3. Test your installation by copying and opening [peano.agda](https://github.com/adkelley/verified_fp_agda/blob/master/peano.agda) in emacs.  To run a check, type `C-c C-l` into emacs, or choose `Load` from the Agda menu. If your program checks correctly, there will be no error messages, no hole markers (yellow highlighting) and no orange-highlighted non-terminating sections. It should also say Agda: Checked at the bottom of the window, and you get syntax highlighting.  If it all worked then congratulations!


## Code examples from the book
These are located on github [IAL](https://github.com/cedille/ial).  The book mentions that they're located and have been tested with http://svn.divms.uiowa.edu/repos/clc/projects/agda/ial-releases/1.2, but these code examples (e.g., bool.agda) gave me some compiler deprecation warnings.  Note that the [IAL README](https://svn.divms.uiowa.edu/repos/clc/projects/agda/ial-releases/README.txt) mentions that the development of the IAL has shifted from svn to github.
