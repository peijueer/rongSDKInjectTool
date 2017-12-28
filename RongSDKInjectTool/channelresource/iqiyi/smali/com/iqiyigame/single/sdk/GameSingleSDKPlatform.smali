.class public Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;
.super Lcom/iqiyigame/BasePlatform;
.source "GameSingleSDKPlatform.java"

# interfaces
.implements Lcom/iqiyigame/single/sdk/GamePayApi;


# static fields
.field private static final PLUGIN_CLASS_NAME:Ljava/lang/String; = "com.pps.single.sdk.controller.OpenController"

.field private static final PLUGIN_PAKAGE_NAME:Ljava/lang/String; = "com.pps.single.sdk"

.field private static initListener:Lcom/iqiyigame/single/sdk/SDKInitListener;

.field private static instance:Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;

.field private static platformInitListener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;


# instance fields
.field private api:Lcom/iqiyigame/single/sdk/GamePayApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform$1;

    invoke-direct {v0}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform$1;-><init>()V

    sput-object v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->platformInitListener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/iqiyigame/BasePlatform;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Lcom/iqiyigame/single/sdk/SDKInitListener;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->initListener:Lcom/iqiyigame/single/sdk/SDKInitListener;

    return-object v0
.end method

.method public static getInstance()Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->instance:Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;

    invoke-direct {v0}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;-><init>()V

    sput-object v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->instance:Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;

    .line 48
    :cond_0
    sget-object v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->instance:Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;

    return-object v0
.end method


# virtual methods
.method public alipay(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "money"    # I
    .param p3, "developerInfo"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/iqiyigame/single/sdk/SDKPayCallback;

    .prologue
    .line 140
    sget-object v4, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->ALIPAY:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V

    .line 141
    return-void
.end method

.method public bankCard(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "money"    # I
    .param p3, "developerInfo"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/iqiyigame/single/sdk/SDKPayCallback;

    .prologue
    .line 144
    sget-object v4, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->BANKCARD:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V

    .line 145
    return-void
.end method

.method public dealMissOrder(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/SDKMissOrderCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/iqiyigame/single/sdk/SDKMissOrderCallback;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1, p2}, Lcom/iqiyigame/single/sdk/GamePayApi;->dealMissOrder(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/SDKMissOrderCallback;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public exitGame(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/SDKExitCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/iqiyigame/single/sdk/SDKExitCallback;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1, p2}, Lcom/iqiyigame/single/sdk/GamePayApi;->exitGame(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/SDKExitCallback;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getSDKVersion(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v1, :cond_0

    .line 183
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v1

    const-string v2, "com.pps.single.sdk"

    invoke-virtual {v1, v2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getPackage(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v0

    .line 184
    .local v0, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-eqz v0, :cond_1

    .line 185
    iget-object v1, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 190
    .end local v0    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :goto_0
    return-object v1

    .line 188
    :cond_0
    const-string v1, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 190
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public initSDK(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyigame/single/sdk/SDKInitListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/iqiyigame/single/sdk/SDKInitListener;

    .prologue
    .line 102
    const-string v0, "SDK VERSION : 5.9.0"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 104
    sput-object p2, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    .line 105
    const-string v0, "PPSGameSingleSDK"

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE:Z

    .line 107
    const/16 v0, 0xb

    sput v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE_TYPE:I

    .line 108
    sget-object v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->platformInitListener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    sput-object v0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    .line 109
    sput-object p3, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->initListener:Lcom/iqiyigame/single/sdk/SDKInitListener;

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->handleDownload(Landroid/app/Activity;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "pluginFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v4

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->loadApk(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v3

    .line 73
    .local v3, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-nez v3, :cond_0

    move v4, v5

    .line 95
    .end local v3    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :goto_0
    return v4

    .line 77
    .restart local v3    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :cond_0
    iget-object v4, v3, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    .line 79
    iget-object v0, v3, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 80
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    const-string v4, "com.pps.single.sdk.controller.OpenController"

    invoke-virtual {v0, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 81
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyigame/single/sdk/GamePayApi;

    iput-object v4, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    .line 82
    iget-object v4, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    const/4 v6, 0x0

    invoke-interface {v4, p1, p2, v6}, Lcom/iqiyigame/single/sdk/GamePayApi;->initSDK(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyigame/single/sdk/SDKInitListener;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    const/4 v4, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move v4, v5

    .line 95
    goto :goto_0

    .line 87
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "money"    # I
    .param p3, "developerInfo"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;
    .param p5, "callback"    # Lcom/iqiyigame/single/sdk/SDKPayCallback;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/iqiyigame/single/sdk/GamePayApi;->payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "money"    # I
    .param p3, "developerInfo"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/iqiyigame/single/sdk/SDKPayCallback;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iqiyigame/single/sdk/GamePayApi;->payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public payment(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "developerInfo"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/iqiyigame/single/sdk/SDKPayCallback;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V

    .line 116
    return-void
.end method

.method public showBannerAdView(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GamePayApi;->showBannerAdView(Landroid/app/Activity;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showPopUpAdView(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GamePayApi;->showPopUpAdView(Landroid/app/Activity;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showRecommondAdView(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GamePayApi;->showRecommondAdView(Landroid/app/Activity;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showSliderBar(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GamePayApi;->showSliderBar(Landroid/app/Activity;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showVideo(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->api:Lcom/iqiyigame/single/sdk/GamePayApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GamePayApi;->showVideo(Landroid/app/Activity;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public webchat(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "money"    # I
    .param p3, "developerInfo"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/iqiyigame/single/sdk/SDKPayCallback;

    .prologue
    .line 148
    sget-object v4, Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;->WEBCHAT:Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->payment(Landroid/app/Activity;ILjava/lang/String;Lcom/iqiyigame/single/sdk/GamePayApi$PaymentType;Lcom/iqiyigame/single/sdk/SDKPayCallback;)V

    .line 149
    return-void
.end method
