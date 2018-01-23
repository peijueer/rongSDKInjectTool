.class public final Lcom/ipaynow/wechatpay/plugin/view/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bc:Landroid/content/Context;

.field private cW:Landroid/widget/Toast;

.field private cX:Ljava/lang/String;

.field private cY:I

.field private cZ:I

.field private duration:I

.field private gravity:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->bc:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/view/r;
    .locals 1

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const-string v0, "text\u4e3anull"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->c(Ljava/lang/Object;)V

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cX:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public final aj()Lcom/ipaynow/wechatpay/plugin/view/r;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->duration:I

    .line 36
    return-object p0
.end method

.method public final ak()Landroid/widget/Toast;
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->bc:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "Context\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->c(Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->view:Landroid/view/View;

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->bc:Landroid/content/Context;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cX:Ljava/lang/String;

    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 66
    :cond_1
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->bc:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cW:Landroid/widget/Toast;

    .line 67
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cW:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 68
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cW:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cW:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 70
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cW:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->gravity:I

    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cY:I

    iget v3, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cZ:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 71
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/r;->cW:Landroid/widget/Toast;

    goto :goto_0
.end method
