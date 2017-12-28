.class Lcom/iqiyigame/single/sdk/GameAdPlatform$1;
.super Landroid/os/Handler;
.source "GameAdPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyigame/single/sdk/GameAdPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/single/sdk/GameAdPlatform;


# direct methods
.method constructor <init>(Lcom/iqiyigame/single/sdk/GameAdPlatform;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/single/sdk/GameAdPlatform;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$1;->this$0:Lcom/iqiyigame/single/sdk/GameAdPlatform;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    .line 43
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "pluginFile":Ljava/io/File;
    iget-object v3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$1;->this$0:Lcom/iqiyigame/single/sdk/GameAdPlatform;

    sget-object v4, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    # invokes: Lcom/iqiyigame/single/sdk/GameAdPlatform;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    invoke-static {v3, v0, v4, v2}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$000(Lcom/iqiyigame/single/sdk/GameAdPlatform;Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onSuccess()V

    .line 51
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
