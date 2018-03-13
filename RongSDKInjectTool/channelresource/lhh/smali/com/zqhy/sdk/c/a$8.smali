.class Lcom/zqhy/sdk/c/a$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/c/a;->a()Landroid/animation/ValueAnimator;
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
    .line 239
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->h(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->f(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 243
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->f(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 246
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 247
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v1}, Lcom/zqhy/sdk/c/a;->g(Lcom/zqhy/sdk/c/a;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 248
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v1}, Lcom/zqhy/sdk/c/a;->g(Lcom/zqhy/sdk/c/a;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 249
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->h(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 251
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$8;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->h(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    return-void
.end method
