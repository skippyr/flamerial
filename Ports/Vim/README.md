# Flamerial – Vim
## Install
### Procedures
- Copy `autoload` and `colors` to `~/.vim` (for Vim) or `~/.config/nvim` (for Neovim):

```zsh
# For Vim
mkdir -p ~/.vim;
cp -r autoload colors ~/.vim;
```

```zsh
# For Neovim
mkdir -p ~/.config/nvim;
cp -r autoload colors ~/.config/nvim;
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
