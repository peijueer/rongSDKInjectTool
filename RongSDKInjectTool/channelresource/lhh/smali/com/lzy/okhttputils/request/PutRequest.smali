.class public Lcom/lzy/okhttputils/request/PutRequest;
.super Lcom/lzy/okhttputils/request/BaseBodyRequest;
.source "PutRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/request/BaseBodyRequest",
        "<",
        "Lcom/lzy/okhttputils/request/PutRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/request/BaseBodyRequest;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 4

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/PutRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/PutRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/HttpUtils;->appendHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/request/PutRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/request/PutRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
