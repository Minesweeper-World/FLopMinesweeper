# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Jsoup 混淆规则，搜索直达：xhtml("entities-xhtml.properties", 4),
-keepnames class org.jsoup.nodes.Entities { public enum *; }

# 内部类混淆规则，搜索直达：Activity$
-keep class com.flop.minesweeper.activity.*$* { public *; }

# 录像解析混淆规则，搜索直达：AvfUtil、MvfUtil、RmvUtil
-keep class com.flop.minesweeper.zhangye.util.*Util { public analyzeVideo(...); }

# 删除代码中Log相关的代码
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
    public static int e(...);
}