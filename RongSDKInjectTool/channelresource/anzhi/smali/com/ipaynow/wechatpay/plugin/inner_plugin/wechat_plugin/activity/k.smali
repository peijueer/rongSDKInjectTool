.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;
.super Lcom/ipaynow/wechatpay/plugin/c/c/b/a;
.source "SourceFile"


# instance fields
.field final synthetic at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;->c(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V

    .line 367
    return-void
.end method

.method public final d(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->g(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    move-result-object v0

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 385
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    iget-object v1, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 387
    return-void
.end method

.method public final e(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 3

    .prologue
    .line 392
    :try_start_0
    iget-object v1, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Z:Ljava/util/HashMap;

    .line 393
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v0, "tn"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->c(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v0, "mhtOrderNo"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->d(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v0, "respOutputType"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->e(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v0, "referer"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->f(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/utils/g;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->h(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v1, "https://pay.ipaynow.cn"

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->f(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->g(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    move-result-object v0

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 375
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 377
    return-void
.end method
