.class public Lcom/iqiyigame/plugin/GameProxyService;
.super Landroid/app/Service;
.source "GameProxyService.java"

# interfaces
.implements Lcom/iqiyigame/plugin/internal/GameServiceAttachable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLProxyService"


# instance fields
.field private mImpl:Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;

.field private mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

.field private mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/iqiyigame/plugin/GameServicePlugin;Lcom/iqiyigame/plugin/internal/GamePluginManager;)V
    .locals 1
    .param p1, "remoteService"    # Lcom/iqiyigame/plugin/GameServicePlugin;
    .param p2, "pluginManager"    # Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .prologue
    .line 149
    const-string v0, "DLProxyService attach"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    .line 151
    iput-object p2, p0, Lcom/iqiyigame/plugin/GameProxyService;->mPluginManager:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .line 152
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string v0, "DLProxyService onBind"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mImpl:Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->init(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GameServicePlugin;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GameServicePlugin;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GameServicePlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    const-string v0, "DLProxyService onConfigurationChanged"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    const-string v0, "DLProxyService onCreate"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;

    invoke-direct {v0, p0}, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mImpl:Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GameServicePlugin;->onDestroy()V

    .line 79
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 80
    const-string v0, "DLProxyService onDestroy"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/GameServicePlugin;->onLowMemory()V

    .line 99
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 100
    const-string v0, "DLProxyService onLowMemory"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GameServicePlugin;->onRebind(Landroid/content/Intent;)V

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 132
    const-string v0, "DLProxyService onRebind"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DLProxyService onStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mImpl:Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;

    invoke-virtual {v0, p1}, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->init(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 62
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/iqiyigame/plugin/GameServicePlugin;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 69
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/iqiyigame/plugin/GameServicePlugin;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1
    .param p1, "rootIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GameServicePlugin;->onTaskRemoved(Landroid/content/Intent;)V

    .line 142
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 143
    const-string v0, "DLProxyService onTaskRemoved"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GameServicePlugin;->onTrimMemory(I)V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 111
    const-string v0, "DLProxyService onTrimMemory"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    const-string v0, "DLProxyService onUnbind"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    if-eqz v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 120
    iget-object v0, p0, Lcom/iqiyigame/plugin/GameProxyService;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/GameServicePlugin;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method
