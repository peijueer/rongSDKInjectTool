.class Lcom/iqiyigame/BasePlatform$2$1;
.super Ljava/lang/Object;
.source "BasePlatform.java"

# interfaces
.implements Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/BasePlatform$2;->onUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iqiyigame/BasePlatform$2;


# direct methods
.method constructor <init>(Lcom/iqiyigame/BasePlatform$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iqiyigame/BasePlatform$2;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 108
    const-string v0, "downloadPlugin fail"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v0, v0, Lcom/iqiyigame/BasePlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v0, v0, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v0, v0, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    const-string v1, "download plugin fail"

    invoke-interface {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onFail(Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 80
    const-string v3, "downloadPlugin success"

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 82
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "pluginMd5":Ljava/lang/String;
    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "pluginFileMd5":Ljava/lang/String;
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "plugin_sdk_version":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "5.9.0"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->this$0:Lcom/iqiyigame/BasePlatform;

    iget-object v4, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v4, v4, Lcom/iqiyigame/BasePlatform$2;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v5, v5, Lcom/iqiyigame/BasePlatform$2;->val$gameid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1}, Lcom/iqiyigame/BasePlatform;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    invoke-interface {v3}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onSuccess()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getInitErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 92
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    const-string v4, "plugin load  error"

    invoke-interface {v3, v4}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getInitErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 99
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/iqiyigame/BasePlatform$2$1;->this$1:Lcom/iqiyigame/BasePlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/BasePlatform$2;->val$listenr:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    const-string v4, "plugin file error"

    invoke-interface {v3, v4}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
