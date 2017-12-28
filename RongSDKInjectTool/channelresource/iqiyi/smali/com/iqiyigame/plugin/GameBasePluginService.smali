.class public Lcom/iqiyigame/plugin/GameBasePluginService;
.super Landroid/app/Service;
.source "GameBasePluginService.java"

# interfaces
.implements Lcom/iqiyigame/plugin/GameServicePlugin;


# static fields
.field public static final TAG:Ljava/lang/String; = "DLBasePluginService"


# instance fields
.field protected mFrom:I

.field private mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

.field private mProxyService:Landroid/app/Service;

.field protected that:Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    iput-object p0, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->that:Landroid/app/Service;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->mFrom:I

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Service;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)V
    .locals 1
    .param p1, "proxyService"    # Landroid/app/Service;
    .param p2, "pluginPackage"    # Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .prologue
    .line 41
    const-string v0, "DLBasePluginService attach"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->mProxyService:Landroid/app/Service;

    .line 43
    iput-object p2, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->mPluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 44
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->mProxyService:Landroid/app/Service;

    iput-object v0, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->that:Landroid/app/Service;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->mFrom:I

    .line 46
    return-void
.end method

.method protected isInternalCall()Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/iqiyigame/plugin/GameBasePluginService;->mFrom:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "DLBasePluginService onBind"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 81
    const-string v0, "DLBasePluginService onConfigurationChanged"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "DLBasePluginService onCreate"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "DLBasePluginService onDestroy"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "DLBasePluginService onLowMemory"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    const-string v0, "DLBasePluginService onRebind"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 68
    const-string v0, "DLBasePluginService onStartCommand"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v0, "DLBasePluginService onTaskRemoved"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 93
    const-string v0, "DLBasePluginService onTrimMemory"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string v0, "DLBasePluginService onUnbind"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    return v0
.end method
