#!/bin/bash
# This is a custom bash script, written by Theisen as a workflow tool.
# To use on your machine, run a GNU/Linux operating system (e.g., Ubuntu).
# run chmod 755 to read, write, execute.
# Call the script with ./mk in your terminal.

pdflatex main
pdflatex main
biber main
makeglossaries main
pdflatex main
