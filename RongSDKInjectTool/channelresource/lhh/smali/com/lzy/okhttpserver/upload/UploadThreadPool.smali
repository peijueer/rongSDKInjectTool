.class public Lcom/lzy/okhttpserver/upload/UploadThreadPool;
.super Ljava/lang/Object;
.source "UploadThreadPool.java"


# static fields
.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final MAX_IMUM_POOL_SIZE:I = 0x5

.field private static final UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private corePoolSize:I

.field private executor:Lcom/lzy/okhttpserver/task/ExecutorWithListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->corePoolSize:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->execute(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    return-void
.end method

.method public getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;
    .locals 11

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->executor:Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    if-nez v0, :cond_1

    .line 28
    const-class v10, Lcom/lzy/okhttpserver/upload/UploadThreadPool;

    monitor-enter v10

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->executor:Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    if-nez v0, :cond_0

    .line 30
    new-instance v1, Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    iget v2, p0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->corePoolSize:I

    const/4 v3, 0x5

    const-wide/16 v4, 0x1

    sget-object v6, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;

    invoke-direct {v7}, Lcom/lzy/okhttpserver/task/PriorityBlockingQueue;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Lcom/lzy/okhttpserver/task/ExecutorWithListener;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->executor:Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    .line 35
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->executor:Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->remove(Ljava/lang/Runnable;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 42
    if-gtz p1, :cond_1

    const/4 v1, 0x1

    .line 43
    :goto_0
    if-le v1, v0, :cond_0

    .line 44
    :goto_1
    iput v0, p0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->corePoolSize:I

    .line 45
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method
