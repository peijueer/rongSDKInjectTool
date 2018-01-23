.class public Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;
.super Ljava/lang/Object;
.source "AnzhiUcenterInner.java"


# static fields
.field public static final PLUGIN_PKG_NAME:Ljava/lang/String; = "com.anzhi.usercenter.plugin"

.field private static final STR_MD5:Ljava/lang/String; = "fbaa7aefbd0c45db405e29feab4adc1b"

.field public static final TAG:Ljava/lang/String; = "Anzhi_sdk_lib"

.field protected static isDebugable:Z


# instance fields
.field private isLogOn:Z

.field private isPluginInValid:Z

.field private mAddPopRunnable:Ljava/lang/Runnable;

.field private mApplicationContext:Landroid/content/Context;

.field private mCallBack:Lcom/anzhi/sdk/middle/manage/GameCallBack;

.field private mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;

.field private mDialogs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mGameActivity:Landroid/app/Activity;

.field private mHidePopRunnable:Ljava/lang/Runnable;

.field private mLoginRunnable:Ljava/lang/Runnable;

.field private mLogoutRunnable:Ljava/lang/Runnable;

.field private mPluginActivity:Landroid/app/Activity;

.field protected mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

.field private mReceiver:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

.field private mReloadPluginLoginRunnable:Ljava/lang/Runnable;

.field private mRemovePopRunnable:Ljava/lang/Runnable;

.field private mShowPopRunnable:Ljava/lang/Runnable;

.field private mShowTextLinkRunnable:Ljava/lang/Runnable;

.field private mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isDebugable:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isLogOn:Z

    .line 85
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mDialogs:Ljava/util/Stack;

    .line 87
    iput-boolean v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isPluginInValid:Z

    .line 503
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$1;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$1;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mLogoutRunnable:Ljava/lang/Runnable;

    .line 795
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$2;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$2;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mShowTextLinkRunnable:Ljava/lang/Runnable;

    .line 803
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$3;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$3;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mAddPopRunnable:Ljava/lang/Runnable;

    .line 811
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$4;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$4;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mShowPopRunnable:Ljava/lang/Runnable;

    .line 821
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$5;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$5;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mHidePopRunnable:Ljava/lang/Runnable;

    .line 830
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$6;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mRemovePopRunnable:Ljava/lang/Runnable;

    .line 840
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$7;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$7;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mLoginRunnable:Ljava/lang/Runnable;

    .line 852
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$8;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$8;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mReloadPluginLoginRunnable:Ljava/lang/Runnable;

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 98
    const-string v0, "Anzhi_sdk_lib"

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->setTag(Ljava/lang/String;)V

    .line 99
    sget-boolean v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isDebugable:Z

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->setDebugable(Z)V

    .line 100
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->initPluginLog()V

    return-void
.end method

.method static synthetic access$10(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mDialogs:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$11(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isPluginInValid:Z

    return-void
.end method

.method static synthetic access$2(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->startPushService()V

    return-void
.end method

.method static synthetic access$3(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Lcom/anzhi/sdk/middle/manage/CPInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;

    return-object v0
.end method

.method static synthetic access$4(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mReloadPluginLoginRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkPluginValid()V

    return-void
.end method

.method static synthetic access$7(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->submitException()V

    return-void
.end method

.method static synthetic access$8(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->backgroundTask(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)I
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkPluginUpdate()I

    move-result v0

    return v0
.end method

.method private backgroundTask(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;

    invoke-direct {v0, p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/content/Context;)V

    .line 317
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$13;->start()V

    .line 319
    return-void
.end method

.method private checkPluginUpdate()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 578
    .local v10, "manager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v2, "com.anzhi.usercenter.plugin"

    invoke-virtual {v1, v2}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 579
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v4, -0x1

    .line 580
    .local v4, "versionCode":I
    const/4 v5, 0x0

    .line 581
    .local v5, "md5Str":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 582
    iget v4, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 583
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 584
    const-string v1, "Anzhi_sdk_lib"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local plugin version code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    new-instance v0, Lcom/anzhi/sdk/middle/update/PluginUpdate;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    const/16 v2, 0xfa3

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-direct/range {v0 .. v5}, Lcom/anzhi/sdk/middle/update/PluginUpdate;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    .line 589
    .local v0, "pluginUpdate":Lcom/anzhi/sdk/middle/update/PluginUpdate;
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->checkPluginUpdate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 590
    .local v7, "code":Ljava/lang/Integer;
    const-string v1, "Anzhi_sdk_lib"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check plugin update : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-nez v7, :cond_1

    move v1, v12

    .line 619
    .end local v0    # "pluginUpdate":Lcom/anzhi/sdk/middle/update/PluginUpdate;
    .end local v4    # "versionCode":I
    .end local v5    # "md5Str":Ljava/lang/String;
    .end local v7    # "code":Ljava/lang/Integer;
    .end local v10    # "manager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 594
    .restart local v0    # "pluginUpdate":Lcom/anzhi/sdk/middle/update/PluginUpdate;
    .restart local v4    # "versionCode":I
    .restart local v5    # "md5Str":Ljava/lang/String;
    .restart local v7    # "code":Ljava/lang/Integer;
    .restart local v10    # "manager":Landroid/content/pm/PackageManager;
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->getUpdateInfo()Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/update/PluginUpdate;->getUpdateInfo()Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isForceUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 596
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    new-instance v2, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$17;

    invoke-direct {v2, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$17;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_2
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 607
    :goto_1
    :try_start_2
    const-string v1, "getActivity"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 608
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_3

    .line 609
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 611
    :cond_3
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 612
    .local v9, "json":Lorg/json/JSONObject;
    const-string v1, "killSelf"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 613
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCallBack:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    const/4 v2, 0x4

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/anzhi/sdk/middle/manage/GameCallBack;->callBack(ILjava/lang/String;)V

    .line 615
    .end local v6    # "activity":Landroid/app/Activity;
    .end local v9    # "json":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 616
    .end local v0    # "pluginUpdate":Lcom/anzhi/sdk/middle/update/PluginUpdate;
    .end local v4    # "versionCode":I
    .end local v5    # "md5Str":Ljava/lang/String;
    .end local v7    # "code":Ljava/lang/Integer;
    .end local v10    # "manager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v8

    .line 617
    .local v8, "e":Ljava/lang/Exception;
    const-string v1, "Anzhi_sdk_lib"

    const-string v2, ""

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v12

    .line 619
    goto :goto_0

    .line 605
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "pluginUpdate":Lcom/anzhi/sdk/middle/update/PluginUpdate;
    .restart local v4    # "versionCode":I
    .restart local v5    # "md5Str":Ljava/lang/String;
    .restart local v7    # "code":Ljava/lang/Integer;
    .restart local v10    # "manager":Landroid/content/pm/PackageManager;
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private checkPluginValid()V
    .locals 1

    .prologue
    .line 624
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 661
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$18;->start()V

    .line 663
    return-void
.end method

.method private checkUncaughtException(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 353
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    :cond_2
    const-string v2, "Anzhi_sdk_lib"

    .line 355
    const-string v3, ""

    .line 356
    new-instance v4, Ljava/lang/RuntimeException;

    .line 357
    const-string v5, "no application name, please set android:name=\"com.anzhi.sdk.middle.manage.AnzhiGameApplication\""

    .line 356
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 362
    .local v0, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "os.RuntimeInit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 363
    :cond_4
    const-string v2, "Anzhi_sdk_lib"

    .line 364
    const-string v3, ""

    .line 365
    new-instance v4, Ljava/lang/RuntimeException;

    .line 366
    const-string v5, "Application\u7c7b\u4e2donCreate()\u65b9\u6cd5\u4e2d\u672a\u8c03\u7528  Thread.setDefaultUncaughtExceptionHandler(new AnzhiSDKExceptionHandler(this))"

    .line 365
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 358
    .end local v0    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_5
    const-string v2, "com.anzhi.sdk.middle.manage.AnzhiGameApplication"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 367
    .restart local v0    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_6
    if-eqz v0, :cond_0

    .line 368
    const-string v2, "Anzhi_sdk_lib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UncaughtExceptionHandler:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearAllNextDialog()V
    .locals 1
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mDialogs:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mDialogs:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 346
    :cond_0
    return-void
.end method

.method private doloadPlugin()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;

    invoke-direct {v1, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$11;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method private getAPKResources(Ljava/lang/String;Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 768
    const-string v0, "android.content.res.AssetManager"

    .line 769
    .local v0, "PATH_AssetManager":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 770
    .local v2, "assetMagCls":Ljava/lang/Class;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 771
    .local v3, "assetMagCt":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 772
    .local v1, "assetMag":Ljava/lang/Object;
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/Class;

    .line 773
    .local v7, "typeArgs":[Ljava/lang/Class;
    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v7, v9

    .line 774
    const-string v9, "addAssetPath"

    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 775
    .local v4, "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/Object;

    .line 776
    .local v8, "valueArgs":[Ljava/lang/Object;
    const/4 v9, 0x0

    aput-object p1, v8, v9

    .line 777
    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 779
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/Class;

    .line 780
    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    .line 781
    const/4 v9, 0x1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    .line 782
    const/4 v9, 0x2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v7, v9

    .line 783
    const-class v9, Landroid/content/res/Resources;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 784
    .local v6, "resCt":Ljava/lang/reflect/Constructor;
    const/4 v9, 0x3

    new-array v8, v9, [Ljava/lang/Object;

    .line 785
    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 786
    const/4 v9, 0x1

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    aput-object v10, v8, v9

    .line 787
    const/4 v9, 0x2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    aput-object v10, v8, v9

    .line 788
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "res":Landroid/content/res/Resources;
    check-cast v5, Landroid/content/res/Resources;

    .line 789
    .restart local v5    # "res":Landroid/content/res/Resources;
    return-object v5
.end method

.method private initPluginLog()V
    .locals 6

    .prologue
    .line 374
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 375
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/usercenter/.l"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 379
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 380
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "str":Ljava/lang/String;
    const-string v4, "fbaa7aefbd0c45db405e29feab4adc1b"

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isLogOn:Z

    .line 384
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 385
    iget-boolean v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isLogOn:Z

    invoke-static {v4}, Lcom/anzhi/sdk/middle/util/LogUtils;->setDebugable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 386
    .restart local v0    # "f":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private initTextLink()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mShowTextLinkRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mShowTextLinkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startActivityForBackupLauncher(Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 666
    const/4 v4, 0x0

    .line 669
    .local v4, "ok":Z
    :try_start_0
    iget-object v7, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 671
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    const/high16 v7, 0x10000000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    const/high16 v7, 0x200000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    iget-object v7, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    const/4 v4, 0x1

    .line 699
    :cond_0
    :goto_0
    :try_start_2
    const-string v7, "Anzhi_sdk_lib"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "startActivityForBackupLauncher "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ok="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return v4

    .line 676
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 678
    if-eqz v2, :cond_0

    .line 680
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v5, "resolveIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    iget-object v7, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 684
    const/4 v8, 0x0

    .line 683
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 685
    .local v3, "launchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 686
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 687
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_0

    .line 688
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 690
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    const/high16 v7, 0x200000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 693
    iget-object v7, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 694
    const/4 v4, 0x1

    goto :goto_0

    .line 700
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "launchActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "resolveIntent":Landroid/content/Intent;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v1

    .line 701
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private startNextDialog()V
    .locals 2
    .annotation runtime Lcom/anzhi/plugin/framework/BySDKLibInvoke;
    .end annotation

    .prologue
    .line 323
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mDialogs:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mDialogs:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 328
    .local v0, "run":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 329
    new-instance v1, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$14;

    invoke-direct {v1, p0, v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$14;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Ljava/lang/Runnable;)V

    .line 334
    invoke-virtual {v1}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$14;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v0    # "run":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startPushService()V
    .locals 3

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/anzhi/sdk/middle/manage/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_RESET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 526
    return-void
.end method

.method private submitException()V
    .locals 1

    .prologue
    .line 553
    new-instance v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;

    invoke-direct {v0, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    .line 572
    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;->start()V

    .line 573
    return-void
.end method


# virtual methods
.method protected addPopInner(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 393
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    .line 397
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 398
    const-string v0, "setGameActivity"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mAddPopRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mAddPopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 401
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->initTextLink()V

    goto :goto_0
.end method

.method protected cancelNotiId(I)V
    .locals 5
    .param p1, "notiId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 499
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "onCancelNotiId"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_0
    return-void
.end method

.method protected exitGameInner(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 444
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "outGame"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_0
    return-void
.end method

.method protected getCallBackInner()Lcom/anzhi/sdk/middle/manage/GameCallBack;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCallBack:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    return-object v0
.end method

.method protected getCpInfoInner()Lcom/anzhi/sdk/middle/manage/CPInfo;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;

    return-object v0
.end method

.method protected getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 744
    if-nez p1, :cond_1

    move-object v2, v3

    .line 764
    :cond_0
    :goto_0
    return-object v2

    .line 747
    :cond_1
    const/4 v2, 0x0

    .line 749
    .local v2, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 753
    :catch_1
    move-exception v1

    .line 754
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v2, v3

    .line 755
    goto :goto_0

    .line 757
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 758
    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method protected getPluginActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    .line 139
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    .line 140
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;

    invoke-direct {v1, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$9;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method protected initInner(Landroid/app/Activity;Lcom/anzhi/sdk/middle/manage/CPInfo;Lcom/anzhi/sdk/middle/manage/GameCallBack;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "info"    # Lcom/anzhi/sdk/middle/manage/CPInfo;
    .param p3, "callBack"    # Lcom/anzhi/sdk/middle/manage/GameCallBack;
    .param p4, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 209
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isPluginInValid:Z

    .line 210
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    .line 211
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->registerReceiver(Landroid/content/Context;)V

    .line 212
    iput-object p2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;

    .line 213
    iput-object p3, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCallBack:Lcom/anzhi/sdk/middle/manage/GameCallBack;

    .line 214
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    .line 215
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->initPluginManager(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p2}, Lcom/anzhi/sdk/middle/manage/CPInfo;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Err1:APP_KEY is empty!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_0
    invoke-virtual {p2}, Lcom/anzhi/sdk/middle/manage/CPInfo;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Err2:APP_SECRET is empty!"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_1
    const/4 v0, 0x0

    .line 224
    .local v0, "actInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 225
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 226
    const-string v7, "com.anzhi.sdk.middle.manage.AgencyActivity"

    .line 225
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/16 v6, 0x80

    .line 224
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    iget v4, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 233
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Err4:AgencyActivity launchmode is not SINGLE_TASK!!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Anzhi_sdk_lib"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Err3:not found AgencyActivity from AndroidManifest.xml"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 235
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_3

    .line 236
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Err5:AndroidManifest.xml no found meta-data"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_3
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "ANZHIUSERCENTE_VERSIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    .local v2, "value":Ljava/lang/Object;
    const-string v4, "Anzhi_sdk_lib"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Game use sdk jar ver: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "ver":Ljava/lang/String;
    const-string v4, "4.0.3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 242
    new-instance v4, Ljava/lang/RuntimeException;

    .line 243
    const-string v5, "Err6:<meta_data> ver not match!!please set <meta_data android:name=\"ANZHIUSERCENTE_VERSIONS\"> value is:4.0.3"

    .line 242
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 247
    :cond_4
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->checkUncaughtException(Landroid/content/Context;)V

    .line 248
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;

    invoke-direct {v5, p0, p1, p3, p4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$12;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/app/Activity;Lcom/anzhi/sdk/middle/manage/GameCallBack;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method protected initPluginManager(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "doLasttimeTask"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/anzhi/plugin/loader/PluginManager;->getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    .line 189
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->setReloadPlugin(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramsTypes"    # [Ljava/lang/Class;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 729
    :try_start_0
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginLoaderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 730
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 731
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 732
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v3, "com.anzhi.usercenter.plugin"

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 740
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 734
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "Anzhi_sdk_lib"

    const-string v3, "***************** invoke plugin error ******************"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v2, "Anzhi_sdk_lib"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invoke plugin method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v2, "Anzhi_sdk_lib"

    const-string v3, "********************************************************"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Anzhi_sdk_lib"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected isPluginInValid()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isPluginInValid:Z

    return v0
.end method

.method protected loadPlugin()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 529
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v2, "com.anzhi.usercenter.plugin"

    new-instance v3, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$15;

    invoke-direct {v3, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$15;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V

    invoke-virtual {v0, v2, v3, v6}, Lcom/anzhi/plugin/loader/PluginManager;->loadPlugin(Ljava/lang/String;Lcom/anzhi/plugin/loader/OnPluginLoadCallback;Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;)Z

    .line 546
    const-string v0, "setInvokeReceiver"

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v5

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {p0, v0, v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v2, "setDebugable"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v3, v5

    new-array v4, v1, [Ljava/lang/Object;

    sget-boolean v0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isDebugable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v0, "initNotification"

    invoke-virtual {p0, v0, v6, v6}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return v1

    .line 547
    :cond_0
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->isLogOn:Z

    goto :goto_0
.end method

.method protected loginInner(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 453
    if-nez p1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    .line 457
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    const-string v0, "setGameActivity"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mGameActivity:Landroid/app/Activity;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mLoginRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mLoginRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected logoutInner()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mLogoutRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mLogoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 474
    :cond_0
    return-void
.end method

.method protected onPackageAdded(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isReplacing"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 477
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "onPackageAdded"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    .line 479
    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    .line 478
    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_0
    return-void
.end method

.method protected onPackageRemove(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isReplacing"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 483
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "onPackageRemove"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    .line 485
    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    .line 484
    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_0
    return-void
.end method

.method protected pauseAllDownload(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 494
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const-string v0, "pauseAllDownload"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_0
    return-void
.end method

.method protected payInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "Md5"    # Ljava/lang/String;

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/anzhi/sdk/middle/manage/AgencyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_SWITCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    const-string v1, "EXTRA_SWITCH_ACTIVITY"

    const-string v2, "PAY_ACTIVITY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    const-string v1, "PAY_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    const-string v1, "PAY_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 520
    return-void
.end method

.method protected registerReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 707
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mReceiver:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    if-eqz v2, :cond_0

    .line 722
    :goto_0
    return-void

    .line 711
    :cond_0
    :try_start_0
    new-instance v2, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    invoke-direct {v2}, Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;-><init>()V

    iput-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mReceiver:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    .line 712
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 713
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mReceiver:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 717
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 718
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mReceiver:Lcom/anzhi/sdk/middle/manage/AnzhiReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected removePopInner(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 432
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mRemovePopRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mRemovePopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected resumeAllDownload(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 489
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "resumeAllDownload"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_0
    return-void
.end method

.method protected setCpInfoInner(Lcom/anzhi/sdk/middle/manage/CPInfo;)V
    .locals 0
    .param p1, "mCpInfo"    # Lcom/anzhi/sdk/middle/manage/CPInfo;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mCpInfo:Lcom/anzhi/sdk/middle/manage/CPInfo;

    .line 123
    return-void
.end method

.method protected setPluginActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginActivity:Landroid/app/Activity;

    .line 131
    return-void
.end method

.method protected setPopVisibleInner(Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "visible"    # Z

    .prologue
    .line 416
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    if-eqz p2, :cond_2

    .line 420
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mShowPopRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mShowPopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mHidePopRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mHidePopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected startPush(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;

    invoke-direct {v1, p0, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$10;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public subGameInfoInner(Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mPluginMgr:Lcom/anzhi/plugin/loader/PluginManager;

    const-string v1, "com.anzhi.usercenter.plugin"

    invoke-virtual {v0, v1}, Lcom/anzhi/plugin/loader/PluginManager;->isContainer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "subGameInfo"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    return-void
.end method
