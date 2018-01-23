.class final Lcom/a/a/k;
.super Landroid/view/View;

# interfaces
.implements Lcom/a/a/d;


# instance fields
.field private ba:Landroid/graphics/Paint;

.field private bb:Landroid/graphics/Paint;

.field private bc:Landroid/graphics/RectF;

.field private bd:I

.field private be:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/a/a/k;->bd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/k;->be:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/k;->ba:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/k;->ba:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/a/a/k;->ba:Landroid/graphics/Paint;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0}, Lcom/a/a/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/a/a/k;->ba:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/k;->bb:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/k;->bb:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/a/a/k;->bb:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/a/a/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/a/a/k;->bb:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/a/a/k;->bc:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/a/a/k;->be:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/a/a/k;->bd:I

    int-to-float v1, v1

    div-float v3, v0, v1

    iget-object v1, p0, Lcom/a/a/k;->bc:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/a/a/k;->ba:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/a/a/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/a/a/k;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/a/a/k;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/a/a/k;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v3, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/a/a/k;->bb:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p0}, Lcom/a/a/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/a/a/k;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/a/a/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/a/a/k;->bc:Landroid/graphics/RectF;

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

    iput p1, p0, Lcom/a/a/k;->bd:I

    return-void
.end method
