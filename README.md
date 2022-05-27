# dotfiles

files for easy setup on a unix-system with zsh and neovim.

## requirements

- [oh-my-zsh](https://ohmyz.sh/#install)
- [vim-plug](https://github.com/junegunn/vim-plug#installation)

## symlinks

```bash
ln -s ~/../GitHub/dotfiles/nvim ~/.config/
ln -s ~/../GitHub/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/../GitHub/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
```

### notes

- don't forget to set up tree-sitter parsers with `:TSInstall`.
