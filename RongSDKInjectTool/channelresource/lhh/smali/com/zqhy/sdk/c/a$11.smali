.class Lcom/zqhy/sdk/c/a$11;
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
.field final synthetic a:Lcom/zqhy/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/c/a;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$11;->a:Lcom/zqhy/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 295
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 296
    const v1, 0x3f39999a    # 0.725f

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$11;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->g(Lcom/zqhy/sdk/c/a;)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3e000000    # 0.125f

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 298
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$11;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->f(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v3, v5, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 299
    iget-object v2, p0, Lcom/zqhy/sdk/c/a$11;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v2}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v0, v5, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 300
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$11;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 301
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$11;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 302
    return-void
.end method
