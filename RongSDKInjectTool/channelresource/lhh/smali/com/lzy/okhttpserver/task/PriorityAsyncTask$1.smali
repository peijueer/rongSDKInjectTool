.class Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;
.super Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttpserver/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;->this$0:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$WorkerRunnable;-><init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;->this$0:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    # getter for: Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->access$200(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 69
    iget-object v0, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;->this$0:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    iget-object v1, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;->this$0:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    iget-object v2, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->access$300(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
