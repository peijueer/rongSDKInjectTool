.class Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;
.super Ljava/lang/Object;
.source "ExpandableLayoutItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 93
    iget-object v1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-virtual {v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-virtual {v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->hide()V

    .line 95
    iget-object v1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->access$002(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$1;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-virtual {v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->isOpened()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
