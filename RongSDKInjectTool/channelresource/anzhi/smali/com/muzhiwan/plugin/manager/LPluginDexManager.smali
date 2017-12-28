.class public Lcom/muzhiwan/plugin/manager/LPluginDexManager;
.super Ldalvik/system/DexClassLoader;
.source "LPluginDexManager.java"


# static fields
.field public static finalApkPath:Ljava/lang/String;

.field private static final pluginLoader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muzhiwan/plugin/manager/LPluginDexManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->pluginLoader:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "libraryPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 28
    sput-object p1, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->finalApkPath:Ljava/lang/String;

    .line 29
    invoke-static {p1, p3}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->unPackSOFromApk(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static getClassLoader(Ljava/lang/String;Landroid/content/Context;Ljava/lang/ClassLoader;)Lcom/muzhiwan/plugin/manager/LPluginDexManager;
    .locals 6
    .param p0, "dexPath"    # Ljava/lang/String;
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v4, 0x0

    .line 37
    sget-object v3, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->pluginLoader:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muzhiwan/plugin/manager/LPluginDexManager;

    .line 38
    .local v2, "pluginDexLoader":Lcom/muzhiwan/plugin/manager/LPluginDexManager;
    if-nez v2, :cond_0

    .line 40
    const-string v3, "plugin"

    .line 41
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "dexOutputPath":Ljava/lang/String;
    const-string v3, "plugin_lib"

    .line 43
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "libOutputPath":Ljava/lang/String;
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " plugin_lib "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v2, Lcom/muzhiwan/plugin/manager/LPluginDexManager;

    .end local v2    # "pluginDexLoader":Lcom/muzhiwan/plugin/manager/LPluginDexManager;
    invoke-direct {v2, p0, v0, v1, p2}, Lcom/muzhiwan/plugin/manager/LPluginDexManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 48
    .restart local v2    # "pluginDexLoader":Lcom/muzhiwan/plugin/manager/LPluginDexManager;
    sget-object v3, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->pluginLoader:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .end local v0    # "dexOutputPath":Ljava/lang/String;
    .end local v1    # "libOutputPath":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getSystemLoader()Ljava/lang/ClassLoader;
    .locals 3

    .prologue
    .line 54
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v1

    const-string v2, "currentActivityThread"

    invoke-virtual {v1, v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v1

    const-string v2, "getSystemContext"

    invoke-virtual {v1, v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 55
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0
.end method
