.class public Lcom/muzhiwan/sdk/core/InnerController;
.super Ljava/lang/Object;
.source "InnerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;,
        Lcom/muzhiwan/sdk/core/InnerController$InnerControllerHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static isInit:Z

.field private static mzwService:Lcom/muzhiwan/sdk/service/IMzwService;


# instance fields
.field private force_update:I

.field private gameMainActivity:Landroid/app/Activity;

.field private initCallback:Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

.field private initJson:Ljava/lang/String;

.field private mScreenorientation:I

.field private outActivityNamePlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outPackageNamePlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rollback:I

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private updatePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    .line 93
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/core/InnerController;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->initJson:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->mScreenorientation:I

    .line 102
    new-instance v0, Lcom/muzhiwan/sdk/core/InnerController$1;

    invoke-direct {v0, p0}, Lcom/muzhiwan/sdk/core/InnerController$1;-><init>(Lcom/muzhiwan/sdk/core/InnerController;)V

    iput-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->serviceConnection:Landroid/content/ServiceConnection;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/muzhiwan/sdk/core/InnerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/muzhiwan/sdk/core/InnerController$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/InnerController;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 44
    sput-boolean p0, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/muzhiwan/sdk/core/InnerController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->updatePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/muzhiwan/sdk/core/InnerController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->updatePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/muzhiwan/sdk/service/IMzwService;)Lcom/muzhiwan/sdk/service/IMzwService;
    .locals 0
    .param p0, "x0"    # Lcom/muzhiwan/sdk/service/IMzwService;

    .prologue
    .line 44
    sput-object p0, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/muzhiwan/sdk/core/InnerController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->initJson:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/muzhiwan/sdk/core/InnerController;)Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;
    .locals 1
    .param p0, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->initCallback:Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/muzhiwan/sdk/core/InnerController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/muzhiwan/sdk/core/InnerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/InnerController;->doUpdateAuto()V

    return-void
.end method

.method static synthetic access$800(Lcom/muzhiwan/sdk/core/InnerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/muzhiwan/sdk/core/InnerController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/InnerController;->doInit()V

    return-void
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 401
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 402
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "com.muzhiwan.sdk.service.MzwService"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->getDestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.muzhiwan.sdk.service.MzwService"

    iget-object v4, p0, Lcom/muzhiwan/sdk/core/InnerController;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/muzhiwan/plugin/LPluginOpener;->bindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    .line 406
    return-void
.end method

.method private doInit()V
    .locals 4

    .prologue
    .line 245
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 247
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController;->initJson:Ljava/lang/String;

    iget v3, p0, Lcom/muzhiwan/sdk/core/InnerController;->mScreenorientation:I

    invoke-interface {v1, v2, v3}, Lcom/muzhiwan/sdk/service/IMzwService;->doInit(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doInit exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private doUpdateAuto()V
    .locals 4

    .prologue
    .line 231
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 233
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController;->initJson:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/muzhiwan/sdk/service/IMzwService;->doUpdateAuto(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doUpdateAuto exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/muzhiwan/sdk/core/InnerController;
    .locals 1

    .prologue
    .line 199
    # getter for: Lcom/muzhiwan/sdk/core/InnerController$InnerControllerHolder;->INSTANCE:Lcom/muzhiwan/sdk/core/InnerController;
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController$InnerControllerHolder;->access$900()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v0

    return-object v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    const-string v2, "connectivity"

    .line 390
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 391
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 392
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    .line 393
    const/4 v2, 0x1

    .line 394
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unBindService()V
    .locals 2

    .prologue
    .line 412
    sget-boolean v0, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/muzhiwan/sdk/core/InnerController;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lcom/muzhiwan/plugin/LPluginOpener;->unBindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 414
    const/4 v0, 0x0

    sput-boolean v0, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method public callSDKPlugin()V
    .locals 5

    .prologue
    .line 420
    iget-object v4, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->getDestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "dest":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v3, "sdkPlugin":Ljava/io/File;
    iget-object v4, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getAssetsVersion(Landroid/content/Context;)I

    move-result v1

    .line 423
    .local v1, "gameSDKVersion":I
    iget-object v4, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getSDKVersion(Landroid/content/Context;)I

    move-result v2

    .line 424
    .local v2, "localSDKVersion":I
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    if-le v1, v2, :cond_1

    .line 425
    :cond_0
    iget-object v4, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->copyCore(Landroid/app/Activity;)V

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/InnerController;->bindService()V

    .line 429
    return-void
.end method

.method public destory()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/InnerController;->unBindService()V

    .line 380
    return-void
.end method

.method public doExitGame(Lcom/muzhiwan/sdk/service/RongMzwExitGameCallBack;)V
    .locals 4
    .param p1, "exitGameCallBack"    # Lcom/muzhiwan/sdk/service/RongMzwExitGameCallBack;

    .prologue
    .line 355
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1, p1}, Lcom/muzhiwan/sdk/service/IMzwService;->doExitGame(Lcom/muzhiwan/sdk/service/RongMzwExitGameCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doSetPopVisible exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doLogin(Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;)V
    .locals 4
    .param p1, "callBack"    # Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;

    .prologue
    .line 261
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 263
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1, p1}, Lcom/muzhiwan/sdk/service/IMzwService;->doLogin(Lcom/muzhiwan/sdk/service/IMzwLoginCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doLogin exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doLogout()V
    .locals 4

    .prologue
    .line 275
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1}, Lcom/muzhiwan/sdk/service/IMzwService;->doLogout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doLogout exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;)V
    .locals 4
    .param p1, "order"    # Lcom/muzhiwan/sdk/service/MzwOrder;
    .param p2, "callBack"    # Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;

    .prologue
    .line 292
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 294
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1, p1, p2}, Lcom/muzhiwan/sdk/service/IMzwService;->doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/service/IMzwPayCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doPay exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doPostGiftCode(Ljava/lang/String;Lcom/muzhiwan/sdk/core/callback/MzwPostGiftCodeCallback;)V
    .locals 4
    .param p1, "giftCode"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/muzhiwan/sdk/core/callback/MzwPostGiftCodeCallback;

    .prologue
    .line 325
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1, p1, p2}, Lcom/muzhiwan/sdk/service/IMzwService;->doPostGiftCode(Ljava/lang/String;Lcom/muzhiwan/sdk/service/IMzwPostGiftCodeCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doPostGiftCode exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doSetPopVisible(Z)V
    .locals 4
    .param p1, "popVisible"    # Z

    .prologue
    .line 340
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1, p1}, Lcom/muzhiwan/sdk/service/IMzwService;->doSetPopVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doSetPopVisible exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doStaPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muzhiwan/sdk/core/callback/MzwStaPayCallback;)V
    .locals 4
    .param p1, "videoappid"    # Ljava/lang/String;
    .param p2, "videoid"    # Ljava/lang/String;
    .param p3, "staProductInfo"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/muzhiwan/sdk/core/callback/MzwStaPayCallback;

    .prologue
    .line 309
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/muzhiwan/sdk/service/IMzwService;->doStaPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muzhiwan/sdk/service/IMzwStaPayCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doStaPay exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public doSubGameInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 365
    sget-boolean v1, Lcom/muzhiwan/sdk/core/InnerController;->isInit:Z

    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->mzwService:Lcom/muzhiwan/sdk/service/IMzwService;

    invoke-interface {v1, p1}, Lcom/muzhiwan/sdk/service/IMzwService;->doSubGameInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw doSetPopVisible exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getForce_update()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->force_update:I

    return v0
.end method

.method public getGameMainActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getInitJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->initJson:Ljava/lang/String;

    return-object v0
.end method

.method public getOutActivityNamePlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->outActivityNamePlugins:Ljava/util/List;

    return-object v0
.end method

.method public getOutPackageNamePlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->outPackageNamePlugins:Ljava/util/List;

    return-object v0
.end method

.method public getUpdatePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController;->updatePath:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/app/Activity;ILcom/muzhiwan/sdk/core/callback/MzwInitCallback;)V
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "callback"    # Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    .line 211
    iput p2, p0, Lcom/muzhiwan/sdk/core/InnerController;->mScreenorientation:I

    .line 212
    iput-object p3, p0, Lcom/muzhiwan/sdk/core/InnerController;->initCallback:Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    .line 214
    invoke-static {p1}, Lcom/muzhiwan/sdk/core/InnerController;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    sget-object v1, Lcom/muzhiwan/sdk/core/InnerController;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/muzhiwan/sdk/core/InnerController$InitConfigRequestRunable;-><init>(Lcom/muzhiwan/sdk/core/InnerController;Lcom/muzhiwan/sdk/core/InnerController$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MZW_LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/muzhiwan/sdk/core/InnerController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mzw init exception..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 223
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lcom/muzhiwan/sdk/core/InnerController;->initCallback:Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    const/4 v2, 0x0

    const-string v3, "\u672a\u68c0\u6d4b\u5230\u7f51\u7edc\uff0c\u8bf7\u91cd\u8bd5\uff01"

    invoke-interface {v1, v2, v3}, Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public isRollback()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget v1, p0, Lcom/muzhiwan/sdk/core/InnerController;->rollback:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setForce_update(I)V
    .locals 0
    .param p1, "force_update"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->force_update:I

    .line 175
    return-void
.end method

.method public setGameMainActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "gameMainActivity"    # Landroid/app/Activity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    .line 167
    return-void
.end method

.method public setInitJson(Ljava/lang/String;)V
    .locals 0
    .param p1, "initJson"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->initJson:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setOutActivityNamePlugins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "outActivityNamePlugins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->outActivityNamePlugins:Ljava/util/List;

    .line 191
    return-void
.end method

.method public setOutPackageNamePlugins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "outPackageNamePlugins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->outPackageNamePlugins:Ljava/util/List;

    .line 183
    return-void
.end method

.method public setRollback(I)V
    .locals 0
    .param p1, "rollback"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->rollback:I

    .line 151
    return-void
.end method

.method public setUpdatePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatePath"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController;->updatePath:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public updateSDKPlugin()V
    .locals 3

    .prologue
    .line 434
    new-instance v0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    iget-object v1, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/muzhiwan/sdk/core/InnerController;->gameMainActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/muzhiwan/sdk/core/InnerController;->updatePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/muzhiwan/sdk/dynamic/utils/HttpUtils;->downloadPluginFile(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;Landroid/app/Activity;Ljava/lang/String;)V

    .line 435
    return-void
.end method
