.class public Lcom/lzy/okhttpserver/task/ExecutorWithListener;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ExecutorWithListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;,
        Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;
    }
.end annotation


# instance fields
.field private allTaskEndListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private innerHandler:Landroid/os/Handler;

.field private taskEndListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method public addOnAllTaskEndListener(Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addOnTaskEndListener(Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 47
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;

    .line 49
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/lzy/okhttpserver/task/ExecutorWithListener$1;-><init>(Lcom/lzy/okhttpserver/task/ExecutorWithListener;Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->getActiveCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;

    .line 61
    iget-object v2, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->innerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/lzy/okhttpserver/task/ExecutorWithListener$2;

    invoke-direct {v3, p0, v0}, Lcom/lzy/okhttpserver/task/ExecutorWithListener$2;-><init>(Lcom/lzy/okhttpserver/task/ExecutorWithListener;Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method

.method public removeOnAllTaskEndListener(Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnAllTaskEndListener;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->allTaskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public removeOnTaskEndListener(Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->taskEndListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
