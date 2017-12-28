.class public abstract Lcom/ipaynow/qqpay/plugin/ipview/BaseView;
.super Landroid/app/Activity;


# instance fields
.field public V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract i()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/ipaynow/qqpay/plugin/view/b;

    invoke-direct {v1, p0}, Lcom/ipaynow/qqpay/plugin/view/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    invoke-virtual {p0, v0}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->i()V

    sget-boolean v0, Lcom/ipaynow/qqpay/plugin/b/c;->y:Z

    return-void
.end method
