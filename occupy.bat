@echo off


:: =====
:: Paths
:: =====

:: shelter
set SHELTER = .\_shelter

:: vim
set GUERILLA_VIMRC=.\vimrc
set GUERILLA_VIMDIR=.\vim
set USER_VIMRC=%USERPROFILE%\_vimrc
set USER_VIMDIR=%USERPROFILE%\_vim


:: ============
:: Infiltration
:: ============

git submodule update --init

set /p user_vimrc_content=<%USER_VIMRC%
set /p guerilla_vimrc_content=<%GUERILLA_VIMRC%

if exist %USER_VIMRC% (goto :start)
if not "%user_vimrc_content%" == "%guerilla_vimrc_content%" (goto :start)
goto :end

:start
:: create shelter if it doesn't exists
if not exist %SHELTER% (mkdir %SHELTER%)

:: clear shelter
del /q %SHELTER%\*

:: evacuate current user's vimrc /vimdir if exists
if exist %USER_VIMRC% (move %USER_VIMRC% %SHELTER%)
if exist %USER_VIMDIR% (move %USER_VIMDIR% %SHELTER%)

:: deploy guerillas
xcopy %GUERILLA_VIMRC% %USERPROFILE%\_vimrc
xcopy %GUERILLA_VIMDIR% %USERPROFILE%\_vim

:: install plugins
gvim +PluginInstall +PluginClean! +qall
:end