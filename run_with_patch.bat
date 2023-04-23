@echo off
start "Patcher" /b /wait "%~dp0tools\dtkit-patch.exe" --patch
if %errorlevel% neq 0 (
	echo Failed to patch Darktide. Try manually patching.
	pause
	exit
)
start "Launcher" "%~dp0launcher\Launcher.exe"
exit