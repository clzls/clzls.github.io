@SET GIT=git
@SET ECHO=ECHO
@SET VERSHRT=3.5.1
@SET VERDATE=20220831
REM DO NOT leave any sensitive data or credentials HERE!
%GIT% commit -s -m "Update %VERDATE% v%VERSHRT%"
%GIT% tag -s -m "tktMach %VERSHRT%" v%VERSHRT%
%GIT% push --tags
%GIT% push
