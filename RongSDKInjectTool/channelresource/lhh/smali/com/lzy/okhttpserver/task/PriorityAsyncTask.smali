.class public abstract Lcom/lzy/okhttpserver/task/PriorityAsyncTask;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;,
        Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;,
        Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mExecuteInvoked:Z

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/lzy/okhttpserver/task/Priority;

.field private runnableTask:Lcom/lzy/okhttpserver/task/PriorityRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;-><init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;)V

    sput-object v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->sHandler:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;

    .line 42
    new-instance v0, Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/DownloadThreadPool;-><init>()V

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;-><init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mWorker:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;

    .line 73
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$2;

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mWorker:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$2;-><init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 87
    return-void
.end method

.method static synthetic access$200(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/lzy/okhttpserver/task/Priority;->DEFAULT:Lcom/lzy/okhttpserver/task/Priority;

    invoke-static {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->execute(Ljava/lang/Runnable;Lcom/lzy/okhttpserver/task/Priority;)V

    .line 289
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Lcom/lzy/okhttpserver/task/Priority;)V
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/lzy/okhttpserver/task/PriorityRunnable;

    invoke-direct {v1, p1, p0}, Lcom/lzy/okhttpserver/task/PriorityRunnable;-><init>(Lcom/lzy/okhttpserver/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 97
    sget-object v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->sHandler:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;

    new-instance v1, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 99
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/lzy/okhttpserver/task/PriorityAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/lzy/okhttpserver/task/PriorityAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 253
    sget-object v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lzy/okhttpserver/task/PriorityAsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/lzy/okhttpserver/task/PriorityAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mExecuteInvoked:Z

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 270
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->onPreExecute()V

    .line 272
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mWorker:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 273
    new-instance v0, Lcom/lzy/okhttpserver/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->priority:Lcom/lzy/okhttpserver/task/Priority;

    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Lcom/lzy/okhttpserver/task/PriorityRunnable;-><init>(Lcom/lzy/okhttpserver/task/Priority;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->runnableTask:Lcom/lzy/okhttpserver/task/PriorityRunnable;

    .line 274
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->runnableTask:Lcom/lzy/okhttpserver/task/PriorityRunnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 276
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/lzy/okhttpserver/task/Priority;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->priority:Lcom/lzy/okhttpserver/task/Priority;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->runnableTask:Lcom/lzy/okhttpserver/task/PriorityRunnable;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->onCancelled()V

    .line 169
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 139
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 151
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    sget-object v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->sHandler:Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 319
    :cond_0
    return-void
.end method

.method public setPriority(Lcom/lzy/okhttpserver/task/Priority;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->priority:Lcom/lzy/okhttpserver/task/Priority;

    .line 52
    return-void
.end method
