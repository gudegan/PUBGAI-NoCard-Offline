@echo off
setlocal EnableExtensions
chcp 65001 >nul
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Restore.ps1"
set "RC=%errorlevel%"
if not "%RC%"=="0" (echo [ERROR] Restore failed. Code: %RC% & pause)
exit /b %RC%
