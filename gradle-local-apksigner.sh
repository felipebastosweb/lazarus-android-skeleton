export PATH=/lamw_manager/LAMW/sdk/platform-tools:$PATH
export PATH=/lamw_manager/LAMW/sdk/build-tools/30.0.2:$PATH
export GRADLE_HOME=/lamw_manager/LAMW/gradle-6.6.1
export PATH=$PATH:$GRADLE_HOME/bin
zipalign -v -p 4 /Users/felip/LAMWProjects/AppSkeleton/build/outputs/apk/release/AppSkeleton-armeabi-v7a-release-unsigned.apk /Users/felip/LAMWProjects/AppSkeleton/build/outputs/apk/release/AppSkeleton-armeabi-v7a-release-unsigned-aligned.apk
apksigner sign --ks /Users/felip/LAMWProjects/AppSkeleton/appskeleton-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out /Users/felip/LAMWProjects/AppSkeleton/build/outputs/apk/release/AppSkeleton-release.apk /Users/felip/LAMWProjects/AppSkeleton/build/outputs/apk/release/AppSkeleton-armeabi-v7a-release-unsigned-aligned.apk
