.class public final Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttputils/request/ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:J

.field private contentLength:J

.field private lastRefreshUiTime:J

.field private lastWriteBytes:J

.field final synthetic this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/lzy/okhttputils/request/ProgressRequestBody;Lokio/Sink;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 71
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    .line 72
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 66
    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 67
    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    .line 73
    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 77
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 78
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/ProgressRequestBody;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    .line 79
    :cond_0
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v4, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 85
    :cond_1
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 86
    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 87
    :cond_2
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v4, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    sub-long/2addr v2, v4

    .line 88
    div-long v6, v2, v0

    .line 89
    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->this$0:Lcom/lzy/okhttputils/request/ProgressRequestBody;

    iget-object v1, v0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iget-wide v4, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->contentLength:J

    invoke-interface/range {v1 .. v7}, Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;->onRequestProgress(JJJ)V

    .line 91
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastRefreshUiTime:J

    .line 92
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->bytesWritten:J

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;->lastWriteBytes:J

    .line 94
    :cond_4
    return-void
.end method
