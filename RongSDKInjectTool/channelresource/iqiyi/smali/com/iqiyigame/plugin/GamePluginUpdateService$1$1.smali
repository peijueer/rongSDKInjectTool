.class Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;
.super Ljava/lang/Object;
.source "GamePluginUpdateService.java"

# interfaces
.implements Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->onUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

.field final synthetic val$force_update:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/GamePluginUpdateService$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;->this$1:Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

    iput-object p2, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;->val$force_update:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 85
    const-string v1, "\u66f4\u65b0\u5931\u8d25"

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "update"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;->this$1:Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

    iget-object v1, v1, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-virtual {v1, v0}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    iget-object v1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;->this$1:Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

    iget-object v1, v1, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-virtual {v1}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->stopSelf()V

    .line 91
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 68
    const-string v1, "\u66f4\u65b0\u5b8c\u6210"

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action.update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;->val$force_update:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "send force update plugin broadcast"

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 74
    const-string v1, "update"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;->this$1:Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

    iget-object v1, v1, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-virtual {v1, v0}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    iget-object v1, p0, Lcom/iqiyigame/plugin/GamePluginUpdateService$1$1;->this$1:Lcom/iqiyigame/plugin/GamePluginUpdateService$1;

    iget-object v1, v1, Lcom/iqiyigame/plugin/GamePluginUpdateService$1;->this$0:Lcom/iqiyigame/plugin/GamePluginUpdateService;

    invoke-virtual {v1}, Lcom/iqiyigame/plugin/GamePluginUpdateService;->stopSelf()V

    .line 80
    return-void

    .line 76
    :cond_0
    const-string v1, "update"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
