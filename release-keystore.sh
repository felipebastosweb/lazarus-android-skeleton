export JAVA_HOME=/lamw_manager/LAMW/jdk/zulu-8
cd /Users/felip/LAMWProjects/AppSkeleton
LC_ALL=C keytool -genkey -v -keystore appskeleton-release.keystore -alias appskeleton.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /Users/felip/LAMWProjects/AppSkeleton/keytool_input.txt
