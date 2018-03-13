.class public Lcom/lzy/okhttpserver/download/DownloadTask;
.super Lcom/lzy/okhttpserver/task/PriorityAsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttpserver/task/PriorityAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/lzy/okhttpserver/download/DownloadInfo;",
        "Lcom/lzy/okhttpserver/download/DownloadInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private isPause:Z

.field private isRestartTask:Z

.field private mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

.field private mDownloadUIHandler:Lcom/lzy/okhttpserver/download/DownloadUIHandler;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>(Lcom/lzy/okhttpserver/download/DownloadInfo;ZLcom/lzy/okhttpserver/listener/DownloadListener;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 42
    iput-boolean p2, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->isRestartTask:Z

    .line 43
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0, p3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setListener(Lcom/lzy/okhttpserver/listener/DownloadListener;)V

    .line 44
    invoke-static {}, Lcom/lzy/okhttpserver/download/DownloadManager;->getInstance()Lcom/lzy/okhttpserver/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->getHandler()Lcom/lzy/okhttpserver/download/DownloadUIHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadUIHandler:Lcom/lzy/okhttpserver/download/DownloadUIHandler;

    .line 46
    invoke-static {}, Lcom/lzy/okhttpserver/download/DownloadManager;->getInstance()Lcom/lzy/okhttpserver/download/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->getThreadPool()Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lzy/okhttpserver/task/PriorityAsyncTask;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okhttpserver/download/DownloadTask;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lzy/okhttpserver/download/DownloadTask;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mPreviousTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/lzy/okhttpserver/download/DownloadTask;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/16 v4, 0x2000

    const/4 v0, 0x0

    .line 211
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 231
    :goto_0
    return v0

    .line 213
    :cond_1
    new-array v2, v4, [B

    .line 214
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 218
    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x2000

    :try_start_0
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-eq v4, v1, :cond_2

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 219
    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    add-int/2addr v0, v4

    goto :goto_1

    .line 224
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 225
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 226
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    .line 224
    :try_start_2
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    .line 225
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 226
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 229
    :goto_2
    throw v0

    .line 227
    :catch_1
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private postMessage(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 199
    sget-object v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->update(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    .line 200
    new-instance v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    iput-object v1, v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;->downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 202
    iput-object p1, v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 203
    iput-object p2, v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 204
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadUIHandler:Lcom/lzy/okhttpserver/download/DownloadUIHandler;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadUIHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 205
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadUIHandler:Lcom/lzy/okhttpserver/download/DownloadUIHandler;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadUIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 12

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 195
    :goto_0
    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mPreviousTime:J

    .line 109
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 110
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v4

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getRequest()Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v0

    const-string v1, "RANGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 125
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-static {v6, v1}, Lcom/lzy/okhttputils/utils/HttpUtils;->getNetFileName(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetFolder()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTargetPath(Ljava/lang/String;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 138
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 139
    const-string v0, "\u65ad\u70b9\u6587\u4ef6\u5f02\u5e38\uff0c\u9700\u8981\u5220\u9664\u540e\u91cd\u65b0\u4e0b\u8f7d"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 120
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 121
    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {p0, v1, v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    goto/16 :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setProgress(F)V

    .line 144
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 145
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 147
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    goto/16 :goto_0

    .line 150
    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    :try_start_1
    new-instance v0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;

    const-string v3, "rw"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;-><init>(Lcom/lzy/okhttpserver/download/DownloadTask;Ljava/io/File;Ljava/lang/String;J)V

    .line 154
    invoke-virtual {v0, v4, v5}, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    .line 164
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1, v4, v5}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTotalLength(J)V

    .line 167
    :cond_5
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 170
    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->download(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 180
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: \u6682\u505c "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 183
    iget-boolean v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->isPause:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 185
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 195
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 158
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 159
    const-string v1, "\u6ca1\u6709\u627e\u5230\u5df2\u5b58\u5728\u7684\u65ad\u70b9\u6587\u4ef6"

    invoke-direct {p0, v1, v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 160
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    goto/16 :goto_0

    .line 171
    :catch_2
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 174
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 175
    const-string v1, "\u6587\u4ef6\u8bfb\u5199\u5f02\u5e38"

    invoke-direct {p0, v1, v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 176
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    goto/16 :goto_0

    .line 184
    :cond_7
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    goto :goto_1

    .line 186
    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v3, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 187
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 188
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 190
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 191
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 192
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 193
    const-string v0, "\u672a\u77e5\u539f\u56e0"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadTask;->doInBackground([Ljava/lang/Void;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadTask;->onPostExecute(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreExecute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getListener()Lcom/lzy/okhttpserver/listener/DownloadListener;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/listener/DownloadListener;->onAdd(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->isRestartTask:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/HttpUtils;->deleteFile(Ljava/lang/String;)Z

    .line 87
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setProgress(F)V

    .line 88
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 89
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTotalLength(J)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->isRestartTask:Z

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 94
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 95
    invoke-direct {p0, v4, v4}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 96
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 51
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 54
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 55
    invoke-direct {p0, v4, v4}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    :goto_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->cancel(Z)Z

    .line 60
    return-void

    .line 57
    :cond_0
    iput-boolean v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->isPause:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 64
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 67
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {v0, v4}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 68
    invoke-direct {p0, v5, v5}, Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    :goto_0
    invoke-super {p0, v4}, Lcom/lzy/okhttpserver/task/PriorityAsyncTask;->cancel(Z)Z

    .line 73
    return-void

    .line 70
    :cond_1
    iput-boolean v4, p0, Lcom/lzy/okhttpserver/download/DownloadTask;->isPause:Z

    goto :goto_0
.end method
