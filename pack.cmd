@echo off
SETLOCAL EnableDelayedExpansion

set ZIP7=full_path\7z\7z.exe
set ZIP_DIR=download
set MAPS_DIR=maps


del /qf %ZIP_DIR%\* > nul

FOR /D %%G in ("%MAPS_DIR%\*") DO (
  %ZIP7% a -tzip -bb0 %ZIP_DIR%\%%~nxG .\%MAPS_DIR%\%%~nxG\* > nul
 )
