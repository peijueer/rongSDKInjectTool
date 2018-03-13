.class Lcom/zqhy/sdk/c/a$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/c/a;->a(Landroid/content/Context;Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zqhy/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/c/a;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$4;->c:Lcom/zqhy/sdk/c/a;

    iput-object p2, p0, Lcom/zqhy/sdk/c/a$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/zqhy/sdk/c/a$4;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$4;->c:Lcom/zqhy/sdk/c/a;

    iget-object v1, p0, Lcom/zqhy/sdk/c/a$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zqhy/sdk/c/a$4;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/c/a;->a(Lcom/zqhy/sdk/c/a;Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$4;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->b(Lcom/zqhy/sdk/c/a;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/c/a$4;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v1}, Lcom/zqhy/sdk/c/a;->a(Lcom/zqhy/sdk/c/a;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$4;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v0, v3}, Lcom/zqhy/sdk/c/a;->a(Lcom/zqhy/sdk/c/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 197
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$4;->c:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 198
    return-void
.end method
