.class Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$4;
.super Ljava/lang/Object;
.source "ExpandableLayoutItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->show()V
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
    .line 186
    iput-object p1, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$4;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem$4;->a:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;->access$202(Lcom/zqhy/sdk/ui/expand/ExpandableLayoutItem;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 190
    return-void
.end method
