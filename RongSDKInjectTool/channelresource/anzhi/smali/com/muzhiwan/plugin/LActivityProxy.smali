.class public Lcom/muzhiwan/plugin/LActivityProxy;
.super Landroid/app/Activity;
.source "LActivityProxy.java"

# interfaces
.implements Lcom/muzhiwan/plugin/ILoadPlugin;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/LActivityProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private fillPluginActivity(Lcom/muzhiwan/plugin/bean/LActivityPlugin;)V
    .locals 5
    .param p1, "plugin"    # Lcom/muzhiwan/plugin/bean/LActivityPlugin;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getTopActivityName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "top":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v3

    iget-object v3, v3, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v2, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 150
    invoke-virtual {p1, v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->setTopActivityName(Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v3

    iget-object v3, v3, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getTopActivityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 153
    .local v1, "myPlugin":Landroid/app/Activity;
    invoke-virtual {p1, v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->setCurrentPluginActivity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v1    # "myPlugin":Landroid/app/Activity;
    .end local v2    # "top":Ljava/lang/String;
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private fillPluginTheme(Lcom/muzhiwan/plugin/bean/LActivityPlugin;)V
    .locals 12
    .param p1, "plugin"    # Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v8

    iget-object v8, v8, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 91
    .local v6, "pluginTheme":Landroid/content/res/Resources$Theme;
    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 92
    invoke-virtual {p1, v6}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->setTheme(Landroid/content/res/Resources$Theme;)V

    .line 94
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v8

    iget-object v5, v8, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPkgInfo:Landroid/content/pm/PackageInfo;

    .line 95
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getTopActivityName()Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "mClass":Ljava/lang/String;
    const-string v8, "MZW_LOG_TAG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/muzhiwan/plugin/LActivityProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Before fill Plugin \'s Theme,We check the plugin:info = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "topActivityName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v8, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 100
    .local v2, "defaultTheme":I
    const/4 v1, 0x0

    .line 101
    .local v1, "curActivityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v0, v9, v8

    .line 102
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 103
    move-object v1, v0

    .line 104
    iget v8, v0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v8, :cond_3

    .line 105
    iget v2, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 120
    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_1
    const/4 v8, 0x1

    invoke-virtual {v6, v2, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/muzhiwan/plugin/LActivityProxy;->setTheme(I)V

    .line 122
    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/LActivityProxy;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget v9, v1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 126
    :cond_1
    sget-boolean v8, Lcom/muzhiwan/plugin/LPluginConfig;->usePluginTitle:Z

    if-eqz v8, :cond_2

    .line 127
    const/4 v7, 0x0

    .line 129
    .local v7, "title":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getPluginPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/muzhiwan/plugin/LPluginTool;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 133
    :goto_2
    if-eqz v7, :cond_2

    .line 134
    invoke-virtual {p0, v7}, Lcom/muzhiwan/plugin/LActivityProxy;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 106
    .restart local v0    # "a":Landroid/content/pm/ActivityInfo;
    :cond_3
    if-nez v2, :cond_0

    .line 110
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xe

    if-lt v8, v9, :cond_4

    .line 111
    const v2, 0x1030128

    goto :goto_1

    .line 113
    :cond_4
    const v2, 0x1030005

    .line 116
    goto :goto_1

    .line 101
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private processError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 216
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 596
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 598
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/muzhiwan/plugin/service/LProxyService;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 599
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, "className":Ljava/lang/String;
    const-string v2, "plugin_dex_path"

    sget-object v3, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->finalApkPath:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v2, "plugin_act_name"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    sget-object v2, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_APK_PATH:Ljava/lang/String;

    invoke-static {v2}, Lcom/muzhiwan/plugin/manager/LApkManager;->get(Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    iget-object v2, v2, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 605
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    return v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 407
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 412
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fillPlugin(Lcom/muzhiwan/plugin/bean/LActivityPlugin;)V
    .locals 5
    .param p1, "plugin"    # Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getPluginPath()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "apkPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "apk":Ljava/io/File;
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LAPK;->canUse()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    const-string v2, "MZW_LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/muzhiwan/plugin/LActivityProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Plugin is not been init,init it now\uff01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/muzhiwan/plugin/manager/LApkManager;->initApk(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V

    .line 83
    :goto_0
    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/LActivityProxy;->fillPluginTheme(Lcom/muzhiwan/plugin/bean/LActivityPlugin;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/LActivityProxy;->fillPluginActivity(Lcom/muzhiwan/plugin/bean/LActivityPlugin;)V

    .line 86
    return-void

    .line 81
    :cond_0
    const-string v2, "MZW_LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/muzhiwan/plugin/LActivityProxy;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Plugin have been init."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginAssets:Landroid/content/res/AssetManager;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginAssets:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 244
    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LAPK;->canUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    goto :goto_0

    .line 249
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_APK_PATH:Ljava/lang/String;

    invoke-static {v1}, Lcom/muzhiwan/plugin/manager/LApkManager;->get(Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v1

    iget-object v1, v1, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 211
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public loadPlugin(Landroid/app/Activity;Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LActivityPlugin;
    .locals 1
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-direct {v0, p1, p2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    .line 53
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    return-object v0
.end method

.method public loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LActivityPlugin;
    .locals 1
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/muzhiwan/plugin/LActivityProxy;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    move-result-object v0

    .line 60
    .local v0, "plugin":Lcom/muzhiwan/plugin/bean/LActivityPlugin;
    invoke-virtual {v0, p3}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->setTopActivityName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/muzhiwan/plugin/LActivityProxy;->fillPlugin(Lcom/muzhiwan/plugin/bean/LActivityPlugin;)V

    .line 62
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 492
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 493
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/control/PluginActivityControl;->getPluginRef()Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 504
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 551
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 326
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v2, :cond_0

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 331
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_1

    .line 333
    :try_start_0
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnBackPressed()V

    .line 334
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/muzhiwan/plugin/LActivityProxy;->processError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 419
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 420
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 424
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 425
    invoke-interface {v0, p1}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 578
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/LActivityProxy;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 167
    .local v4, "pluginMessage":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 168
    .local v2, "pluginActivityName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 169
    .local v3, "pluginDexPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 170
    const-string v5, "plugin_act_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v2}, Lcom/muzhiwan/plugin/LPluginTool;->isNotEmpt(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 172
    const-string v2, "no_activity_proxy_now"

    .line 174
    :cond_0
    const-string v5, "plugin_dex_path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v3}, Lcom/muzhiwan/plugin/LPluginTool;->isNotEmpt(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 176
    const-string v3, "no_dex_path"

    .line 182
    :cond_1
    invoke-virtual {p0, p0, v3}, Lcom/muzhiwan/plugin/LActivityProxy;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;)Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    move-result-object v5

    iput-object v5, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    .line 186
    iget-object v5, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v5, v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->setTopActivityName(Ljava/lang/String;)V

    .line 190
    iget-object v5, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {p0, v5}, Lcom/muzhiwan/plugin/LActivityProxy;->fillPlugin(Lcom/muzhiwan/plugin/bean/LActivityPlugin;)V

    .line 195
    new-instance v0, Lcom/muzhiwan/plugin/control/PluginActivityControl;

    iget-object v5, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v5}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v6}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v6

    iget-object v6, v6, Lcom/muzhiwan/plugin/bean/LAPK;->pluginApplication:Landroid/app/Application;

    invoke-direct {v0, p0, v5, v6}, Lcom/muzhiwan/plugin/control/PluginActivityControl;-><init>(Landroid/app/Activity;Landroid/app/Activity;Landroid/app/Application;)V

    .line 196
    .local v0, "control":Lcom/muzhiwan/plugin/control/PluginActivityControl;
    iget-object v5, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v5, v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->setControl(Lcom/muzhiwan/plugin/control/PluginActivityControl;)V

    .line 197
    invoke-virtual {v0}, Lcom/muzhiwan/plugin/control/PluginActivityControl;->dispatchProxyToPlugin()V

    .line 199
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/muzhiwan/plugin/control/PluginActivityControl;->callOnCreate(Landroid/os/Bundle;)V

    .line 200
    invoke-static {p1}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/muzhiwan/plugin/LActivityProxy;->processError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 561
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 563
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 513
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    .line 515
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 588
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    .line 590
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_0

    .line 469
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 475
    :goto_0
    return-object v1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 472
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 475
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 455
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_0

    .line 456
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 462
    :goto_0
    return-object v1

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 459
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_1

    .line 460
    invoke-interface {v0, p1, p2, p3}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 462
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 288
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 292
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 296
    :try_start_0
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnDestroy()V

    .line 297
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/muzhiwan/plugin/LActivityProxy;->processError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 443
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 447
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_1

    .line 448
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnDetachedFromWindow()V

    .line 450
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 570
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 572
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 382
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_0

    .line 383
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 393
    :goto_0
    return v1

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 386
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_1

    .line 388
    invoke-static {p1, p2}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnKeyDown(ILandroid/view/KeyEvent;)V

    .line 389
    invoke-interface {v0, p1, p2}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 393
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 542
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 544
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 481
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 485
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0, p1}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 522
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 531
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 532
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v0, :cond_0

    .line 536
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getCurrentPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 309
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 313
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnPause()V

    .line 317
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/muzhiwan/plugin/LActivityProxy;->processError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 431
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 432
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 436
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 437
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnPostResume()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 365
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 370
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 372
    :try_start_0
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnRestart()V

    .line 373
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnRestart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/muzhiwan/plugin/LActivityProxy;->processError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v1}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 259
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnResume()V

    .line 261
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnResume()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 268
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 272
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 275
    :try_start_0
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnStart()V

    .line 276
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/muzhiwan/plugin/LActivityProxy;->processError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 345
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    if-nez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/muzhiwan/plugin/LActivityProxy;->remotePlugin:Lcom/muzhiwan/plugin/bean/LActivityPlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LActivityPlugin;->getControl()Lcom/muzhiwan/plugin/control/PluginActivityControl;

    move-result-object v0

    .line 349
    .local v0, "caller":Lcom/muzhiwan/plugin/control/PluginActivityCallback;
    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    invoke-interface {v0}, Lcom/muzhiwan/plugin/control/PluginActivityCallback;->callOnStop()V

    .line 353
    invoke-static {}, Lcom/muzhiwan/plugin/manager/LCallbackManager;->callAllOnStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/muzhiwan/plugin/LActivityProxy;->processError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 400
    const-class v0, Lcom/muzhiwan/plugin/service/LProxyService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
