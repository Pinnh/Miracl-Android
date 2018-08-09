# Miracl-Android
MIRACL(MIRACL Cryptographic SDK) Android compile,support armeabi,armeabi-v7a,arm64-v8a

Compile
-----------------
Assume you have Android NDK and config the NDK path $ANDROID_NDK

run: $ANDROID_NDK/ndk-build

update MIRACL code
-----------------
If you want to use new MIRACL library you can download MIRACL source code( [https://github.com/miracl/MIRACL] ),move code folder (MIRACL-master/) to source/,
then cd to source/ folder and  run ./arm_extract.sh, everything is update to jni/
