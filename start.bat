@echo off
:: Initial setup
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By mohammadali" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat > out.txt 2>&1
net user rajnikant rajnikant@123 /add >nul
net localgroup administrators rajnikant /add >nul
net user rajnikant /active:yes >nul
net user installer /delete >nul
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant rajnikant:F >nul
ICACLS C:\Windows\installer /grant rajnikant:F >nul

echo Successfully installed! If RDP is dead, rebuild again.
echo Username: rajnikant
echo Password: rajnikant@123
echo You can login now

:: Infinite ping loop
:LOOP
ping -n 2 127.0.0.1 >nul
goto LOOP
