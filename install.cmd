@echo off
pushd %FLUFFTOOL_PATH%
call cmd.exe /k kanjibin_dl.exe
call cmd.exe /k mod_download.exe
mkdir logs
call cmd.exe /k %CD%/scripts/setup.cmd
