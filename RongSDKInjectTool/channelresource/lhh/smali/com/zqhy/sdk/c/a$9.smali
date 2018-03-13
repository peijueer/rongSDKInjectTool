.class Lcom/zqhy/sdk/c/a$9;
.super Ljava/lang/Object;
.source "GlobalScreenShot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/c/a;->a()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Interpolator;

.field final synthetic b:Landroid/view/animation/Interpolator;

.field final synthetic c:Lcom/zqhy/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/c/a;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$9;->c:Lcom/zqhy/sdk/c/a;

    iput-object p2, p0, Lcom/zqhy/sdk/c/a$9;->a:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/zqhy/sdk/c/a$9;->b:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 263
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$9;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->g(Lcom/zqhy/sdk/c/a;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$9;->a:Landroid/view/animation/Interpolator;

    .line 264
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3e8ccccc    # 0.27499998f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 266
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$9;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->f(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/zqhy/sdk/c/a$9;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 267
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$9;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 268
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$9;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 269
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$9;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 270
    iget-object v1, p0, Lcom/zqhy/sdk/c/a$9;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v1}, Lcom/zqhy/sdk/c/a;->h(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$9;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 271
    return-void
.end method
