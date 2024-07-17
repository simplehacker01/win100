@echo off
echo RDP CREATION SUCCESSFULL!

:check
ping 127.0.0.1 > null
cls
echo RDP CREATION SUCCESSFULL!
goto check
