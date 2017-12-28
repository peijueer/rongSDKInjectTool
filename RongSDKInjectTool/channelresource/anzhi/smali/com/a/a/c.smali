.class final Lcom/a/a/c;
.super Landroid/view/View;

# interfaces
.implements Lcom/a/a/d;


# instance fields
.field private bc:Landroid/graphics/RectF;

.field private bd:I

.field private be:I

.field private bi:Landroid/graphics/Paint;

.field private bj:Landroid/graphics/Paint;

.field private bk:Landroid/graphics/RectF;

.field private bl:F

.field private bm:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/a/a/c;->bd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/c;->be:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/c;->bi:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/c;->bi:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/a/a/c;->bi:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/a/a/c;->bi:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/c;->bj:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/c;->bj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/a/a/c;->bj:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/a/a/c;->bm:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/a/a/c;->bm:F

    iget v2, p0, Lcom/a/a/c;->bm:F

    invoke-virtual {p0}, Lcom/a/a/c;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/a/a/c;->bm:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/a/a/c;->be:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/a/a/c;->bd:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/a/a/c;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/a/a/c;->bm:F

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/a/a/c;->bk:Landroid/graphics/RectF;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lcom/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/a/a/c;->bl:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/a/a/c;->bc:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a/a/c;->bc:Landroid/graphics/RectF;

    iget v1, p0, Lcom/a/a/c;->bl:F

    iget v2, p0, Lcom/a/a/c;->bl:F

    iget-object v3, p0, Lcom/a/a/c;->bi:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/a/a/c;->bk:Landroid/graphics/RectF;

    iget v1, p0, Lcom/a/a/c;->bl:F

    iget v2, p0, Lcom/a/a/c;->bl:F

    iget-object v3, p0, Lcom/a/a/c;->bj:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/c;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/a/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/a/a/c;->bc:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v0, p2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final setMax(I)V
    .locals 0

    iput p1, p0, Lcom/a/a/c;->bd:I

    return-void
.end method
