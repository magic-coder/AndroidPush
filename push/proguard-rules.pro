# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/jiang/androidsdk/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-keep public class * extends android.content.BroadcastReceiver
#这里com.xiaomi.mipushdemo.DemoMessageRreceiver改成app中定义的完整类名
-keep class com.jiang.android.push.* {*;}


# huawei
-keep class com.huawei.android.pushagent.**{*;}
-keep class com.huawei.android. pushselfshow.**{*;}
-keep class com.huawei.android. microkernel.**{*;}
-keep class com.baidu.mapapi.**{*;}

# jpush
-dontoptimize
-dontpreverify

-dontwarn cn.jpush.**
-keep class cn.jpush.** { *; }
#==================gson && protobuf==========================
-dontwarn com.google.**
-keep class com.google.gson.** {*;}
-keep class com.google.protobuf.** {*;}