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
  :: remove guerillas
  if exist %GUERILLA_VIMRC% (del /q %GUERILLA_VIMRC%)
  if exist %GUERILLA_VIMDIR% (rmdir /s /q %GUERILLA_VIMDIR%)

  :: restore current user's vimrc / vimdir if exists in the shelter
  if exist %USER_VIMRC% (move /y %USER_VIMRC% %USERPROFILE%)
  if exist %USER_VIMDIR% (move /y %USER_VIMDIR% %USERPROFILE%) 

  :: destroy shelter
  rmdir /s %SHELTER%
)
