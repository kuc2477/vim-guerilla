# vim-guerilla
Minimal, lightweight cross platform vim configuration for guerilla devs

![usage cast](kuc2477.github.com/vim-guerilla/cast.gif)

## Note
Windows users should add installed gvim directory to your $PATH
enviornment variable before you run `occupy.bat`

## Features
- Evacuates current user's vimrc on occupation
- Restores previous vimrc on retreat
- Sensible indentation for each languages
- Syntax highlights
- Auto completion (powered by [supertab])
- Colorschemes (default with [wombat])
- Multiple cursor ([vim-multiple-cursors])
- Vertical visual code block moves ([vim-move])
- Fuzzy file navigation ([ctrlp])
- Fuzzy code navigation ([easymotion])
- File system navigation ([nerdtree])

## Compatibility
- UNIX-like systems (Ubuntu, CentOS, ... etc)
- Windows
- OS X
- **Just any platform**

## Requirements
- no root privilege required
- no vim extensions required
- **Just vim and git on your platform**

## Occupy

`occupy.[sh|bat]`

## Retreat

`retreat.[sh|bat]`

## Customization
- Fully documented
- Feel free to customize configurations as you want!


[wombat]: https://github.com/dsolstad/vim-wombat256i
[supertab]: https://github.com/ervandew/supertab
[ctrlp]: https://github.com/kien/ctrlp.vim
[easymotion]: https://github.com/easymotion/vim-easymotion
[nerdtree]: https://github.com/scrooloose/nerdtree
[vim-move]: https://github.com/kuc2477/vim-move
[vim-multiple-cursors]: https://github.com/terryma/vim-multiple-cursors
