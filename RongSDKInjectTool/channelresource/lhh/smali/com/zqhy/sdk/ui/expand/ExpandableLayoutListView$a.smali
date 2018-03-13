.class public Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;
.super Ljava/lang/Object;
.source "ExpandableLayoutListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->b:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    .line 102
    iget v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->access$000(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-class v2, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-static {v2}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->access$100(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-virtual {v3}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    .line 107
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->hideNow()V

    .line 103
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->getCloseByUser()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-static {v2}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->access$100(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-virtual {v3}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->showNow()V

    goto :goto_1

    .line 114
    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 97
    iput p2, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;->b:I

    .line 98
    return-void
.end method
