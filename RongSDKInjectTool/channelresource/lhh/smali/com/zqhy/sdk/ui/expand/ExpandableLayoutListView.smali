.class public Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;
.super Landroid/widget/ListView;
.source "ExpandableLayoutListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;
    }
.end annotation


# instance fields
.field private isExpandOne:Z

.field private position:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->position:Ljava/lang/Integer;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->isExpandOne:Z

    .line 43
    new-instance v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)V

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->position:Ljava/lang/Integer;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->isExpandOne:Z

    .line 48
    new-instance v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)V

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->position:Ljava/lang/Integer;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->isExpandOne:Z

    .line 53
    new-instance v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;-><init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)V

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->isExpandOne:Z

    return v0
.end method

.method static synthetic access$100(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->position:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3

    .prologue
    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->position:Ljava/lang/Integer;

    .line 60
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->isExpandOne:Z

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    if-eq v1, v0, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-class v2, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->hide()V

    .line 61
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-class v1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    .line 73
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->hide()V

    .line 81
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    .line 77
    :cond_3
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->show()V

    goto :goto_1
.end method

.method public setExpandOne(Z)V
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->isExpandOne:Z

    .line 119
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2

    .prologue
    .line 86
    instance-of v0, p1, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView$a;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OnScrollListner must be an OnExpandableLayoutScrollListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 90
    return-void
.end method
