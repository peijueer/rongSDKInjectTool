.class Lcom/zqhy/sdk/c/a$6;
.super Ljava/lang/Object;
.source "GlobalScreenShot.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


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
    .line 217
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$6;->a:Lcom/zqhy/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .prologue
    const v2, 0x3f1aca6b

    .line 221
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_0

    .line 222
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-float v2, p1, v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
