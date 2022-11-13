export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Users/felip/LAMWProjects/AppSkeleton
jarsigner -verify -verbose -certs /Users/felip/LAMWProjects/AppSkeleton/build/outputs/apk/release/AppSkeleton-release.apk
