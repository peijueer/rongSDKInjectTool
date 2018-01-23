.class public Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
.super Ljava/lang/Object;


# instance fields
.field private m:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->m:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static getInstance()Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
    .locals 1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/api/b;->d()Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-direct {v0, p1}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u4f20\u5165\u5e94\u7528\u7684\u4e0a\u4e0b\u6587\u5bf9\u8c61"

    invoke-virtual {v0, v1}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->e(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->e(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->b(Landroid/content/Context;)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    goto :goto_0
.end method

.method public pay(Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;)V
    .locals 3

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    if-nez p1, :cond_1

    new-instance v1, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8bf7\u4f20\u5165\u63d2\u4ef6\u652f\u4ed8\u53c2\u6570"

    invoke-virtual {v1, v0}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/ipaynow/qqpay/plugin/api/a;

    invoke-direct {v1}, Lcom/ipaynow/qqpay/plugin/api/a;-><init>()V

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Lcom/ipaynow/qqpay/plugin/api/a;->a(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/ipaynow/qqpay/plugin/api/a;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/ipaynow/qqpay/plugin/api/a;->c()V

    goto :goto_0
.end method

.method public pay(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    if-nez p1, :cond_1

    new-instance v1, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8bf7\u4f20\u5165\u63d2\u4ef6\u652f\u4ed8\u53c2\u6570"

    invoke-virtual {v1, v0}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/ipaynow/qqpay/plugin/api/a;

    invoke-direct {v1}, Lcom/ipaynow/qqpay/plugin/api/a;-><init>()V

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Lcom/ipaynow/qqpay/plugin/api/a;->a(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    invoke-virtual {v1, p1}, Lcom/ipaynow/qqpay/plugin/api/a;->h(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/ipaynow/qqpay/plugin/api/a;->c()V

    goto :goto_0
.end method

.method public setCallResultActivity(Landroid/app/Activity;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
    .locals 1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->a(Landroid/app/Activity;)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    return-object p0
.end method

.method public setCallResultReceiver(Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
    .locals 1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->a(Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    return-object p0
.end method

.method public setCustomDialog(Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
    .locals 0

    sput-object p1, Lcom/ipaynow/qqpay/plugin/b/e;->B:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    return-object p0
.end method

.method public setPayLoading(Landroid/app/ProgressDialog;)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->m:Landroid/app/ProgressDialog;

    :cond_0
    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;->m:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public setShowConfirmDialog(Z)Lcom/ipaynow/qqpay/plugin/api/QQpayPlugin;
    .locals 0

    sput-boolean p1, Lcom/ipaynow/qqpay/plugin/b/e;->A:Z

    return-object p0
.end method
