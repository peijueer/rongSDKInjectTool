.class final Lcom/a/a/b;
.super Landroid/widget/FrameLayout;


# instance fields
.field private bf:F

.field private bg:Landroid/graphics/Paint;

.field private bh:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "#b1000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/b;->c(I)V

    invoke-virtual {p0}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/b;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/a/a/b;->bg:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/a/a/b;->bg:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/a/a/b;->bg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/a/a/b;->bh:Landroid/graphics/RectF;

    iget v1, p0, Lcom/a/a/b;->bf:F

    iget v2, p0, Lcom/a/a/b;->bf:F

    iget-object v3, p0, Lcom/a/a/b;->bg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/a/a/b;->bh:Landroid/graphics/RectF;

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/a/a/f;->a(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/a/a/b;->bf:F

    return-void
.end method
