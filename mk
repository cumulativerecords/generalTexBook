#!/bin/bash
# This is a custom bash script, written by Theisen as a workflow tool.
# To use on your machine:
# 1. Use a GNU/Linux operating system (e.g., Ubuntu) with install of texlive-full.
# 2. Enter the folder called trainaba-v1-ed2 (not a subfolder).
# 3. Run the following code to read, write, and execute the script.
#
#        chmod 755 mk
#
# 4. Finally, call the script with the following entry in terminal:
# 
#        ./mk main
#
# If the script above worked, you should see the computer quickly spool through a lot of code. When it is finished, look in the folder for the file called 'main.pdf'. That should be your updated version of the manuscript, containing whatever changes to content and/or formatting you chose to make. That includes broken formatting, so be careful. 

pdflatex main
pdflatex main
biber main
makeglossaries main
   makeindex -o main.ind main.idx
   makeindex -o main.nnd main.ndx
   makeindex -o main.tnd main.tdx
pdflatex main

