.class Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask$1;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;

    .line 339
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 342
    :pswitch_0
    iget-object v1, v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->access$500(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v1, v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    iget-object v0, v0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
