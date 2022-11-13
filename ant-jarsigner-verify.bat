set JAVA_HOME=C:\lamw_manager\LAMW\jdk\zulu-8
path %JAVA_HOME%\bin;%path%
cd C:\Users\felip\LAMWProjects\AppSkeleton
jarsigner -verify -verbose -certs C:\Users\felip\LAMWProjects\AppSkeleton\bin\AppSkeleton-release.apk
