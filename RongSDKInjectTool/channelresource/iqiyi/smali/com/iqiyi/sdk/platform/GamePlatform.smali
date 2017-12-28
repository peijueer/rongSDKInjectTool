.class public Lcom/iqiyi/sdk/platform/GamePlatform;
.super Lcom/iqiyigame/BasePlatform;
.source "GamePlatform.java"


# static fields
.field private static final PLUGIN_CLASS_NAME:Ljava/lang/String; = "com.ppsgame.sdk.controller.OpenController"

.field private static final PLUGIN_PAKAGE_NAME:Ljava/lang/String; = "com.ppsgame.sdk"

.field private static final PLUGIN_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.ppsgame.sdk.service.SDKService"

.field private static api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

.field protected static level:Ljava/lang/String;

.field private static ppsPlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

.field protected static type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "-1"

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->type:Ljava/lang/String;

    .line 43
    const-string v0, "-1"

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->level:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/iqiyigame/BasePlatform;-><init>()V

    .line 55
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->China:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/iqiyi/sdk/platform/GamePlatform;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->ppsPlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/iqiyi/sdk/platform/GamePlatform;

    invoke-direct {v0}, Lcom/iqiyi/sdk/platform/GamePlatform;-><init>()V

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->ppsPlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    .line 51
    :cond_0
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->ppsPlatform:Lcom/iqiyi/sdk/platform/GamePlatform;

    return-object v0
.end method


# virtual methods
.method public addLoginListener(Lcom/iqiyi/sdk/listener/LoginListener;)V
    .locals 1
    .param p1, "loginListener"    # Lcom/iqiyi/sdk/listener/LoginListener;

    .prologue
    .line 262
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->addLoginListener(Lcom/iqiyi/sdk/listener/LoginListener;)V

    .line 265
    :cond_0
    return-void
.end method

.method public addPaymentListener(Lcom/iqiyi/sdk/listener/PayListener;)V
    .locals 1
    .param p1, "payListener"    # Lcom/iqiyi/sdk/listener/PayListener;

    .prologue
    .line 268
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->addPaymentListener(Lcom/iqiyi/sdk/listener/PayListener;)V

    .line 271
    :cond_0
    return-void
.end method

.method public createRole(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1, p2}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->createRole(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public enterGame(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverId"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1, p2}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->enterGame(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public getQIYIInfoAsync(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/QIYIInfoCallBack;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callBack"    # Lcom/iqiyi/sdk/platform/QIYIInfoCallBack;

    .prologue
    .line 281
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 282
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1, p2}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->getQIYIInfoAsync(Landroid/app/Activity;Lcom/iqiyi/sdk/platform/QIYIInfoCallBack;)V

    .line 284
    :cond_0
    return-void
.end method

.method public getQIYIType()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->getQIYIInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "5.9.0"

    return-object v0
.end method

.method protected handleDownload(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iqiyi/sdk/platform/GamePushAdsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "pushAdsIntent":Landroid/content/Intent;
    const-string v1, "game_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    invoke-super {p0, p1, p2}, Lcom/iqiyigame/BasePlatform;->handleDownload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public initPlatform(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;)I
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    .prologue
    .line 139
    const-string v0, "SDK VERSION : 5.9.0"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 140
    sput-object p3, Lcom/iqiyi/sdk/platform/GamePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    .line 141
    sput-object p2, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    .line 143
    const-string v0, "PPSGameSDK"

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 146
    invoke-static {p1}, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->checkPermission(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/iqiyi/sdk/platform/GamePlatform;->handleDownload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 155
    :goto_0
    const/16 v0, 0xa

    return v0

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iqiyi/sdk/platform/GamePlatform;->startPermissionsActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iqiyi/sdk/platform/GamePlatform;->handleDownload(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initQQLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "unionAppId"    # Ljava/lang/String;
    .param p3, "reserve"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->initQQLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public initSliderBar(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 256
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->initSliderBar(Landroid/app/Activity;)V

    .line 259
    :cond_0
    return-void
.end method

.method public iqiyiAccountCenter(Landroid/app/Activity;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 214
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->ppsAccountCenter(Landroid/app/Activity;)I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public iqiyiChangeAccount(Landroid/app/Activity;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 240
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->ppsChangeAccount(Landroid/app/Activity;)I

    move-result v0

    .line 243
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public iqiyiPayment(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "money"    # I
    .param p3, "roleId"    # Ljava/lang/String;
    .param p4, "serverId"    # Ljava/lang/String;
    .param p5, "userData"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->ppsPayment(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public iqiyiPayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "roleId"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "userData"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->ppsPayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public iqiyiUserLogin(Landroid/app/Activity;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 194
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->ppsLogin(Landroid/app/Activity;)I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public iqiyiUserLogout(Landroid/app/Activity;)I
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 205
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0, p1}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->ppsLogout(Landroid/app/Activity;)I

    move-result v0

    .line 209
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    invoke-interface {v0}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->isLogin()Z

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "pluginFile"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 74
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v6

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->loadApk(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 76
    :try_start_0
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v6

    const-string v8, "com.ppsgame.sdk"

    invoke-virtual {v6, v8}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getPackage(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v4

    .line 77
    .local v4, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-nez v4, :cond_0

    move v6, v7

    .line 130
    .end local v4    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :goto_0
    return v6

    .line 81
    .restart local v4    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :cond_0
    iget-object v6, v4, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v6, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/iqiyigame/plugin/utils/PingBackController;->getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/iqiyigame/plugin/utils/PingBackController;->beginInitPB(Landroid/content/Context;)V

    .line 84
    iget-object v0, v4, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 85
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    const-string v6, "com.ppsgame.sdk.controller.OpenController"

    invoke-virtual {v0, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    sput-object v6, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    .line 87
    sget-object v6, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    const-string v8, "5.9.0"

    invoke-interface {v6, v8}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->setMVersion(Ljava/lang/String;)V

    .line 88
    sget-object v6, Lcom/iqiyi/sdk/platform/GamePlatform;->api:Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;

    const/4 v8, 0x0

    invoke-interface {v6, p1, p2, v8}, Lcom/iqiyi/sdk/platform/GamePlatformSDKApi;->initPlatform(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;)I

    .line 91
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "action.update"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    new-instance v5, Lcom/iqiyi/sdk/platform/GamePlatform$1;

    invoke-direct {v5, p0, v4, p1}, Lcom/iqiyi/sdk/platform/GamePlatform$1;-><init>(Lcom/iqiyi/sdk/platform/GamePlatform;Lcom/iqiyigame/plugin/internal/GamePluginPackage;Landroid/app/Activity;)V

    .line 117
    .local v5, "updateBroadcastReceiver":Landroid/content/BroadcastReceiver;
    invoke-virtual {p1, v5, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    const/4 v6, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    .end local v5    # "updateBroadcastReceiver":Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move v6, v7

    .line 130
    goto :goto_0

    .line 122
    :catch_1
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 125
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
