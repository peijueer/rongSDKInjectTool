.class final Lcom/ipaynow/wechatpay/plugin/view/a;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/view/g;


# instance fields
.field private cd:Landroid/graphics/Paint;

.field private ce:Landroid/graphics/Paint;

.field private cf:Landroid/graphics/RectF;

.field private cg:I

.field private ch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cg:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->ch:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cd:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cd:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cd:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cd:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->ce:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->ce:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->ce:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->ce:Landroid/graphics/Paint;

    const-string v1, "#449E9E9E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cf:Landroid/graphics/RectF;

    .line 39
    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v2, 0x43870000    # 270.0f

    .line 74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->ch:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cg:I

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 76
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cf:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cd:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 77
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cf:Landroid/graphics/RectF;

    add-float/2addr v2, v3

    sub-float v3, v6, v3

    iget-object v5, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->ce:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 83
    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v0

    .line 84
    invoke-virtual {p0, v0, v0}, Lcom/ipaynow/wechatpay/plugin/view/a;->setMeasuredDimension(II)V

    .line 85
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 68
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/view/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/i;->a(FLandroid/content/Context;)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cf:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 70
    return-void
.end method

.method public final setMax(I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/ipaynow/wechatpay/plugin/view/a;->cg:I

    .line 90
    return-void
.end method
