.class Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;


# direct methods
.method constructor <init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;)V
    .locals 1

    .prologue
    .line 470
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    invoke-virtual {p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 473
    :try_start_0
    iget-object v0, p1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 474
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 478
    return-void

    .line 476
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method private nextNode(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;)",
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;"
        }
    .end annotation

    .prologue
    .line 486
    :goto_0
    iget-object v0, p1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 487
    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 488
    :cond_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 490
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0

    .line 497
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 499
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->nextNode(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 500
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v1

    .line 500
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->current:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 508
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->lastRet:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 513
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    iget-object v1, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    :goto_0
    if-eqz v0, :cond_1

    .line 514
    if-ne v0, v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-virtual {v2, v0, v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->unlink(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 522
    return-void

    .line 513
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;->this$0:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method
