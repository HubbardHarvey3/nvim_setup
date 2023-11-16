#!/bin/bash

mkdir ~/.config/nvim

read -n1 -p "Delete existing NVIM Config? [y,n]" doit
case $doit in
  y|Y)
    echo
    echo -e "Deleting things!"
    rm -v ~/.config/nvim/init.lua
    rm -v -rf ~/.config/nvim/lua/;;

  n|N)
    echo
    echo -e "NOT Deleting Things!";;
  *)
    echo
    echo -e dont know ;;
esac

echo "Moving things!"
cp -v .tmux.conf ~/
cp -v init.lua ~/.config/nvim/
cp -vr lua/ ~/.config/nvim/
cp -vr after/ ~/.config/nvim/
cp -iv pycodestyle ~/.config/

# Check if tmux is running
if command -v tmux &> /dev/null; then
  # Check if a tmux session is active
  if [ -n "$TMUX" ]; then
    # Check if the current window is active
    tmux list-windows | grep -q "(active)"
    if [ $? -eq 0 ]; then
      # Execute the command to source the tmux.conf file
      tmux source-file ~/.tmux.conf
      echo "Sourced ~/.tmux.conf"
    else
      echo "The current tmux window is not active."
    fi
  else
    echo "No tmux session is active."
  fi
else
  echo "tmux is not installed."
fi
