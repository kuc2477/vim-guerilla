git submodule update --init

:: create backup of system's current vim configurationsreate
mkdir _bak
mkdir _bak\_vim
xcopy %USERPROFILE%\_vimrc _bak
xcopy %USERPROFILE%\_vim _bak\_vim


:: deploy `vim-guerilla` to the system
