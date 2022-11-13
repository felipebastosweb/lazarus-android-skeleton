export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Users/felip/LAMWProjects/AppSkeleton
jarsigner -verify -verbose -certs /Users/felip/LAMWProjects/AppSkeleton/bin/AppSkeleton-release.apk
