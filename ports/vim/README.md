<p align="center">
    <img alt="" src="../../assets/images/ornament.png" width=1020 />
</p>
<h1 align="center">≥v≥v&ensp;Flamerial&ensp;≥v≥v</h1>
<p align="center">—&ensp;Vim&ensp;—</p>

## ❡ Install
### Procedures
- Copy `autoload` and `flamerial.vim` to `~/.vim` (for Vim) or `~/.config/nvim` (for Neovim):

```zsh
# For Vim
mkdir -p ~/.vim;
cp -r * ~/.vim;
```

```zsh
# For Neovim
mkdir -p ~/.config/nvim;
cp -r * ~/.config/nvim;
```

- Apply the `flamerial` theme in `~/.vimrc` (for Vim), `~/.config/nvim/init.vim` (for Neovim with VimScript) or `~/.config/nvim/init.lua` (for Neovim with Lua):

```vim
" With VimScript
syntax on
colorscheme flamerial
```

```lua
-- With Lua
vim.cmd('syntax on')
vim.cmd('colorscheme flamerial')
```

- Restart Vim or Neovim.
