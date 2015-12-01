@echo off


:: ======
::  Path
:: ======

:: shelter
set SHELTER=.\_shelter

:: vim
set USER_VIMRC=%SHELTER%\_vimrc
set USER_VIMDIR=%SHELTER%\vimfiles
set GUERILLA_VIMRC=%USERPROFILE%\_vimrc
set GUERILLA_VIMDIR=%USERPROFILE%\vimfiles


:: =======
:: Retreat
:: =======

if exist %SHELTER% (
echo 1
  :: remove guerillas
echo 1
  if exist %GUERILLA_VIMRC% (del /q %GUERILLA_VIMRC%)
  if exist %GUERILLA_VIMDIR% (rmdir /s %GUERILLA_VIMDIR%)
echo 1

  :: restore current user's vimrc / vimdir if exists in the shelter
  if exist %USER_VIMRC% (move %USER_VIMRC% %USERPROFILE%)
echo 1
  if exist %USER_VIMDIR% (move %USER_VIMDIR% %USERPROFILE%) 
echo 1

  :: destroy shelter
  rmdir /s %SHELTER%
)
