.class final Lcom/ipaynow/wechatpay/plugin/view/p;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/view/j;


# instance fields
.field private cR:F

.field private cS:I

.field private cT:Z

.field private cU:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/p;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "cn_ipaynow_wechatpay_plugin.png"

    invoke-static {v1, v0}, Lcom/ipaynow/wechatpay/plugin/view/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v3}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v3}, Lcom/ipaynow/wechatpay/plugin/view/o;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x53

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cS:I

    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/q;

    invoke-direct {v0, p0}, Lcom/ipaynow/wechatpay/plugin/view/q;-><init>(Lcom/ipaynow/wechatpay/plugin/view/p;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cU:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/view/p;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cR:F

    return v0
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/view/p;F)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cR:F

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/wechatpay/plugin/view/p;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cT:Z

    return v0
.end method

.method static synthetic c(Lcom/ipaynow/wechatpay/plugin/view/p;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cS:I

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .prologue
    .line 60
    const/high16 v0, 0x42a60000    # 83.0f

    div-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cS:I

    .line 61
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cT:Z

    .line 73
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cU:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/p;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cT:Z

    .line 79
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 80
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 65
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/p;->cR:F

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/p;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/p;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    return-void
.end method
