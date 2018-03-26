.class final Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressRandomAccessFile"
.end annotation


# instance fields
.field private curDownloadLength:J

.field private lastDownloadLength:J

.field private lastRefreshUiTime:J

.field final synthetic this$0:Lcom/lzy/okhttpserver/download/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttpserver/download/DownloadTask;Ljava/io/File;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 240
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    .line 241
    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    iput-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 237
    iput-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    .line 242
    iput-wide p4, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    .line 244
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 248
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 251
    iget-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    int-to-long v2, p3

    add-long/2addr v2, v0

    .line 252
    iget-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    int-to-long v4, p3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    .line 253
    iput-wide v2, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->lastDownloadLength:J

    .line 254
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    # getter for: Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;
    invoke-static {v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->access$000(Lcom/lzy/okhttpserver/download/DownloadTask;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    # getter for: Lcom/lzy/okhttpserver/download/DownloadTask;->mPreviousTime:J
    invoke-static {v4}, Lcom/lzy/okhttpserver/download/DownloadTask;->access$100(Lcom/lzy/okhttpserver/download/DownloadTask;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 258
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 259
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 261
    :cond_0
    iget-wide v4, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->curDownloadLength:J

    div-long v0, v4, v0

    .line 262
    iget-object v4, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    # getter for: Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;
    invoke-static {v4}, Lcom/lzy/okhttpserver/download/DownloadTask;->access$000(Lcom/lzy/okhttpserver/download/DownloadTask;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 265
    long-to-float v0, v2

    mul-float/2addr v0, v8

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    # getter for: Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;
    invoke-static {v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->access$000(Lcom/lzy/okhttpserver/download/DownloadTask;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 266
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    # getter for: Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;
    invoke-static {v1}, Lcom/lzy/okhttpserver/download/DownloadTask;->access$000(Lcom/lzy/okhttpserver/download/DownloadTask;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setProgress(F)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 268
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    # getter for: Lcom/lzy/okhttpserver/download/DownloadTask;->mDownloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;
    invoke-static {v5}, Lcom/lzy/okhttpserver/download/DownloadTask;->access$000(Lcom/lzy/okhttpserver/download/DownloadTask;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    iget-wide v4, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->this$0:Lcom/lzy/okhttpserver/download/DownloadTask;

    # invokes: Lcom/lzy/okhttpserver/download/DownloadTask;->postMessage(Ljava/lang/String;Ljava/lang/Exception;)V
    invoke-static {v0, v9, v9}, Lcom/lzy/okhttpserver/download/DownloadTask;->access$200(Lcom/lzy/okhttpserver/download/DownloadTask;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadTask$ProgressRandomAccessFile;->lastRefreshUiTime:J

    .line 275
    :cond_2
    return-void
.end method
