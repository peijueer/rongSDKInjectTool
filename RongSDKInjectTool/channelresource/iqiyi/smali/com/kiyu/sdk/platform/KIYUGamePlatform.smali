.class public Lcom/kiyu/sdk/platform/KIYUGamePlatform;
.super Lcom/iqiyigame/BasePlatform;
.source "KIYUGamePlatform.java"


# static fields
.field private static final PLUGIN_CLASS_NAME:Ljava/lang/String; = "com.gamesdk.tw.controller.OpenController"

.field private static final PLUGIN_PAKAGE_NAME:Ljava/lang/String; = "com.ppsgame.sdk"

.field private static final PLUGIN_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.gamesdk.tw.polling.SDKService"

.field private static api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

.field private static ppsPlatform:Lcom/kiyu/sdk/platform/KIYUGamePlatform;


# instance fields
.field private isGooglePay:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/iqiyigame/BasePlatform;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->isGooglePay:Z

    .line 52
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    .line 53
    return-void
.end method

.method public static getInstance()Lcom/kiyu/sdk/platform/KIYUGamePlatform;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->ppsPlatform:Lcom/kiyu/sdk/platform/KIYUGamePlatform;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;

    invoke-direct {v0}, Lcom/kiyu/sdk/platform/KIYUGamePlatform;-><init>()V

    sput-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->ppsPlatform:Lcom/kiyu/sdk/platform/KIYUGamePlatform;

    .line 48
    :cond_0
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->ppsPlatform:Lcom/kiyu/sdk/platform/KIYUGamePlatform;

    return-object v0
.end method


# virtual methods
.method public createRole(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0, p1, p2}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->createRole(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public enterGame(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0, p1, p2}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->enterGame(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "5.9.0"

    return-object v0
.end method

.method public googlePlay(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "money"    # I
    .param p4, "roleId"    # Ljava/lang/String;
    .param p5, "serverId"    # Ljava/lang/String;
    .param p6, "userData"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 196
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->googlePlay(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I

    move-result v0

    .line 199
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public initPlatform(Landroid/app/Activity;Ljava/lang/String;ZLcom/iqiyi/sdk/platform/GamePlatformInitListener;)I
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "isGooglePay"    # Z
    .param p4, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    .prologue
    .line 119
    const-string v0, "SDK VERSION : 5.9.0"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 120
    sput-object p4, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    .line 121
    sput-object p2, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    .line 122
    iput-boolean p3, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->isGooglePay:Z

    .line 124
    const-string v0, "PPSGameSDK_tw"

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 127
    invoke-static {p1}, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->checkPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->handleDownload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 136
    :goto_0
    const/16 v0, 0xa

    return v0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->startPermissionsActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->handleDownload(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initSliderBar(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 220
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0, p1}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->initSliderBar(Landroid/app/Activity;)V

    .line 223
    :cond_0
    return-void
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->isLogin()Z

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kiyuChangeAccount(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 204
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0, p1, p2}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->kiyuChangeAccount(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public kiyuUserAccountCenter(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 186
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0, p1, p2}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->kiyuUserAccountCenter(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public kiyuUserLogin(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_1

    .line 167
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0, p1, p2}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->kiyuUserLogin(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I

    move-result v0

    .line 169
    :goto_1
    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_1
    const/16 v0, 0xa

    goto :goto_1
.end method

.method public kiyuUserLogout(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 177
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    invoke-interface {v0, p1, p2}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->kiyuUserLogout(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/GamePlatformListener;)I

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method protected loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "pluginFile"    # Ljava/io/File;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v6

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->loadApk(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 59
    :try_start_0
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v6

    const-string v7, "com.ppsgame.sdk"

    invoke-virtual {v6, v7}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getPackage(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v4

    .line 60
    .local v4, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-nez v4, :cond_0

    .line 61
    const/4 v6, 0x0

    .line 110
    .end local v4    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :goto_0
    return v6

    .line 64
    .restart local v4    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :cond_0
    iget-object v6, v4, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v6, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    .line 66
    iget-object v0, v4, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 67
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    const-string v6, "com.gamesdk.tw.controller.OpenController"

    invoke-virtual {v0, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    sput-object v6, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    .line 69
    sget-object v6, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    iget-boolean v7, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->isGooglePay:Z

    const/4 v8, 0x0

    invoke-interface {v6, p1, p2, v7, v8}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->initPlatform(Landroid/app/Activity;Ljava/lang/String;ZLcom/iqiyi/sdk/platform/GamePlatformInitListener;)I

    .line 71
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "action.update"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    new-instance v5, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;

    invoke-direct {v5, p0, v4, p1}, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;-><init>(Lcom/kiyu/sdk/platform/KIYUGamePlatform;Lcom/iqiyigame/plugin/internal/GamePluginPackage;Landroid/app/Activity;)V

    .line 97
    .local v5, "updateBroadcastReceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 98
    const/4 v6, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    .end local v5    # "updateBroadcastReceiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 110
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/iqiyigame/BasePlatform;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z

    move-result v6

    goto :goto_0

    .line 102
    :catch_1
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public molPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "server_id"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "money"    # I
    .param p5, "currency"    # Ljava/lang/String;
    .param p6, "devInfo"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 253
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->molPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)V

    .line 256
    :cond_0
    return-void
.end method

.method public mycardPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "server_id"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "money"    # I
    .param p5, "devInfo"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 236
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->mycardPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)V

    .line 239
    :cond_0
    return-void
.end method

.method public payment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "server_id"    # Ljava/lang/String;
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "money"    # I
    .param p5, "devInfo"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformListener;

    .prologue
    .line 269
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/kiyu/sdk/platform/KIYUGamePlatform;->api:Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/kiyu/sdk/platform/GamePlatformKIYUApi;->payment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformListener;)V

    .line 272
    :cond_0
    return-void
.end method
