.class Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;
.super Ljava/lang/Object;
.source "GameAdPlatform.java"

# interfaces
.implements Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->onUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;


# direct methods
.method constructor <init>(Lcom/iqiyigame/single/sdk/GameAdPlatform$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "downloadPlugin fail"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v0, v0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 150
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v0

    const-string v1, "download plugin fail"

    invoke-interface {v0, v1}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onFail(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 118
    const-string v3, "downloadPlugin success"

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 120
    iget-object v3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "pluginMd5":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "pluginFileMd5":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "plugin_sdk_version":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "5.9.0"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->this$0:Lcom/iqiyigame/single/sdk/GameAdPlatform;

    iget-object v4, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v4, v4, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v5, v5, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$gameid:Ljava/lang/String;

    # invokes: Lcom/iqiyigame/single/sdk/GameAdPlatform;->loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    invoke-static {v3, v4, v5, p1}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$000(Lcom/iqiyigame/single/sdk/GameAdPlatform;Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onSuccess()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getInitErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 132
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    const-string v4, "plugin load  error"

    invoke-interface {v3, v4}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/iqiyigame/single/sdk/GameAdPlatform$2$1;->this$1:Lcom/iqiyigame/single/sdk/GameAdPlatform$2;

    iget-object v3, v3, Lcom/iqiyigame/single/sdk/GameAdPlatform$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getInitErrorString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 139
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 140
    # getter for: Lcom/iqiyigame/single/sdk/GameAdPlatform;->listener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameAdPlatform;->access$100()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v3

    const-string v4, "plugin file error"

    invoke-interface {v3, v4}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
