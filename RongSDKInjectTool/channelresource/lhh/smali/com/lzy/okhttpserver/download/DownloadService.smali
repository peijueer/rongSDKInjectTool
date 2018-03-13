.class public Lcom/lzy/okhttpserver/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field private static DOWNLOAD_MANAGER:Lcom/lzy/okhttpserver/download/DownloadManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static getDownloadManager()Lcom/lzy/okhttpserver/download/DownloadManager;
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/lzy/okhttpserver/download/DownloadService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzy/okhttpserver/download/DownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    :cond_0
    sget-object v0, Lcom/lzy/okhttpserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/lzy/okhttpserver/download/DownloadManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lzy/okhttpserver/download/DownloadManager;->getInstance()Lcom/lzy/okhttpserver/download/DownloadManager;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttpserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/lzy/okhttpserver/download/DownloadManager;

    .line 37
    :cond_1
    sget-object v0, Lcom/lzy/okhttpserver/download/DownloadService;->DOWNLOAD_MANAGER:Lcom/lzy/okhttpserver/download/DownloadManager;

    return-object v0
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 41
    .line 42
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 43
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 45
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 46
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v4, Lcom/lzy/okhttpserver/download/DownloadService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    const/4 v2, 0x1

    .line 48
    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
