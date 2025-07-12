<p align="center">
  <img alt="" src="../../assets/ornament.png" width="1020" />
</p>
<h1 align="center">≥v≥v&ensp;Flamerial&ensp;≥v≥v</h1>
<p align="center">—&ensp;Vim&ensp;—</p>
<p align="center">
  <span><a href="https://github.com/skippyr/flamerial/blob/master/ports/vim/README.md">🇺🇸 English-US</a></span>
  &ensp;
  <span><a href="https://github.com/skippyr/flamerial/blob/master/ports/vim/README_pt-BR.md">🇧🇷 Portuguese-BR</a></span>
</p>

## ❡ Install
### Procedures for [Vim Plug](https://github.com/junegunn/vim-plug)
- Add the following colorscheme and plug commands to your `~/.vimrc` (for Vim) or `~/.config/nvim/init.vim` (for Neovim using VimScript):

```vim
call plug#begin()
Plug 'skippyr/flamerial.vim'
call plug#end()

syntax on
colorscheme flamerial
set termguicolors
```

- Restart Vim/Neovim.
- Use the `:PlugInstall` command to install the theme.
- Restart Vim/Neovim.

### Procedures for [Packer](https://github.com/wbthomason/packer.nvim)
- Add the following use and Vim commands to your `~/.config/nvim/init.lua` (for Neovim using Lua):

```lua
require('packer').startup(function(use)
  use 'skippyr/flamerial.vim'
end)

vim.cmd('syntax on')
vim.cmd('colorscheme flamerial')
vim.cmd('set termguicolors')
```

- Restart Vim/Neovim.
- Use the `:PackerSync` command to install the theme.
- Restart Vim/Neovim.

&ensp;
<p align="center"><sup>– 🐉❤️‍🔥 –</br><strong>≥v≥v&ensp;Here Be Dragons!&ensp;≥v≥</strong><br/>Made with love by 🍒 <a href="https://github.com/skippyr">skippyr</a></sup></p>
