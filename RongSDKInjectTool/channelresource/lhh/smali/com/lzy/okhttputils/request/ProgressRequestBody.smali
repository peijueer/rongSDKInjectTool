.class public Lcom/lzy/okhttputils/request/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "ProgressRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;,
        Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field protected countingSink:Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

.field protected delegate:Lokhttp3/RequestBody;

.field protected listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    .line 27
    return-void
.end method

.method public constructor <init>(Lokhttp3/RequestBody;Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    .line 31
    iput-object p2, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    .line 32
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 51
    :goto_0
    return-wide v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 51
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->listener:Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;

    .line 36
    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;-><init>(Lcom/lzy/okhttputils/request/ProgressRequestBody;Lokio/Sink;)V

    iput-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->countingSink:Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

    .line 59
    iget-object v0, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->countingSink:Lcom/lzy/okhttputils/request/ProgressRequestBody$CountingSink;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/lzy/okhttputils/request/ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v1, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 61
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 62
    return-void
.end method
