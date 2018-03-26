.class Lcom/lzy/okhttpserver/download/DownloadManager$1;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttpserver/download/DownloadManager;->restartTask(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttpserver/download/DownloadManager;

.field final synthetic val$downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/lzy/okhttpserver/download/DownloadManager;Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->this$0:Lcom/lzy/okhttpserver/download/DownloadManager;

    iput-object p2, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->val$downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskEnd(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->val$downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTask()Lcom/lzy/okhttpserver/download/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->getRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->this$0:Lcom/lzy/okhttpserver/download/DownloadManager;

    # getter for: Lcom/lzy/okhttpserver/download/DownloadManager;->threadPool:Lcom/lzy/okhttpserver/download/DownloadThreadPool;
    invoke-static {v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->access$000(Lcom/lzy/okhttpserver/download/DownloadManager;)Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->removeOnTaskEndListener(Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;)V

    .line 204
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->this$0:Lcom/lzy/okhttpserver/download/DownloadManager;

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->val$downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->val$downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->val$downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getRequest()Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/lzy/okhttpserver/download/DownloadManager$1;->val$downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getListener()Lcom/lzy/okhttpserver/listener/DownloadListener;

    move-result-object v4

    const/4 v5, 0x1

    # invokes: Lcom/lzy/okhttpserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;Z)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttpserver/download/DownloadManager;->access$100(Lcom/lzy/okhttpserver/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;Z)V

    .line 206
    :cond_0
    return-void
.end method
