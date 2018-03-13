.class Lcom/zqhy/sdk/c/a$5;
.super Ljava/lang/Object;
.source "GlobalScreenShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/c/a;->a(Landroid/content/Context;Ljava/lang/Runnable;IIZZ)V
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
    .line 200
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$5;->a:Lcom/zqhy/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$5;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->d(Lcom/zqhy/sdk/c/a;)Landroid/media/MediaActionSound;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 206
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$5;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$5;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->c(Lcom/zqhy/sdk/c/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    .line 208
    iget-object v0, p0, Lcom/zqhy/sdk/c/a$5;->a:Lcom/zqhy/sdk/c/a;

    invoke-static {v0}, Lcom/zqhy/sdk/c/a;->e(Lcom/zqhy/sdk/c/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 209
    return-void
.end method
