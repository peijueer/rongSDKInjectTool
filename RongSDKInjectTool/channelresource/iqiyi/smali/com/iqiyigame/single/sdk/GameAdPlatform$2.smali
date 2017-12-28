.class Lcom/iqiyigame/single/sdk/GameAdPlatform$2;
.super Ljava/lang/Object;
.source "GameAdPlatform.java"

# interfaces
.implements Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/single/sdk/GameAdPlatform;->downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/single/sdk/GameAdPlatform;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$gameid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iqiyigame/single/sdk/GameAdPlatform;Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/single/sdk/GameAdPlatform;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->this$0:Lcom/iqiyigame/single/sdk/GameAdPlatform;

    iput-object p2, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$gameid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "checkPluginVersion fail"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v0

    const-string v1, "checkPluginVersion fail"

    invoke-interface {v0, v1}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onFail(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # Ljava/lang/String;
    .param p3, "force_update"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    new-instance v5, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;

    invoke-direct {v5, p0}, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;-><init>(Lcom/iqiyigame/single/sdk/GameAdPlatform$2;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;)V

    .line 155
    return-void
.end method
