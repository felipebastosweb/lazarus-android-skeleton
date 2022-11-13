export PATH=/lamw_manager/LAMW/apache-ant-1.10.5/bin:$PATH
export JAVA_HOME=/lamw_manager/LAMW/jdk/zulu-8
cd /Users/felip/LAMWProjects/AppSkeleton
ant -Dtouchtest.enabled=true debug
