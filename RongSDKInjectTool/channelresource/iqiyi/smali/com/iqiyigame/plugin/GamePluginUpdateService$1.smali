.class Lcom/iqiyigame/plugin/GamePluginUpdateService$1;
.super Ljava/lang/Object;
.source "GamePluginUpdateService.java"

# interfaces
.implements Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/GamePluginUpdateService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/GamePluginUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/plugin/GamePluginUpdateService;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 98
    const-string v1, "PPSGameSDK \u5f53\u524d\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "update"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-virtual {v1, v0}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    iget-object v1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-virtual {v1}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->stopSelf()V

    .line 104
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "plugin_version"    # Ljava/lang/String;
    .param p3, "force_update"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "PPSGameSDK \u53d1\u73b0\u65b0\u7248\u672c"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->isAvaiableSpace()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-virtual {v0}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->stopSelf()V

    .line 93
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    sget-object v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    new-instance v5, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;

    invoke-direct {v5, p0, p3}, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;-><init>(Lcom/iqiyigame/plugin/GamePluginUpdateService$1;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;)V

    goto :goto_0
.end method
