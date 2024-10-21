#!/usr/bin/env bash

git clone https://github.com/leseixas/quantum_espresso-vim.git
mkdir -p $HOME/.vim/ftdetect $HOME/.vim/syntax
cp -ra quantum_espresso-vim/ftdetect $HOME/.vim/ftdetect
cp -ra quantum_espresso-vim/syntax   $HOME/.vim/syntax
