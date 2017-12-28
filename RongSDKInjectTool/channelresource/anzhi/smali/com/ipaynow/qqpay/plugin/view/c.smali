.class public final Lcom/ipaynow/qqpay/plugin/view/c;
.super Ljava/lang/Object;


# instance fields
.field private aW:Landroid/widget/Toast;

.field private aX:Ljava/lang/String;

.field private aY:I

.field private aZ:I

.field private ax:Landroid/content/Context;

.field private duration:I

.field private gravity:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->ax:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final K()Lcom/ipaynow/qqpay/plugin/view/c;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->duration:I

    return-object p0
.end method

.method public final L()Landroid/widget/Toast;
    .locals 4

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->ax:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Context\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->c(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->view:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->ax:Landroid/content/Context;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aX:Ljava/lang/String;

    iget v2, p0, Lcom/ipaynow/qqpay/plugin/view/c;->duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->ax:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aW:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aW:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->duration:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aW:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aW:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aW:Landroid/widget/Toast;

    iget v1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->gravity:I

    iget v2, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aY:I

    iget v3, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aZ:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aW:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public final l(Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/view/c;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "text\u4e3anull"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->c(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/view/c;->aX:Ljava/lang/String;

    return-object p0
.end method
