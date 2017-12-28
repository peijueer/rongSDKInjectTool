.class public abstract Lcom/ipaynow/wechatpay/plugin/c/c/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/c/c/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 2

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;->c(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V

    .line 12
    iget-object v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    const-string v1, "01"

    if-ne v0, v1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;->j()V

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    const-string v1, "02"

    if-ne v0, v1, :cond_2

    .line 17
    invoke-virtual {p0, p1}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;->d(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->Y:Ljava/lang/String;

    const-string v1, "00"

    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a;->e(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V

    goto :goto_0
.end method

.method public c(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public abstract d(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
.end method

.method public abstract e(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
.end method

.method public abstract j()V
.end method
