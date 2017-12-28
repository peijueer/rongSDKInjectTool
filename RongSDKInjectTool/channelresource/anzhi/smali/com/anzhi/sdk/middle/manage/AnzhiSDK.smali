.class public Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
.super Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;
.source "AnzhiSDK.java"


# static fields
.field public static final GAME_AREA:Ljava/lang/String; = "gameArea"

.field public static final GAME_LEVEL:Ljava/lang/String; = "gameLevel"

.field public static final ROLE_ID:Ljava/lang/String; = "roleId"

.field public static final USER_ROLE:Ljava/lang/String; = "userRole"

.field private static sInstance:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;-><init>()V

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->sInstance:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    invoke-direct {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;-><init>()V

    sput-object v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->sInstance:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    .line 68
    :cond_0
    sget-object v0, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->sInstance:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addPop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->addPopInner(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public closeSDKActivity()V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getPluginActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getPluginActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 207
    :cond_0
    return-void
.end method

.method public exitGame(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->exitGameInner(Landroid/app/Activity;)V

    .line 165
    return-void
.end method

.method public getCallBack()Lcom/anzhi/sdk/middle/manage/GameCallBack;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->getCallBackInner()Lcom/anzhi/sdk/middle/manage/GameCallBack;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anzhi/sdk/middle/manage/GameCallBack;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "Appsecret"    # Ljava/lang/String;
    .param p4, "callBack"    # Lcom/anzhi/sdk/middle/manage/GameCallBack;

    .prologue
    .line 103
    new-instance v2, Lcom/anzhi/sdk/middle/manage/CPInfo;

    invoke-direct {v2}, Lcom/anzhi/sdk/middle/manage/CPInfo;-><init>()V

    .line 104
    .local v2, "info":Lcom/anzhi/sdk/middle/manage/CPInfo;
    invoke-virtual {v2, p2}, Lcom/anzhi/sdk/middle/manage/CPInfo;->setAppKey(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, p3}, Lcom/anzhi/sdk/middle/manage/CPInfo;->setSecret(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 108
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 110
    const-string v5, "ANZHI_DEBUG"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 111
    .local v3, "isDebug":Z
    if-eqz v3, :cond_0

    .line 112
    new-instance v5, Lcom/anzhi/sdk/middle/manage/AnzhiSDK$1;

    invoke-direct {v5, p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK$1;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiSDK;Landroid/app/Activity;)V

    invoke-virtual {p1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "isDebug":Z
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    new-instance v5, Lcom/anzhi/sdk/middle/manage/AnzhiSDK$2;

    invoke-direct {v5, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK$2;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiSDK;)V

    invoke-virtual {p0, p1, v2, p4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->initInner(Landroid/app/Activity;Lcom/anzhi/sdk/middle/manage/CPInfo;Lcom/anzhi/sdk/middle/manage/GameCallBack;Ljava/lang/Runnable;)V

    .line 129
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public login(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->loginInner(Landroid/app/Activity;)V

    .line 174
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->logoutInner()V

    .line 181
    return-void
.end method

.method public onActivityResultInvoked(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 248
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onActivityResult\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public onConfigurationChangedInvoked(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onConfigurationChanged\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public onDestoryInvoked()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onDestory\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public onNewIntentInvoked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onNewIntent\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public onPauseInvoked()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onPause\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public onResumeInvoked()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onResume\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method public onStartInvoked()V
    .locals 2

    .prologue
    .line 224
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onStart\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method public onStopInvoked()V
    .locals 2

    .prologue
    .line 240
    const-string v0, "Anzhi_sdk_lib"

    const-string v1, "sdk onStop\u88ab\u8c03\u7528"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public pay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->payInner(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public removePop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->removePopInner(Landroid/app/Activity;)V

    .line 156
    return-void
.end method

.method public setCpInfo(Lcom/anzhi/sdk/middle/manage/CPInfo;)V
    .locals 0
    .param p1, "mCpInfo"    # Lcom/anzhi/sdk/middle/manage/CPInfo;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->setCpInfoInner(Lcom/anzhi/sdk/middle/manage/CPInfo;)V

    .line 87
    return-void
.end method

.method public setPopVisible(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "visible"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->setPopVisibleInner(Landroid/app/Activity;Z)V

    .line 147
    return-void
.end method

.method public subGameInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->subGameInfoInner(Ljava/lang/String;)V

    .line 200
    return-void
.end method
