.class final Lcom/ipaynow/wechatpay/plugin/view/b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private ci:F

.field private cj:Landroid/graphics/Paint;

.field private ck:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "#b1000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/b;->b(I)V

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/b;->setBackgroundColor(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->cj:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->cj:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->cj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->ck:Landroid/graphics/RectF;

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->ci:F

    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->ci:F

    iget-object v3, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->cj:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->ck:Landroid/graphics/RectF;

    .line 72
    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/b;->ci:F

    .line 59
    return-void
.end method
