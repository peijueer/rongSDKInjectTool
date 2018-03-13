.class Lcom/zqhy/sdk/c/a$3;
.super Ljava/lang/Object;
.source "GlobalScreenShot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/c/a;->a(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Interpolator;

.field final synthetic b:Landroid/graphics/PointF;

.field final synthetic c:Lcom/zqhy/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/c/a;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    iput-object p2, p0, Lcom/zqhy/sdk/c/a$3;->a:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/zqhy/sdk/c/a$3;->b:Landroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 332
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 333
    const v1, 0x3f39999a    # 0.725f

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->g(Lcom/zqhy/sdk/c/a;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->a:Landroid/view/animation/Interpolator;

    .line 334
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3e8cccce    # 0.27500004f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 336
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->f(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v3, v5, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 337
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/zqhy/sdk/c/a$3;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 338
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 339
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 340
    iget-object v1, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v1}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 341
    iget-object v1, p0, Lcom/zqhy/sdk/c/a$3;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v1}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$3;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 342
    return-void
.end method
