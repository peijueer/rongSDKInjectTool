.class Lcom/zqhy/sdk/c/a$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenShot.java"


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
    .line 280
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$10;->a:Lcom/zqhy/sdk/c/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 283
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$10;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->f(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$10;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$10;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 286
    return-void
.end method
