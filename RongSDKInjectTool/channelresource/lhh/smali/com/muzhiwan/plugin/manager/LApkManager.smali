.class public final Lcom/muzhiwan/plugin/manager/LApkManager;
.super Ljava/lang/Object;
.source "LApkManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final apks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muzhiwan/plugin/bean/LAPK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/muzhiwan/plugin/manager/LApkManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/manager/LApkManager;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/muzhiwan/plugin/manager/LApkManager;->apks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearApk()V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/muzhiwan/plugin/manager/LApkManager;->apks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 125
    return-void
.end method

.method private static fillPluginApplication(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V
    .locals 8
    .param p0, "apk"    # Lcom/muzhiwan/plugin/bean/LAPK;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->applicationName:Ljava/lang/String;

    .line 104
    .local v0, "applicationName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    .line 109
    .local v1, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 110
    .local v2, "pluginApp":Landroid/app/Application;
    invoke-static {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v3

    const-string v4, "attachBaseContext"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 111
    iput-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginApplication:Landroid/app/Application;

    .line 112
    invoke-virtual {v2}, Landroid/app/Application;->onCreate()V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    .end local v2    # "pluginApp":Landroid/app/Application;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 118
    :catch_1
    move-exception v3

    goto :goto_0

    .line 116
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private static fillPluginInfo(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V
    .locals 3
    .param p0, "apk"    # Lcom/muzhiwan/plugin/bean/LAPK;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/muzhiwan/plugin/LPluginTool;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    invoke-virtual {p0, v1}, Lcom/muzhiwan/plugin/bean/LAPK;->setPluginPkgInfo(Landroid/content/pm/PackageInfo;)V

    .line 72
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/muzhiwan/plugin/bean/LAPK;->setApplicationName(Ljava/lang/String;)V

    .line 73
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    goto :goto_1
.end method

.method private static fillPluginRes(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V
    .locals 8
    .param p0, "apk"    # Lcom/muzhiwan/plugin/bean/LAPK;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 82
    :try_start_0
    const-class v4, Landroid/content/res/AssetManager;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 83
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-static {v0}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v1

    .line 84
    .local v1, "assetRef":Lcom/muzhiwan/plugin/reflect/Reflect;
    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 85
    const-string v4, "MZW_LOG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/muzhiwan/plugin/manager/LApkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Assets = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0, v0}, Lcom/muzhiwan/plugin/bean/LAPK;->setPluginAssets(Landroid/content/res/AssetManager;)V

    .line 88
    new-instance v3, Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 89
    .local v3, "pluginRes":Landroid/content/res/Resources;
    const-string v4, "MZW_LOG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/muzhiwan/plugin/manager/LApkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Res = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, v3}, Lcom/muzhiwan/plugin/bean/LAPK;->setPluginRes(Landroid/content/res/Resources;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "assetRef":Lcom/muzhiwan/plugin/reflect/Reflect;
    .end local v3    # "pluginRes":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LAPK;
    .locals 2
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-object v1, Lcom/muzhiwan/plugin/manager/LApkManager;->apks:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muzhiwan/plugin/bean/LAPK;

    .line 30
    .local v0, "apk":Lcom/muzhiwan/plugin/bean/LAPK;
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/muzhiwan/plugin/bean/LAPK;

    .end local v0    # "apk":Lcom/muzhiwan/plugin/bean/LAPK;
    invoke-direct {v0}, Lcom/muzhiwan/plugin/bean/LAPK;-><init>()V

    .line 32
    .restart local v0    # "apk":Lcom/muzhiwan/plugin/bean/LAPK;
    invoke-virtual {v0, p0}, Lcom/muzhiwan/plugin/bean/LAPK;->attach(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/muzhiwan/plugin/manager/LApkManager;->apks:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    return-object v0
.end method

.method public static initApk(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V
    .locals 4
    .param p0, "apk"    # Lcom/muzhiwan/plugin/bean/LAPK;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    .line 46
    .local v0, "apkPath":Ljava/lang/String;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/plugin/manager/LApkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Init a plugin on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/bean/LAPK;->canUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/plugin/manager/LApkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Plugin is not been init,init it now\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/manager/LApkManager;->fillPluginInfo(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V

    .line 50
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/manager/LApkManager;->fillPluginRes(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V

    .line 51
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/manager/LApkManager;->fillPluginApplication(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/plugin/manager/LApkManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Plugin have been init."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
