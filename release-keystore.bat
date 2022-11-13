set JAVA_HOME=C:\lamw_manager\LAMW\jdk\zulu-8
set PATH=%JAVA_HOME%\bin;%PATH%
set JAVA_TOOL_OPTIONS=-Duser.language=en
cd C:\Users\felip\LAMWProjects\AppSkeleton
keytool -genkey -v -keystore appskeleton-release.keystore -alias appskeleton.keyalias -keyalg RSA -keysize 2048 -validity 10000 < C:\Users\felip\LAMWProjects\AppSkeleton\keytool_input.txt
:Error
echo off
cls
echo.
echo Signature file created previously, remember that if you delete this file and it was uploaded to Google Play, you will not be able to upload another app without this signature.
echo.
pause
