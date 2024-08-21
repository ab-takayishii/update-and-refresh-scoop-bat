@echo off
:: 管理者権限で実行するためのコード
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (goto getAdmin) else (goto gotAdmin)

:getAdmin
  echo Requesting administrative privileges...
  if exist "%temp%\admin.vbs" del "%temp%\admin.vbs"
  echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\admin.vbs"
  echo UAC.ShellExecute "cmd.exe", "/k %~s0", "", "runas", 1 >> "%temp%\admin.vbs"
  "%temp%\admin.vbs"
  del "%temp%\admin.vbs"
  exit /B

:gotAdmin

echo Updating Scoop...
start "" /wait cmd /c scoop update

echo Updating installed apps...
start "" /wait cmd /c scoop update *

echo Cleaning up old versions and installers...
start "" /wait cmd /c scoop cleanup *

echo Cleaning up Scoop cache...
start "" /wait cmd /c scoop cache rm *

echo Update, cleanup, and cache cleanup completed.
pause >nul

exit