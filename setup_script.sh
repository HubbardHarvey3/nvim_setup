#!/bin/bash

mkdir ~/.config/nvim

read -n1 -p "Delete existing NVIM Config? [y,n]" doit
case $doit in
  y|Y)
    rm -v ~/.config/nvim/init.lua
    rm -v -rf ~/.config/nvim/lua/
    echo
    echo -e "Deleting things!";;

  n|N)
    echo
    echo -e "NOT Deleting Things!";;
  *)
    echo
    echo -e dont know ;;
esac


cp init.lua ~/.config/nvim/
cp -r lua/ ~/.config/nvim/
