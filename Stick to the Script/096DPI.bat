@ECHO OFF
REG ADD "HKEY_CURRENT_USER\Control Panel\Desktop" /v LogPixels /T REG_DWORD /D 00000096 /f