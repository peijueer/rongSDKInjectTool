.class public Lcom/lzy/okhttpserver/upload/UploadTask;
.super Lcom/lzy/okhttpserver/task/PriorityAsyncTask;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okhttpserver/task/PriorityAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/lzy/okhttpserver/upload/UploadInfo;",
        "Lcom/lzy/okhttpserver/upload/UploadInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

.field private mUploadUIHandler:Lcom/lzy/okhttpserver/upload/UploadUIHandler;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttpserver/upload/UploadInfo;Lcom/lzy/okhttpserver/listener/UploadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttpserver/upload/UploadInfo;",
            "Lcom/lzy/okhttpserver/listener/UploadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    .line 30
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v0, p2}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setListener(Lcom/lzy/okhttpserver/listener/UploadListener;)V

    .line 31
    invoke-static {}, Lcom/lzy/okhttpserver/upload/UploadManager;->getInstance()Lcom/lzy/okhttpserver/upload/UploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/upload/UploadManager;->getHandler()Lcom/lzy/okhttpserver/upload/UploadUIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadUIHandler:Lcom/lzy/okhttpserver/upload/UploadUIHandler;

    .line 33
    invoke-static {}, Lcom/lzy/okhttpserver/upload/UploadManager;->getInstance()Lcom/lzy/okhttpserver/upload/UploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/upload/UploadManager;->getThreadPool()Lcom/lzy/okhttpserver/upload/UploadThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/upload/UploadThreadPool;->getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okhttpserver/upload/UploadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okhttpserver/upload/UploadTask;)Lcom/lzy/okhttpserver/upload/UploadInfo;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lzy/okhttpserver/upload/UploadTask;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/lzy/okhttpserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    iput-object v1, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->uploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    .line 128
    iput-object p2, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 129
    iput-object p3, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 130
    iput-object p1, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->data:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadUIHandler:Lcom/lzy/okhttpserver/upload/UploadUIHandler;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/upload/UploadUIHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 132
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadUIHandler:Lcom/lzy/okhttpserver/upload/UploadUIHandler;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/upload/UploadUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/lzy/okhttpserver/upload/UploadInfo;
    .locals 8

    .prologue
    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/upload/UploadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    .line 87
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v0, v6, v7}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 53
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 54
    invoke-direct {p0, v4, v4, v4}, Lcom/lzy/okhttpserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/upload/UploadInfo;->getRequest()Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    new-instance v1, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;

    invoke-direct {v1, p0}, Lcom/lzy/okhttpserver/upload/UploadTask$MergeListener;-><init>(Lcom/lzy/okhttpserver/upload/UploadTask;)V

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->setCallback(Lcom/lzy/okhttputils/callback/AbsCallback;)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :try_start_1
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/upload/UploadInfo;->getListener()Lcom/lzy/okhttpserver/listener/UploadListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okhttpserver/listener/UploadListener;->parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 73
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 74
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lzy/okhttpserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v1, v6, v7}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 63
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v1, v5}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 64
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {p0, v4, v1, v0}, Lcom/lzy/okhttpserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 65
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v1, v6, v7}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 79
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v1, v5}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 80
    const-string v1, "\u89e3\u6790\u6570\u636e\u5bf9\u8c61\u51fa\u9519"

    invoke-direct {p0, v4, v1, v0}, Lcom/lzy/okhttpserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 81
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v0, v6, v7}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 85
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v0, v5}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 86
    const-string v0, "\u6570\u636e\u8fd4\u56de\u5931\u8d25"

    invoke-direct {p0, v4, v0, v4}, Lcom/lzy/okhttpserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 87
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/upload/UploadTask;->doInBackground([Ljava/lang/Void;)Lcom/lzy/okhttpserver/upload/UploadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/upload/UploadInfo;->getListener()Lcom/lzy/okhttpserver/listener/UploadListener;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/listener/UploadListener;->onAdd(Lcom/lzy/okhttpserver/upload/UploadInfo;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setNetworkSpeed(J)V

    .line 44
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadTask;->mUploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 45
    invoke-direct {p0, v4, v4, v4}, Lcom/lzy/okhttpserver/upload/UploadTask;->postMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    return-void
.end method
