# Quantum ESPRESSO syntax for Vim

## Installation

### Manual

#### For Vim 8.0+

Vim 8.0+ recognizes plugins under `$HOME/.vim` (c.f. `runtimepath`).

```sh
% git clone https://github.com/leseixas/quantum_espresso-vim.git $HOME/.vim
```

#### Old Vim

Vim recognizes plugins for syntax highlighting under `$HOME/.vim/syntax` and `$HOME/.vim/ftdetect`.

```sh
% git clone https://github.com/leseixas/quantum_espresso-vim.git
% mkdir -p $HOME/.vim/ftdetect $HOME/.vim/syntax
% cp -ra quantum_espresso-vim/ftdetect $HOME/.vim/ftdetect
% cp -ra quantum_espresso-vim/syntax   $HOME/.vim/syntax
```

The commands are written in `install.sh` script.

### [Janus](https://github.com/carlhuda/janus)

```sh
% cd $HOME/.vim/janus/vim/langs
% git clone https://github.com/leseixas/quantum_espresso-vim.git
```

### [Vim-Jetpack](https://github.com/tani/vim-jetpack)

```vim
" ~/.vimrc

packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1}  "bootstrap
Jetpack 'vim-jp/syntax-vim-ex'
Jetpack 'leseixas/quantum_espresso-vim', {'for': 'espresso'}
Jetpack 'KensukeKurita/wannier90vim', {'for': 'wannier'}
call jetpack#end()
```

References:

- [vim-jp/syntax-vim-ex](https://github.com/vim-jp/syntax-vim-ex?tab=readme-ov-file)
- [KensukeKurita/wannier90vim](https://github.com/KensukeKurita/wannier90vim)
