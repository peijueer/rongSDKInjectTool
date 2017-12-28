.class public Lcom/anzhi/sdk/middle/manage/AnzhiGameApplication;
.super Landroid/app/Application;
.source "AnzhiGameApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiGameApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiGameApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 44
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 45
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 46
    const-string v4, "ANZHI_DEBUG"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 47
    .local v2, "isDebug":Z
    if-eqz v2, :cond_0

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isDebug":Z
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    invoke-direct {v4, p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method
