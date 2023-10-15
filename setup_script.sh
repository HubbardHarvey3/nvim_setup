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
cp -v init.lua ~/.config/nvim/
cp -vr lua/ ~/.config/nvim/
cp -vr after/ ~/.config/nvim/
cp -iv pycodestyle ~/.config/
