@ECHO OFF
SET GIT=git
SET ECHO=ECHO
SET VERSHRT=3.7.10
SET VERDATE=20230429
REM DO NOT leave any sensitive data or credentials HERE!

%ECHO% %GIT% commit -S -m "Update %VERDATE% v%VERSHRT%"
%GIT% commit -S -m "Update %VERDATE% v%VERSHRT%"
IF ERRORLEVEL 1 GOTO EOF

%ECHO% %GIT% tag -s -m "tktMach %VERSHRT%" v%VERSHRT%
%GIT% tag -s -m "tktMach %VERSHRT%" v%VERSHRT%
IF ERRORLEVEL 1 GOTO EOF

%ECHO% %GIT% push --tags
%GIT% push --tags
IF ERRORLEVEL 1 GOTO EOF

%ECHO% %GIT% push
%GIT% push
IF ERRORLEVEL 1 GOTO EOF

:EOF