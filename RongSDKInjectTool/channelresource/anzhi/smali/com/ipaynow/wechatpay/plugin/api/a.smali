.class public final Lcom/ipaynow/wechatpay/plugin/api/a;
.super Lcom/ipaynow/wechatpay/plugin/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 154
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    .line 156
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    .line 157
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    iget-object v1, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->d(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/utils/e;->a(Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 160
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "requestParams"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PARAM_START_PLUGIN_INTERNAL_ACTIVITIE"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    :goto_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->b(Z)V

    .line 167
    :goto_1
    return-void

    .line 160
    :cond_0
    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v5

    .line 32
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/c/b/d;->h()Lcom/ipaynow/wechatpay/plugin/c/b/d;

    move-result-object v2

    .line 35
    :try_start_0
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->F()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u5148\u8c03\u7528\u63d2\u4ef6\u521d\u59cb\u5316\u65b9\u6cd5"

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v3

    .line 149
    :goto_0
    return v1

    .line 43
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    const-string v6, "com.tencent.mm"

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 49
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->C()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "main"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_2
    if-nez v1, :cond_2

    .line 50
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\u63d2\u4ef6"

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->e(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    move v1, v3

    .line 54
    goto :goto_0

    :cond_1
    move v1, v3

    .line 49
    goto :goto_2

    .line 56
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->e(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 58
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->D()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ipaynow/wechatpay/plugin/c/b/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->f(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 63
    const-string v1, "ipaynow"

    const-string v2, "\u7f3a\u5c11\u5fc5\u8981\u6743\u9650"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->f(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 70
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->E()Z

    move-result v1

    if-nez v1, :cond_4

    .line 71
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u4f20\u5165\u5fc5\u4f20\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    move v1, v3

    .line 74
    goto/16 :goto_0

    .line 77
    :cond_4
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 78
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/utils/f;->x(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    .line 79
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    if-nez v1, :cond_5

    .line 80
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v2, "\u652f\u4ed8\u4fe1\u606f\u89e3\u6790\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    move v1, v3

    .line 83
    goto/16 :goto_0

    .line 86
    :cond_5
    instance-of v1, p2, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    if-eqz v1, :cond_6

    .line 87
    check-cast p2, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    iput-object p2, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    .line 89
    :cond_6
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    if-nez v1, :cond_7

    .line 90
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d2\u4ef6\u8c03\u8d77\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    move v1, v3

    .line 93
    goto/16 :goto_0

    .line 96
    :cond_7
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->y()Z

    move-result v1

    if-nez v1, :cond_12

    .line 97
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    :goto_3
    if-nez v1, :cond_12

    .line 98
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u4f20\u5165\u5fc5\u4f20\u53c2\u6570\u540e\u91cd\u8bd5"

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    move v1, v3

    .line 101
    goto/16 :goto_0

    .line 97
    :cond_8
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderNo:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v3

    goto :goto_3

    :cond_9
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderName:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v1, v3

    goto :goto_3

    :cond_a
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderType:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v1, v3

    goto :goto_3

    :cond_b
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtCurrencyType:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v1, v3

    goto :goto_3

    :cond_c
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move v1, v3

    goto :goto_3

    :cond_d
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderDetail:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v1, v3

    goto :goto_3

    :cond_e
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderStartTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v1, v3

    goto :goto_3

    :cond_f
    iget-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->notifyUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v1, v3

    goto :goto_3

    :cond_10
    iget-object v1, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtCharset:Ljava/lang/String;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_3

    :cond_11
    move v1, v4

    goto :goto_3

    .line 105
    :cond_12
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->u()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    if-nez v1, :cond_13

    .line 107
    :try_start_3
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    iget-object v6, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    iget-object v7, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    .line 108
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/f/c/a;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/f/c/a;-><init>()V

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Lcom/ipaynow/wechatpay/plugin/f/d/a;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/f/d/a;-><init>()V

    new-instance v8, Lcom/ipaynow/wechatpay/plugin/f/b/a;

    invoke-direct {v8}, Lcom/ipaynow/wechatpay/plugin/f/b/a;-><init>()V

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/f/a/b;->bG:Lcom/ipaynow/wechatpay/plugin/f/a/b;

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->a(Lcom/ipaynow/wechatpay/plugin/f/a/b;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-le v1, v9, :cond_14

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->j(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "android.permission.READ_PHONE_STATE"

    aput-object v11, v9, v10

    const/16 v10, 0x7b

    invoke-virtual {v1, v9, v10}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_4
    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->k(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "|"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->l(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->m(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->n(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->o(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->p(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->l(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/f/a/a;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->a(Lcom/ipaynow/wechatpay/plugin/f/a/a;)V

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->af()Lcom/ipaynow/wechatpay/plugin/f/a/c;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->a(Lcom/ipaynow/wechatpay/plugin/f/a/c;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->q(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->s(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->t(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->u(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->r(Ljava/lang/String;)V

    .line 107
    invoke-static {v6, v7, v8}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ipaynow/wechatpay/plugin/f/b/a;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 124
    :cond_13
    :goto_5
    :try_start_4
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->G()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 126
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->B()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/c/b/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 127
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/b;->o:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/ipaynow/wechatpay/plugin/conf/b;->o:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v6}, Lcom/ipaynow/wechatpay/plugin/conf/b;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->d(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v1, v3

    .line 130
    goto/16 :goto_0

    .line 108
    :cond_14
    :try_start_5
    invoke-static {v2}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ipaynow/wechatpay/plugin/f/b/a;->j(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 111
    :catch_0
    move-exception v1

    :try_start_6
    const-string v1, ""

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 142
    :catch_1
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    .line 147
    :goto_6
    const-string v1, "\u6821\u9a8c\u901a\u8fc7"

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->a(Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/a;->b:Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->a(Ljava/lang/Object;)V

    move v1, v4

    .line 149
    goto/16 :goto_0

    .line 132
    :cond_15
    const/4 v1, 0x1

    :try_start_7
    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->d(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 134
    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->x()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->K()Lcom/ipaynow/wechatpay/plugin/manager/c/a;

    move-result-object v1

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->e(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/manager/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/manager/c/a;->L()Z

    move-result v1

    if-nez v1, :cond_16

    .line 135
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v5}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52a0\u8f7d\u52a8\u6001\u5e93\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->c(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    move v1, v3

    .line 139
    goto/16 :goto_0

    .line 141
    :cond_16
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->c(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method
