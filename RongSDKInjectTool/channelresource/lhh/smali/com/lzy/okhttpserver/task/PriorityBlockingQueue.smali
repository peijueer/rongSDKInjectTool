.class public Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;,
        Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;-><init>(I)V

    .line 157
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 160
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 161
    :cond_0
    iput p1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    .line 162
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;-><init>(I)V

    .line 167
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 168
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 170
    const/4 v0, 0x0

    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 172
    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 173
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Queue full"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    new-instance v4, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v4, p0, v3}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    goto :goto_0

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    return-void
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 131
    iget-object v1, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 132
    iput-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 133
    iput-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 134
    invoke-virtual {v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 136
    return-object v0
.end method

.method private _enqueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 110
    :goto_0
    iget-object v2, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 112
    invoke-virtual {v2}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getPriority()Lcom/lzy/okhttpserver/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzy/okhttpserver/task/Priority;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getPriority()Lcom/lzy/okhttpserver/task/Priority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lzy/okhttpserver/task/Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 113
    iput-object p1, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 114
    iput-object v2, p1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 115
    const/4 v0, 0x1

    .line 121
    :goto_1
    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object p1, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 124
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private declared-synchronized opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 95
    monitor-enter p0

    if-nez p1, :cond_0

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->_dequeue()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 99
    :goto_0
    monitor-exit p0

    return-object v0

    .line 98
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->_enqueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 550
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 551
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 555
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 556
    if-nez v0, :cond_0

    .line 559
    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private signalNotFull()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 86
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 530
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 533
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    :goto_0
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 533
    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    goto :goto_0

    .line 537
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 541
    return-void

    .line 539
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    :goto_0
    iget-object v1, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-eqz v1, :cond_0

    .line 409
    iput-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 410
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    move-object v0, v1

    .line 408
    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 414
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    .line 418
    return-void

    .line 416
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 362
    if-nez p1, :cond_0

    .line 369
    :goto_0
    return v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v1, v1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    :goto_1
    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 369
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    goto :goto_0

    .line 365
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 421
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 425
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 426
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 427
    :cond_1
    if-gtz p2, :cond_2

    .line 456
    :goto_0
    return v1

    .line 429
    :cond_2
    iget-object v6, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 430
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 432
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 434
    iget-object v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v4, v3

    move v3, v1

    .line 437
    :goto_1
    if-ge v3, v2, :cond_3

    .line 438
    :try_start_1
    iget-object v5, v4, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 439
    invoke-virtual {v5}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 440
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 441
    iput-object v4, v4, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    .line 444
    goto :goto_1

    .line 448
    :cond_3
    if-lez v3, :cond_9

    .line 450
    :try_start_2
    iput-object v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 451
    iget-object v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v3

    iget v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v3, v4, :cond_5

    .line 455
    :goto_2
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 456
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v0, v1

    .line 451
    goto :goto_2

    .line 448
    :catchall_0
    move-exception v2

    if-lez v3, :cond_8

    .line 450
    :try_start_3
    iput-object v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 451
    iget-object v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v3

    iget v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v3, v4, :cond_7

    :goto_3
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 455
    :catchall_1
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_4
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 456
    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotFull()V

    :cond_6
    throw v0

    :cond_7
    move v0, v1

    .line 451
    goto :goto_3

    .line 455
    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method fullyLock()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 144
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 152
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;

    invoke-direct {v0, p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Itr;-><init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 239
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v3, :cond_1

    .line 254
    :goto_0
    return v1

    .line 240
    :cond_1
    const/4 v0, -0x1

    .line 241
    new-instance v3, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v3, p0, p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 242
    iget-object v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 243
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_2

    .line 246
    invoke-direct {p0, v3}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 248
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    .line 254
    :cond_3
    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4
    move v0, v1

    .line 254
    goto :goto_1
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 216
    :cond_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 218
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 219
    iget-object v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 220
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 222
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_2

    .line 223
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    .line 230
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 233
    :goto_1
    return v0

    .line 224
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    goto :goto_0

    .line 226
    :cond_2
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 228
    add-int/lit8 v1, v0, 0x1

    iget v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    .line 233
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 230
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 320
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_0

    .line 328
    :goto_0
    return-object v0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 322
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v2, v2, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-nez v2, :cond_1

    .line 328
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 326
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 328
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 301
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v1

    .line 303
    :cond_1
    const/4 v0, -0x1

    .line 304
    iget-object v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 305
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 307
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_2

    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v1

    .line 309
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 310
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 315
    iget v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotFull()V

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 278
    .line 280
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 281
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 282
    iget-object v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 283
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 285
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 286
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 293
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 296
    :cond_0
    :goto_1
    return-object v0

    .line 287
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    goto :goto_0

    .line 289
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v0

    .line 290
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    .line 291
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 295
    iget v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotFull()V

    goto :goto_1

    .line 293
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 192
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 196
    :cond_0
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;-><init>(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 198
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 201
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v3, v4, :cond_1

    .line 202
    iget-object v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 204
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 206
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotEmpty()V

    .line 211
    :cond_3
    return-void
.end method

.method public remainingCapacity()I
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 346
    if-nez p1, :cond_0

    .line 357
    :goto_0
    return v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 349
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v1, v2, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    :goto_1
    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v1}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->unlink(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    const/4 v0, 0x1

    .line 357
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    goto :goto_0

    .line 349
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 259
    .line 260
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 261
    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 262
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 264
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 267
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->opQueue(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 269
    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    iget v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->signalNotFull()V

    .line 274
    :cond_2
    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 377
    new-array v3, v0, [Ljava/lang/Object;

    .line 378
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    :goto_0
    if-eqz v0, :cond_0

    .line 380
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 379
    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyLock()V

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 392
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 395
    :cond_0
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    :goto_0
    if-eqz v0, :cond_1

    .line 397
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    .line 396
    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    move v1, v2

    goto :goto_0

    .line 398
    :cond_1
    array-length v0, p1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_2
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method unlink(Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;",
            "Lcom/lzy/okhttpserver/task/PriorityBlockingQueue",
            "<TE;>.Node<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->setValue(Ljava/lang/Object;)V

    .line 340
    iget-object v0, p1, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    iput-object v0, p2, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;->next:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 341
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->last:Lcom/lzy/okhttpserver/task/PriorityBlockingQueue$Node;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 343
    :cond_1
    return-void
.end method
