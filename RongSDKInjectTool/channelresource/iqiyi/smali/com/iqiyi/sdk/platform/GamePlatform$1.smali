.class Lcom/iqiyi/sdk/platform/GamePlatform$1;
.super Landroid/content/BroadcastReceiver;
.source "GamePlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/sdk/platform/GamePlatform;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/sdk/platform/GamePlatform;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$pluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;


# direct methods
.method constructor <init>(Lcom/iqiyi/sdk/platform/GamePlatform;Lcom/iqiyigame/plugin/internal/GamePluginPackage;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyi/sdk/platform/GamePlatform;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iqiyi/sdk/platform/GamePlatform$1;->this$0:Lcom/iqiyi/sdk/platform/GamePlatform;

    iput-object p2, p0, Lcom/iqiyi/sdk/platform/GamePlatform$1;->val$pluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iput-object p3, p0, Lcom/iqiyi/sdk/platform/GamePlatform$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
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

    .line 100
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePlatform$1;->val$pluginPackage:Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    iget-object v0, v5, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    .line 102
    .local v0, "classLoaderService":Ldalvik/system/DexClassLoader;
    :try_start_0
    const-string v5, "com.ppsgame.sdk.service.SDKService"

    invoke-virtual {v0, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    .local v1, "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePlatform$1;->val$activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;

    move-result-object v4

    .line 104
    .local v4, "pluginManager":Lcom/iqiyigame/plugin/internal/GamePluginManager;
    new-instance v2, Lcom/iqiyigame/plugin/internal/GameIntent;

    const-string v5, "com.ppsgame.sdk"

    invoke-direct {v2, v5, v1}, Lcom/iqiyigame/plugin/internal/GameIntent;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 105
    .local v2, "dlIntent":Lcom/iqiyigame/plugin/internal/GameIntent;
    const-string v5, "action"

    const/16 v6, 0x13

    invoke-virtual {v2, v5, v6}, Lcom/iqiyigame/plugin/internal/GameIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePlatform$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5, v2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->startPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    .end local v0    # "classLoaderService":Ldalvik/system/DexClassLoader;
    .end local v1    # "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "dlIntent":Lcom/iqiyigame/plugin/internal/GameIntent;
    .end local v4    # "pluginManager":Lcom/iqiyigame/plugin/internal/GamePluginManager;
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    return-void

    .line 107
    .restart local v0    # "classLoaderService":Ldalvik/system/DexClassLoader;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
