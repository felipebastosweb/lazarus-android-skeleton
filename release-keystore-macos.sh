export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Users/felip/LAMWProjects/AppSkeleton
keytool -genkey -v -keystore appskeleton-release.keystore -alias appskeleton.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /Users/felip/LAMWProjects/AppSkeleton/keytool_input.txt
