set Path=%PATH%;C:\lamw_manager\LAMW\sdk\platform-tools;C:\lamw_manager\LAMW\sdk\build-tools\30.0.2
set GRADLE_HOME=C:\lamw_manager\LAMW\gradle-6.6.1
set PATH=%PATH%;%GRADLE_HOME%\bin
zipalign -v -p 4 C:\Users\felip\LAMWProjects\AppSkeleton\build\outputs\apk\release\AppSkeleton-armeabi-v7a-release-unsigned.apk C:\Users\felip\LAMWProjects\AppSkeleton\build\outputs\apk\release\AppSkeleton-armeabi-v7a-release-unsigned-aligned.apk
apksigner sign --ks C:\Users\felip\LAMWProjects\AppSkeleton\appskeleton-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out C:\Users\felip\LAMWProjects\AppSkeleton\build\outputs\apk\release\AppSkeleton-release.apk C:\Users\felip\LAMWProjects\AppSkeleton\build\outputs\apk\release\AppSkeleton-armeabi-v7a-release-unsigned-aligned.apk
