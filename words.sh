#!/bin/sh


word=$(echo"" | dmenu -p "Add Word: ")
meaning=$(echo"" | dmenu -p "Add Meaning: ")
echo "$word | $meaning" >> ~/.local/share/words.txt



#add the line in .zshrc end(shuf -n 1 ~/.local/share/words.txt)