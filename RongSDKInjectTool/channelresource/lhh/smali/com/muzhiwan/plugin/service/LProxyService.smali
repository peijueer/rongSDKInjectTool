.class public Lcom/muzhiwan/plugin/service/LProxyService;
.super Landroid/app/Service;
.source "LProxyService.java"


# static fields
.field public static SERVICE_APK_PATH:Ljava/lang/String;

.field public static SERVICE_CLASS_NAME:Ljava/lang/String;


# instance fields
.field remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Landroid/app/Service;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/muzhiwan/plugin/manager/LPluginDexManager;->finalApkPath:Ljava/lang/String;

    sput-object v0, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_APK_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private fillService()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Lcom/muzhiwan/plugin/bean/LServicePlugin;

    sget-object v3, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_APK_PATH:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/muzhiwan/plugin/bean/LServicePlugin;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    .line 57
    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    sget-object v3, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->setTopServiceName(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LAPK;->debug()V

    .line 59
    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LAPK;->canUse()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/muzhiwan/plugin/manager/LApkManager;->initApk(Lcom/muzhiwan/plugin/bean/LAPK;Landroid/content/Context;)V

    .line 64
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    iget-object v2, v2, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    iget-object v3, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v3}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getTopServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    .line 65
    .local v0, "plugin":Landroid/app/Service;
    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v2, v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->setCurrentPluginService(Landroid/app/Service;)V

    .line 66
    invoke-static {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v1

    .line 67
    .local v1, "thiz":Lcom/muzhiwan/plugin/reflect/Reflect;
    const-string v2, "com.muzhiwan.sdk.service.MzwService"

    iget-object v3, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v3}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getTopServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-static {v0}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v2

    const-string v3, "setGameActivity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/muzhiwan/sdk/core/InnerController;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 70
    :cond_1
    invoke-static {v0}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v3

    const-string v4, "attach"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v5, v2

    const/4 v2, 0x1

    const-string v6, "mThread"

    invoke-virtual {v1, v6}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-string v6, "mToken"

    invoke-virtual {v1, v6}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    .line 72
    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    iget-object v2, v2, Lcom/muzhiwan/plugin/bean/LAPK;->pluginApplication:Landroid/app/Application;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/muzhiwan/plugin/service/LProxyService;->getApplication()Landroid/app/Application;

    move-result-object v2

    :goto_0
    aput-object v2, v5, v6

    const/4 v2, 0x5

    const-string v6, "mActivityManager"

    invoke-virtual {v1, v6}, Lcom/muzhiwan/plugin/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 70
    invoke-virtual {v3, v4, v5}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 73
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/service/LProxyService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v2

    const-string v3, "setOuterContext"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    .line 78
    .end local v0    # "plugin":Landroid/app/Service;
    .end local v1    # "thiz":Lcom/muzhiwan/plugin/reflect/Reflect;
    :goto_1
    return-void

    .line 72
    .restart local v0    # "plugin":Landroid/app/Service;
    .restart local v1    # "thiz":Lcom/muzhiwan/plugin/reflect/Reflect;
    :cond_2
    iget-object v2, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v2}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v2

    iget-object v2, v2, Lcom/muzhiwan/plugin/bean/LAPK;->pluginApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "plugin":Landroid/app/Service;
    .end local v1    # "thiz":Lcom/muzhiwan/plugin/reflect/Reflect;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 75
    :catch_1
    move-exception v2

    goto :goto_1

    .line 74
    :catch_2
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    if-nez v0, :cond_0

    .line 146
    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginAssets:Landroid/content/res/AssetManager;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginAssets:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    if-nez v0, :cond_0

    .line 153
    invoke-super {p0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LAPK;->canUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginLoader:Ldalvik/system/DexClassLoader;

    goto :goto_0

    .line 158
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    if-nez v0, :cond_0

    .line 139
    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v0

    iget-object v0, v0, Lcom/muzhiwan/plugin/bean/LAPK;->pluginRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 31
    const-string v0, "MZW_LOG_TAG"

    const-string v1, "call LProxyService onBind..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-direct {p0}, Lcom/muzhiwan/plugin/service/LProxyService;->fillService()V

    .line 33
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "MZW_LOG_TAG"

    const-string v1, "call LProxyService onCreate..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 50
    invoke-direct {p0}, Lcom/muzhiwan/plugin/service/LProxyService;->fillService()V

    .line 51
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 104
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 125
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->onLowMemory()V

    .line 126
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 83
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 84
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 38
    const-string v0, "MZW_LOG_TAG"

    const-string v1, "call LProxyService onStartCommand..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/muzhiwan/plugin/service/LProxyService;->fillService()V

    .line 41
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .param p1, "rootIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 118
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 119
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->getCurrentPluginService()Landroid/app/Service;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 96
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "lastIntentClassName":Ljava/lang/String;
    const-class v2, Lcom/muzhiwan/plugin/LActivityProxy;

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v2, "plugin_dex_path"

    iget-object v3, p0, Lcom/muzhiwan/plugin/service/LProxyService;->remote:Lcom/muzhiwan/plugin/bean/LServicePlugin;

    invoke-virtual {v3}, Lcom/muzhiwan/plugin/bean/LServicePlugin;->from()Lcom/muzhiwan/plugin/bean/LAPK;

    move-result-object v3

    iget-object v3, v3, Lcom/muzhiwan/plugin/bean/LAPK;->pluginPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "plugin_act_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    invoke-super {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/service/LProxyService;->SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 164
    const-class v0, Lcom/muzhiwan/plugin/service/LProxyService;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-super {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
