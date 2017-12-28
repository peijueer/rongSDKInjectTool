.class Lcom/iqiyigame/BasePlatform$2;
.super Ljava/lang/Object;
.source "BasePlatform.java"

# interfaces
.implements Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/BasePlatform;->downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyigame/BasePlatform;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$gameid:Ljava/lang/String;

.field final synthetic val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;


# direct methods
.method constructor <init>(Lcom/iqiyigame/BasePlatform;Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyigame/BasePlatform;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iqiyigame/BasePlatform$2;->this$0:Lcom/iqiyigame/BasePlatform;

    iput-object p2, p0, Lcom/iqiyigame/BasePlatform$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/iqiyigame/BasePlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/iqiyigame/BasePlatform$2;->val$gameid:Ljava/lang/String;

    iput-object p5, p0, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "checkPluginVersion fail"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 122
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    const-string v1, "download plugin fail"

    invoke-interface {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onFail(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "plugin_version"    # Ljava/lang/String;
    .param p3, "force_update"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$2;->val$activity:Landroid/app/Activity;

    sget-object v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    new-instance v5, Lcom/iqiyigame/BasePlatform$2$1;

    invoke-direct {v5, p0}, Lcom/iqiyigame/BasePlatform$2$1;-><init>(Lcom/iqiyigame/BasePlatform$2;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;)V

    .line 115
    return-void
.end method
