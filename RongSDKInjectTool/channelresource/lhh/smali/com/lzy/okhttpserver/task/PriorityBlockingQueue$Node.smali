.class Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

.field private value:Lcom/lzy/okhttpserver/task/PriorityObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttpserver/task/PriorityObject",
            "<*>;"
        }
    .end annotation
.end field

.field private valueAsT:Z


# direct methods
.method constructor <init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 569
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    .line 570
    invoke-virtual {p0, p2}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 571
    return-void
.end method


# virtual methods
.method public getPriority()Lcom/lzy/okhttpserver/task/Priority;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okhttpserver/task/PriorityObject;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityObject;->priority:Lcom/lzy/okhttpserver/task/Priority;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okhttpserver/task/PriorityObject;

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x0

    .line 584
    :goto_0
    return-object v0

    .line 581
    :cond_0
    iget-boolean v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okhttpserver/task/PriorityObject;

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okhttpserver/task/PriorityObject;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityObject;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 589
    if-nez p1, :cond_0

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okhttpserver/task/PriorityObject;

    .line 597
    :goto_0
    return-void

    .line 591
    :cond_0
    instance-of v0, p1, Lcom/lzy/okhttpserver/task/PriorityObject;

    if-eqz v0, :cond_1

    .line 592
    check-cast p1, Lcom/lzy/okhttpserver/task/PriorityObject;

    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okhttpserver/task/PriorityObject;

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->valueAsT:Z

    goto :goto_0

    .line 595
    :cond_1
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityObject;

    sget-object v1, Lcom/lzy/okhttpserver/task/Priority;->DEFAULT:Lcom/lzy/okhttpserver/task/Priority;

    invoke-direct {v0, v1, p1}, Lcom/lzy/okhttpserver/task/PriorityObject;-><init>(Lcom/lzy/okhttpserver/task/Priority;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->value:Lcom/lzy/okhttpserver/task/PriorityObject;

    goto :goto_0
.end method
