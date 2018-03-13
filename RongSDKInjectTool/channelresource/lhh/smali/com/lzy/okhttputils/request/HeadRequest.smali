.class public Lcom/lzy/okhttputils/request/HeadRequest;
.super Lcom/lzy/okhttputils/request/BaseRequest;
.source "HeadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/request/BaseRequest",
        "<",
        "Lcom/lzy/okhttputils/request/HeadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzy/okhttputils/request/HeadRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/HttpUtils;->appendHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/lzy/okhttputils/request/HeadRequest;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/HeadRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v2, v2, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/lzy/okhttputils/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okhttputils/request/HeadRequest;->url:Ljava/lang/String;

    .line 32
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/request/HeadRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/request/HeadRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method protected generateRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
