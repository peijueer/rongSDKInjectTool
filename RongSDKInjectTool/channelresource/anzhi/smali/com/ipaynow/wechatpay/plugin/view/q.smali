.class final Lcom/ipaynow/wechatpay/plugin/view/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cV:Lcom/ipaynow/wechatpay/plugin/view/p;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/view/p;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 49
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->a(Lcom/ipaynow/wechatpay/plugin/view/p;)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/p;->a(Lcom/ipaynow/wechatpay/plugin/view/p;F)V

    .line 50
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->a(Lcom/ipaynow/wechatpay/plugin/view/p;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->a(Lcom/ipaynow/wechatpay/plugin/view/p;)F

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->a(Lcom/ipaynow/wechatpay/plugin/view/p;F)V

    .line 51
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->invalidate()V

    .line 52
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->b(Lcom/ipaynow/wechatpay/plugin/view/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/view/p;->c(Lcom/ipaynow/wechatpay/plugin/view/p;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/ipaynow/wechatpay/plugin/view/p;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/q;->cV:Lcom/ipaynow/wechatpay/plugin/view/p;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->a(Lcom/ipaynow/wechatpay/plugin/view/p;)F

    move-result v0

    sub-float/2addr v0, v3

    goto :goto_0
.end method
