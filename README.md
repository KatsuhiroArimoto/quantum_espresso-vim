# Quantum ESPRESSO syntax for Vim

## Installation

### Manual

#### For Vim 8.0+

Vim 8.0+ recognizes plugins under `$HOME/.vim/pack/**/start`.

```sh
$ git clone https://github.com/leseixas/quantum_espresso-vim.git $HOME/.vim/pack/**/start
```

#### Old Vim

Vim recognizes plugins for syntax highlighting under `$HOME/.vim/syntax` and `$HOME/.vim/ftdetect`.

```sh
$ git clone https://github.com/leseixas/quantum_espresso-vim.git
$ mkdir -p $HOME/.vim/ftdetect $HOME/.vim/syntax
$ cp ./ftdetect/espresso.vim $HOME/.vim/ftdetect/espresso.vim
$ cp ./syntax/espresso.vim   $HOME/.vim/syntax/espresso.vim
```

The commands after `git clobe` is written in `install.sh` script.

### Vim with Janus

```sh
$ cd $HOME/.vim/janus/vim/langs
$ git clone https://github.com/leseixas/quantum_espresso-vim.git
```

