.class public final Lcom/ipaynow/wechatpay/plugin/view/f;
.super Lcom/ipaynow/wechatpay/plugin/view/k;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/ipaynow/wechatpay/plugin/view/k;-><init>(Landroid/content/Context;)V

    .line 10
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/view/m;->cM:Lcom/ipaynow/wechatpay/plugin/view/m;

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/f;->a(Lcom/ipaynow/wechatpay/plugin/view/m;)Lcom/ipaynow/wechatpay/plugin/view/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/k;->ah()Lcom/ipaynow/wechatpay/plugin/view/k;

    .line 11
    return-void
.end method


# virtual methods
.method public final ag()Lcom/ipaynow/wechatpay/plugin/view/k;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/ipaynow/wechatpay/plugin/view/k;->ag()Lcom/ipaynow/wechatpay/plugin/view/k;

    move-result-object v0

    return-object v0
.end method

.method public final dismiss()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/ipaynow/wechatpay/plugin/view/k;->dismiss()V

    .line 26
    return-void
.end method

.method public final isShowing()Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/ipaynow/wechatpay/plugin/view/k;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final setLoadingMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/ipaynow/wechatpay/plugin/view/k;->A(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/k;

    .line 16
    return-void
.end method

.method public final synthetic show()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ipaynow/wechatpay/plugin/view/k;->ag()Lcom/ipaynow/wechatpay/plugin/view/k;

    move-result-object v0

    return-object v0
.end method
