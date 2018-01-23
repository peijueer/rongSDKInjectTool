.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;
.super Lcom/ipaynow/wechatpay/plugin/c/c/b/a;
.source "SourceFile"


# instance fields
.field final synthetic at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;->c(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V

    .line 289
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 290
    return-void
.end method

.method public final d(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->g(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    move-result-object v0

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 356
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    iget-object v1, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->errorCode:Ljava/lang/String;

    iget-object v2, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->respMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 358
    return-void
.end method

.method public final e(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 7

    .prologue
    .line 303
    const-string v0, "handleSuccess"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Z:Ljava/util/HashMap;

    const-string v1, "tradeStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    const-string v1, "A001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 307
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->d(Landroid/app/Activity;)V

    .line 308
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 309
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v1, "A003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "A004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    :cond_2
    sget-boolean v0, Lcom/ipaynow/wechatpay/plugin/conf/e;->y:Z

    if-eqz v0, :cond_3

    .line 314
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v6, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/d;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u662f\u5426\u7ee7\u7eed\u5b8c\u6210\u5fae\u4fe1\u652f\u4ed8?"

    new-instance v4, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;

    invoke-direct {v4, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;)V

    .line 322
    new-instance v5, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/n;

    invoke-direct {v5, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/n;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;)V

    invoke-direct/range {v0 .. v5}, Lcom/ipaynow/wechatpay/plugin/view/d;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 330
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/d;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 315
    invoke-static {v6, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Landroid/app/AlertDialog;)V

    .line 331
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->o()V

    .line 332
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->f(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 336
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->c(Landroid/app/Activity;)V

    .line 337
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 338
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    goto :goto_0

    .line 343
    :cond_4
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 344
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    const-string v2, "\u67e5\u8be2\u5931\u8d25"

    invoke-static {v1, v0, v2}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 346
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 296
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5fae\u4fe1\u4ea4\u6613\u67e5\u8be2\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 298
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 299
    return-void
.end method
