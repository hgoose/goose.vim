<!-- <p align="center"> -->
<!-- 	<img src="https://i.imgur.com/Du3bAJL.jpeg"> -->
<!-- </p> -->

<div align="center">

# Goose.vim

### DarkGruv

<img src="https://i.imgur.com/ZbKAvJW.png">

### Dark

<img src="https://i.imgur.com/OlxmmMK.png">

### Light

<img src="https://i.imgur.com/QCL8j9q.png">

### Night

<img src="https://i.imgur.com/DflC8pH.png">

### Purp

<img src="https://i.imgur.com/FWwA3ka.png">

</div>


#### About
Made by [hgoose](https://github.com/hgoose), an elegent theme to fullfill your vim/neovim colorscheme.
Shipped with many variants and modified colors for the airline status bar. [Click here to get airline for vim](https://github.com/vim-airline/vim-airline)

#### Side Note

click [here](https://github.com/rendello/templeos_font) to get the best font ever made

#### File Types
Originally designed for python files but should be equipped for any filetype

#### Install
Using vim plug

```vim
call plug#begin('~/.config/nvim/plugged')

Plug `hgoose/goose.vim`

call plug#end()

```

Using Packer



```lua
return require('packer').startup(function(use)

use 'hgoose/goose.vim'

end)
```


Set Colorscheme in vim

```vim
:colorscheme goose_dark or :colorscheme goose_light
```

#### Set colorscheme on open


with init.vim

```vim
set termguicolors 
colorscheme goose_dark/light
```

with init.lua

```lua
vim.cmd("colorscheme goose_dark/light")
```


