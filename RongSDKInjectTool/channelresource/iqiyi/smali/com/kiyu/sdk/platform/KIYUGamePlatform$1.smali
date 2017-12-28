.class Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;
.super Landroid/content/BroadcastReceiver;
.source "KIYUGamePlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kiyu/sdk/platform/KIYUGamePlatform;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kiyu/sdk/platform/KIYUGamePlatform;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;


# direct methods
.method constructor <init>(Lcom/kiyu/sdk/platform/KIYUGamePlatform;Lcom/iqiyigame/plugin/internal/GamePluginPackage;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kiyu/sdk/platform/KIYUGamePlatform;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;->this$0:Lcom/kiyu/sdk/platform/KIYUGamePlatform;

    iput-object p2, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;->val$pluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iput-object p3, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    const-string v5, "update"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "update"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;->val$pluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v5, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 82
    .local v0, "classLoaderService":Ldalvik/system/DexClassLoader;
    :try_start_0
    const-string v5, "com.gamesdk.tw.polling.SDKService"

    invoke-virtual {v0, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 83
    .local v1, "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;->val$activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v4

    .line 84
    .local v4, "pluginManager":Lcom/iqiyigame/plugin/internal/GamePluginManager;
    new-instance v2, Lcom/iqiyigame/plugin/internal/GameIntent;

    const-string v5, "com.ppsgame.sdk"

    invoke-direct {v2, v5, v1}, Lcom/iqiyigame/plugin/internal/GameIntent;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    .local v2, "dlIntent":Lcom/iqiyigame/plugin/internal/GameIntent;
    const-string v5, "action"

    const/16 v6, 0x13

    invoke-virtual {v2, v5, v6}, Lcom/iqiyigame/plugin/internal/GameIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v5, p0, Lcom/kiyu/sdk/platform/KIYUGamePlatform$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->startPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v0    # "classLoaderService":Ldalvik/system/DexClassLoader;
    .end local v1    # "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "dlIntent":Lcom/iqiyigame/plugin/internal/GameIntent;
    .end local v4    # "pluginManager":Lcom/iqiyigame/plugin/internal/GamePluginManager;
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    return-void

    .line 87
    .restart local v0    # "classLoaderService":Ldalvik/system/DexClassLoader;
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 90
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
