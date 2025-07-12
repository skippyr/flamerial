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

## ❡ Instalação
### Procedimentos para o [Vim Plug](https://github.com/junegunn/vim-plug)
- Adicione o seguinte colorscheme e comandos plug em seu `~/.vimrc` (no caso do Vim) ou `~/.config/nvim/init.vim` (no caso do Neovim usando VimScript):

```vim
call plug#begin()
Plug 'skippyr/flamerial.vim'
call plug#end()

syntax on
colorscheme flamerial
set termguicolors
```

- Reinicie o Vim/Neovim.
- Execute o comando `:PlugInstall` para instalar o tema.
- Reinicie o Vim/Neovim.

### Procedimentos para o [Packer](https://github.com/wbthomason/packer.nvim)
- Adicione os seguintes use e comandos do Vim em seu `~/.config/nvim/init.lua` (no caso do Neovim usando Lua):

```lua
require('packer').startup(function(use)
  use 'skippyr/flamerial.vim'
end)

vim.cmd('syntax on')
vim.cmd('colorscheme flamerial')
vim.cmd('set termguicolors')
```

- Reinicie o Vim/Neovim.
- Use o comando `:PackerSync` para instalar o tema.
- Reinicie o Vim/Neovim.

&ensp;
<p align="center"><sup>– 🐉❤️‍🔥 –</br><strong>≥v≥v&ensp;Aqui Vivem Os Dragões!&ensp;≥v≥</strong><br/>Feito com amor por 🍒 <a href="https://github.com/skippyr">skippyr</a></sup></p>
