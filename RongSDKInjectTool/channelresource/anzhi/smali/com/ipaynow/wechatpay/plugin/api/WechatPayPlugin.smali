.class public Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/api/b;->b()Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultLoading()Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/f;

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    .locals 2

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 38
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->h(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->h(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 42
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->d(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 43
    return-object p0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->onActivityDestroy()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 142
    return-void
.end method

.method public pay(Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    if-nez p1, :cond_2

    .line 90
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8bf7\u4f20\u5165\u63d2\u4ef6\u652f\u4ed8\u53c2\u6570"

    invoke-virtual {v1, v0}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :cond_2
    :try_start_1
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/api/a;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/api/a;-><init>()V

    .line 98
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/ipaynow/wechatpay/plugin/api/a;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/api/a;->a()V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public pay(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    .line 57
    :try_start_0
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-static {p1}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/view/r;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ipaynow/wechatpay/plugin/view/r;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8bf7\u4f20\u5165\u63d2\u4ef6\u652f\u4ed8\u53c2\u6570"

    invoke-virtual {v1, v0}, Lcom/ipaynow/wechatpay/plugin/view/r;->B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/r;->aj()Lcom/ipaynow/wechatpay/plugin/view/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/r;->ak()Landroid/widget/Toast;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :cond_2
    :try_start_1
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/api/a;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/api/a;-><init>()V

    .line 69
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/ipaynow/wechatpay/plugin/api/a;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/api/a;->a()V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->b(Landroid/app/Activity;)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 114
    return-object p0
.end method

.method public setCallResultReceiver(Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 124
    return-object p0
.end method

.method public setCustomDialog(Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    .locals 2

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 135
    :cond_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->b(Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;)V

    .line 136
    return-object p0
.end method

.method public setShowConfirmDialog(Z)Lcom/ipaynow/wechatpay/plugin/api/WechatPayPlugin;
    .locals 0

    .prologue
    .line 118
    sput-boolean p1, Lcom/ipaynow/wechatpay/plugin/conf/e;->y:Z

    .line 119
    return-object p0
.end method
