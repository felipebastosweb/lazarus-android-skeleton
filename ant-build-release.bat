set Path=%PATH%;C:\lamw_manager\LAMW\apache-ant-1.10.5\bin
set JAVA_HOME=C:\lamw_manager\LAMW\jdk\zulu-8
cd C:\Users\felip\LAMWProjects\AppSkeleton
call ant clean release
if errorlevel 1 pause
