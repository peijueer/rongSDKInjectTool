.class public final Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;
.super Lokio/ForwardingSink;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/http/okhttp/request/CountingRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CountingSink"
.end annotation


# instance fields
.field private bytesWritten:J

.field final synthetic this$0:Lcom/zhy/http/okhttp/request/CountingRequestBody;


# direct methods
.method public constructor <init>(Lcom/zhy/http/okhttp/request/CountingRequestBody;Lokio/Sink;)V
    .locals 2
    .param p2, "delegate"    # Lokio/Sink;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;->this$0:Lcom/zhy/http/okhttp/request/CountingRequestBody;

    .line 73
    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;->bytesWritten:J

    .line 74
    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 81
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;->bytesWritten:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;->bytesWritten:J

    .line 82
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;->this$0:Lcom/zhy/http/okhttp/request/CountingRequestBody;

    iget-object v0, v0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->listener:Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;

    iget-wide v2, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;->bytesWritten:J

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;->this$0:Lcom/zhy/http/okhttp/request/CountingRequestBody;

    invoke-virtual {v1}, Lcom/zhy/http/okhttp/request/CountingRequestBody;->contentLength()J

    move-result-wide v4

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;->onRequestProgress(JJ)V

    .line 83
    return-void
.end method
