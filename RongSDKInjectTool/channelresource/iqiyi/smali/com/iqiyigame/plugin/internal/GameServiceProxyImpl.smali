.class public Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;
.super Ljava/lang/Object;
.source "GameServiceProxyImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLServiceProxyImpl"


# instance fields
.field private mProxyService:Landroid/app/Service;

.field private mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0
    .param p1, "service"    # Landroid/app/Service;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mProxyService:Landroid/app/Service;

    .line 24
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 29
    if-nez p1, :cond_0

    move v10, v11

    .line 66
    :goto_0
    return v10

    .line 33
    :cond_0
    sget-object v10, Lcom/iqiyigame/plugin/utils/GameConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v10}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 35
    const-string v10, "extra.package"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, "packageName":Ljava/lang/String;
    const-string v10, "extra.class"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "clazz":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DLServiceProxyImpl clazz="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " packageName="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 39
    iget-object v10, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mProxyService:Landroid/app/Service;

    invoke-static {v10}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v8

    .line 40
    .local v8, "pluginManager":Lcom/iqiyigame/plugin/internal/GamePluginManager;
    invoke-virtual {v8, v7}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getPackage(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v9

    .line 42
    .local v9, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-eqz v9, :cond_1

    iget-object v10, v9, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    if-nez v10, :cond_2

    .line 43
    :cond_1
    const-string v10, "NullPointerException"

    invoke-static {v10}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    move v10, v11

    .line 44
    goto :goto_0

    .line 48
    :cond_2
    :try_start_0
    iget-object v10, v9, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v10, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 49
    .local v5, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 50
    .local v6, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 51
    .local v4, "instance":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lcom/iqiyigame/plugin/GameServicePlugin;

    move-object v10, v0

    iput-object v10, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    .line 52
    iget-object v10, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mProxyService:Landroid/app/Service;

    check-cast v10, Lcom/iqiyigame/plugin/internal/GameServiceAttachable;

    iget-object v13, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v10, v13, v8}, Lcom/iqiyigame/plugin/internal/GameServiceAttachable;->attach(Lcom/iqiyigame/plugin/GameServicePlugin;Lcom/iqiyigame/plugin/internal/GamePluginManager;)V

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DLServiceProxyImpl instance = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 56
    iget-object v10, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    iget-object v13, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mProxyService:Landroid/app/Service;

    invoke-interface {v10, v13, v9}, Lcom/iqiyigame/plugin/GameServicePlugin;->attach(Landroid/app/Service;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v10, "extra.from"

    const/4 v13, 0x1

    invoke-virtual {v1, v10, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    iget-object v10, p0, Lcom/iqiyigame/plugin/internal/GameServiceProxyImpl;->mRemoteService:Lcom/iqiyigame/plugin/GameServicePlugin;

    invoke-interface {v10}, Lcom/iqiyigame/plugin/GameServicePlugin;->onCreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v10, v12

    .line 61
    goto/16 :goto_0

    .line 62
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v10, v11

    .line 66
    goto/16 :goto_0
.end method
