.class public Lcom/zhy/http/okhttp/request/GetRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "GetRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/Object;
    .param p5, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/zhy/http/okhttp/request/OkHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    .line 16
    return-void
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/GetRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method
