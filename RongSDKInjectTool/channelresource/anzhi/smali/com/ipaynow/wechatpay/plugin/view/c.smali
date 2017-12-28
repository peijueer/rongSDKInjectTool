.class final Lcom/ipaynow/wechatpay/plugin/view/c;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/view/g;


# instance fields
.field private cf:Landroid/graphics/RectF;

.field private cg:I

.field private ch:I

.field private cl:Landroid/graphics/Paint;

.field private cm:Landroid/graphics/Paint;

.field private cn:Landroid/graphics/RectF;

.field private co:F

.field private cp:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cg:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->ch:I

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cl:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cl:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cl:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cl:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cm:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cm:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cm:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cp:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cp:F

    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cp:F

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cp:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->ch:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cg:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cp:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cn:Landroid/graphics/RectF;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->co:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cf:Landroid/graphics/RectF;

    .line 42
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 83
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cf:Landroid/graphics/RectF;

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->co:F

    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->co:F

    iget-object v3, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cl:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 84
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cn:Landroid/graphics/RectF;

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->co:F

    iget v2, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->co:F

    iget-object v3, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cm:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 90
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v0

    .line 91
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/c;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 76
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cf:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    return-void
.end method

.method public final setMax(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/ipaynow/wechatpay/plugin/view/c;->cg:I

    .line 98
    return-void
.end method
