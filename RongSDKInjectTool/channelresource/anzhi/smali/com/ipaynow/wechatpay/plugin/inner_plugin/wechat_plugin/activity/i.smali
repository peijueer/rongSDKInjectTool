.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 442
    :goto_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->o(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->p(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    :goto_1
    return-void

    .line 443
    :cond_1
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v2, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Z)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getRunningAppProcess = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->o(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->o(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 447
    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    goto :goto_1

    .line 443
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 452
    :cond_5
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    new-instance v2, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/j;

    invoke-direct {v2, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/j;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;)V

    invoke-virtual {v0, v2}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
