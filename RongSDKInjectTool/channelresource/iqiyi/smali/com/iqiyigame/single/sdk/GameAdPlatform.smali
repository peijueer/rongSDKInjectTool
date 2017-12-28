.class public Lcom/iqiyigame/single/sdk/GameAdPlatform;
.super Ljava/lang/Object;
.source "GameAdPlatform.java"

# interfaces
.implements Lcom/iqiyigame/single/sdk/GameAdApi;


# static fields
.field private static final PLUGIN_CLASS_NAME:Ljava/lang/String; = "com.pps.gamead.activity.GameAdApiImpl"

.field private static final PLUGIN_PAKAGE_NAME:Ljava/lang/String; = "com.pps.gamead"

.field private static api:Lcom/iqiyigame/single/sdk/GameAdApi;

.field private static instance:Lcom/iqiyigame/single/sdk/GameAdPlatform;

.field private static listener:Lcom/iqiyigame/single/sdk/SDKInitListener;


# instance fields
.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/iqiyigame/single/sdk/GameAdPlatform$1;

    invoke-direct {v0, p0}, Lcom/iqiyigame/single/sdk/GameAdPlatform$1;-><init>(Lcom/iqiyigame/single/sdk/GameAdPlatform;)V

    iput-object v0, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->handler:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/iqiyigame/single/sdk/GameAdPlatform;Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iqiyigame/single/sdk/GameAdPlatform;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/io/File;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;

    return-object v0
.end method

.method private downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "pluginFile"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getLoadingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 105
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 107
    new-instance v1, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;-><init>(Lcom/iqiyigame/single/sdk/GameAdPlatform;Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-static {p1, p2, v2, v1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkPluginVersion(Landroid/content/Context;Ljava/lang/String;ILcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;)V

    .line 167
    return-void
.end method

.method public static getInstance()Lcom/iqiyigame/single/sdk/GameAdPlatform;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->instance:Lcom/iqiyigame/single/sdk/GameAdPlatform;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;

    invoke-direct {v0}, Lcom/iqiyigame/single/sdk/GameAdPlatform;-><init>()V

    sput-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->instance:Lcom/iqiyigame/single/sdk/GameAdPlatform;

    .line 173
    :cond_0
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->instance:Lcom/iqiyigame/single/sdk/GameAdPlatform;

    return-object v0
.end method

.method private loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "pluginFile"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 63
    :try_start_0
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v4

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->loadApk(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v3

    .line 64
    .local v3, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-nez v3, :cond_0

    move v4, v5

    .line 87
    .end local v3    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :goto_0
    return v4

    .line 68
    .restart local v3    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :cond_0
    iget-object v4, v3, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    .line 70
    iget-object v0, v3, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 71
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    const-string v4, "com.pps.gamead.activity.GameAdApiImpl"

    invoke-virtual {v0, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 73
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyigame/single/sdk/GameAdApi;

    sput-object v4, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    .line 74
    sget-object v4, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    const/4 v6, 0x0

    invoke-interface {v4, p1, p2, v6}, Lcom/iqiyigame/single/sdk/GameAdApi;->initGameAdSDK(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyigame/single/sdk/SDKInitListener;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 75
    const/4 v4, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    move v4, v5

    .line 87
    goto :goto_0

    .line 79
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 82
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getSDKVersion(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 282
    sget-object v1, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    if-eqz v1, :cond_0

    .line 283
    invoke-static {p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v1

    const-string v2, "com.pps.gamead"

    invoke-virtual {v1, v2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getPackage(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v0

    .line 284
    .local v0, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-eqz v0, :cond_1

    .line 285
    iget-object v1, v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 290
    .end local v0    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :goto_0
    return-object v1

    .line 288
    :cond_0
    const-string v1, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 290
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getVideoAdList(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/VideoAdCallback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/iqiyigame/single/sdk/VideoAdCallback;

    .prologue
    .line 234
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    invoke-interface {v0, p1, p2}, Lcom/iqiyigame/single/sdk/GameAdApi;->getVideoAdList(Landroid/app/Activity;Lcom/iqiyigame/single/sdk/VideoAdCallback;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public initGameAdSDK(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyigame/single/sdk/SDKInitListener;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/iqiyigame/single/sdk/SDKInitListener;

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v7, 0x0

    .line 183
    const-string v5, "SDK VERSION : 5.9.0"

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 184
    sput-object p2, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    .line 185
    const-string v5, "PPSGameSingleAdSDK"

    sput-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    .line 186
    const/4 v5, 0x1

    sput-boolean v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE:Z

    .line 187
    const/16 v5, 0xc

    sput v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE_TYPE:I

    .line 188
    sput-object p3, Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;

    .line 190
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "pluginFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 193
    sget-boolean v5, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->DEBUG:Z

    if-nez v5, :cond_3

    .line 194
    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "pluginMd5":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "pluginFileMd5":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "plugin_sdk_version":Ljava/lang/String;
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "5.9.0"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 201
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 229
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "pluginFileMd5":Ljava/lang/String;
    .end local v3    # "pluginMd5":Ljava/lang/String;
    .end local v4    # "plugin_sdk_version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v2    # "pluginFileMd5":Ljava/lang/String;
    .restart local v3    # "pluginMd5":Ljava/lang/String;
    .restart local v4    # "plugin_sdk_version":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->isAvaiableSpace()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 205
    sget-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v1}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 208
    if-eqz p3, :cond_0

    .line 209
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v2    # "pluginFileMd5":Ljava/lang/String;
    .end local v3    # "pluginMd5":Ljava/lang/String;
    .end local v4    # "plugin_sdk_version":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 215
    .restart local v0    # "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    iget-object v5, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 219
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->isAvaiableSpace()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 220
    sget-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v1}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 222
    :cond_5
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 223
    if-eqz p3, :cond_0

    .line 224
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showBannerAdView(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 264
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GameAdApi;->showBannerAdView(Landroid/app/Activity;)V

    .line 269
    :goto_0
    return-void

    .line 267
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
    .line 254
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GameAdApi;->showPopUpAdView(Landroid/app/Activity;)V

    .line 259
    :goto_0
    return-void

    .line 257
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
    .line 274
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/GameAdApi;->showRecommondAdView(Landroid/app/Activity;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showVideoAdView(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/iqiyigame/single/sdk/GameAdPlatform;->api:Lcom/iqiyigame/single/sdk/GameAdApi;

    invoke-interface {v0, p1, p2}, Lcom/iqiyigame/single/sdk/GameAdApi;->showVideoAdView(Landroid/app/Activity;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string v0, "\u672a\u521d\u59cb\u5316\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
