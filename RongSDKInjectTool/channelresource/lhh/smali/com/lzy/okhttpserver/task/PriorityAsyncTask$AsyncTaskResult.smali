.class Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/lzy/okhttpserver/task/PriorityAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttpserver/task/PriorityAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    .line 362
    iput-object p2, p0, Lcom/lzy/okhttpserver/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 363
    return-void
.end method
