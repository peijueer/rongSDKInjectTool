.class public final Lcom/ipaynow/qqpay/plugin/api/a;
.super Lcom/ipaynow/qqpay/plugin/a/a;


# instance fields
.field private m:Landroid/app/ProgressDialog;

.field private n:Lcom/ipaynow/qqpay/plugin/d/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ipaynow/qqpay/plugin/a/a;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->n:Lcom/ipaynow/qqpay/plugin/d/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ProgressDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_0
    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u5b89\u5168\u73af\u5883\u626b\u63cf"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/utils/MerchantTools;->generatePreSignMessage(Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/qqpay/plugin/d/a;

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-direct {v1, v2}, Lcom/ipaynow/qqpay/plugin/d/a;-><init>(Landroid/app/ProgressDialog;)V

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/api/a;->n:Lcom/ipaynow/qqpay/plugin/d/a;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/api/a;->n:Lcom/ipaynow/qqpay/plugin/d/a;

    invoke-virtual {v1, v0}, Lcom/ipaynow/qqpay/plugin/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v3

    const-string v0, "ipaynow"

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/b/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->f()Lcom/ipaynow/qqpay/plugin/c/a/b/a;

    move-result-object v4

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->y()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u4f20\u5165\u8bf7\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\u63d2\u4ef6"

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v3, v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->b(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->b(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->z()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u4f20\u5165\u8bf7\u5728AndroidManifest\u4e2d\u6dfb\u52a0\u6240\u9700\u6743\u9650"

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v3, v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->c(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v2}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->c(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->A()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u5148\u8c03\u7528\u63d2\u4ef6\u521d\u59cb\u5316\u65b9\u6cd5"

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/utils/d;->j(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v2, "\u652f\u4ed8\u4fe1\u606f\u89e3\u6790\u5931\u8d25"

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    instance-of v0, p1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    :cond_b
    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->B()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    iget-object v0, v0, Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bf7\u586b\u5199\u652f\u6301\u7684\u4ea4\u6613\u7c7b\u578b"

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_c
    invoke-virtual {v3, v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->f(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move v0, v1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v3, v2}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->f(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    if-nez v0, :cond_f

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d2\u4ef6\u8c03\u8d77\u5931\u8d25"

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_e
    move v0, v1

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->v()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/b/a;->F()Lcom/ipaynow/qqpay/plugin/manager/b/a;

    move-result-object v0

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ipaynow/qqpay/plugin/manager/b/a;->c(Landroid/content/Context;)Lcom/ipaynow/qqpay/plugin/manager/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/b/a;->G()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/c;

    invoke-virtual {v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;-><init>(Landroid/content/Context;)V

    const-string v2, "\u52a0\u8f7d\u52a8\u6001\u5e93\u5931\u8d25"

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/view/c;->l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->K()Lcom/ipaynow/qqpay/plugin/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/c;->L()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {v3, v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->a(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v7, p0, Lcom/ipaynow/qqpay/plugin/api/a;->m:Landroid/app/ProgressDialog;

    :cond_10
    move v0, v1

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v3, v2}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->a(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    const-string v0, "\u6821\u9a8c\u901a\u8fc7"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/api/a;->p:Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_1
.end method
