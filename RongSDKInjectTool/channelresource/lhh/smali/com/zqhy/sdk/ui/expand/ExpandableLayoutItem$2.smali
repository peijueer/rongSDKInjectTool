.class Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;
.super Landroid/view/animation/Animation;
.source "ExpandableLayoutItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->expand(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;->c:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;->a:Landroid/view/View;

    iput p3, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 116
    return-void

    .line 114
    :cond_0
    iget v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$2;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
