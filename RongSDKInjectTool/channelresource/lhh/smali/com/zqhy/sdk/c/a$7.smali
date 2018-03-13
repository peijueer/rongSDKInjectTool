.class Lcom/zqhy/sdk/c/a$7;
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
    .line 227
    iput-object p1, p0, Lcom/zqhy/sdk/c/a$7;->a:Lcom/zqhy/sdk/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 231
    const v0, 0x3e9aca6b

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0

    :cond_0
    const v0, 0x3f1aca6b

    sub-float v0, p1, v0

    const v1, 0x3eca6b2a

    div-float/2addr v0, v1

    goto :goto_0
.end method
