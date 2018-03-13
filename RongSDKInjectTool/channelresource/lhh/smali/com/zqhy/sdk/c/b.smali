.class public Lcom/zqhy/sdk/c/b;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# direct methods
.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 15
    return-object v0
.end method
