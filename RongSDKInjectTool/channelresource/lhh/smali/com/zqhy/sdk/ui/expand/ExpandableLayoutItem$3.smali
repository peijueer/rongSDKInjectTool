.class Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;
.super Landroid/view/animation/Animation;
.source "ExpandableLayoutItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->collapse(Landroid/view/View;)V
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
    .line 133
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->c:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->a:Landroid/view/View;

    iput p3, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->c:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->access$102(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->b:I

    iget v2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 141
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$3;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
