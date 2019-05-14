# My Custom configuration

## custom_rc
This file contains the custom configuration for BASH as well as ZSH. It contains aliases for handy commands

Add this file to your `.bashrc` or `.zshrc`
```bash
source <location_of_repo>/custom_rc
``` 


## vimrc
Install pathogen
```bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Install Vundle
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

This file contains my configuration of vim
Add this file to your `.vimrc` 
```bash
source <location_of_repo>/vimrc
``` 
