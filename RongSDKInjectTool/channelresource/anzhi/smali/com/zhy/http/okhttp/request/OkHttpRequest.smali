.class public abstract Lcom/zhy/http/okhttp/request/OkHttpRequest;
.super Ljava/lang/Object;
.source "OkHttpRequest.java"


# instance fields
.field protected builder:Lokhttp3/Request$Builder;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected id:I

.field protected params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 2
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
    .line 27
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->builder:Lokhttp3/Request$Builder;

    .line 28
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->url:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->tag:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->params:Ljava/util/Map;

    .line 31
    iput-object p4, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    .line 32
    iput p5, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->id:I

    .line 34
    if-nez p1, :cond_0

    .line 36
    const-string v0, "url can not be null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->initBuilder()V

    .line 40
    return-void
.end method

.method private initBuilder()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->builder:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 50
    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->appendHeaders()V

    .line 51
    return-void
.end method


# virtual methods
.method protected appendHeaders()V
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 80
    .local v0, "headerBuilder":Lokhttp3/Headers$Builder;
    iget-object v3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_1

    .line 86
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    goto :goto_0
.end method

.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/zhy/http/okhttp/request/RequestCall;

    invoke-direct {v0, p0}, Lcom/zhy/http/okhttp/request/RequestCall;-><init>(Lcom/zhy/http/okhttp/request/OkHttpRequest;)V

    return-object v0
.end method

.method protected abstract buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract buildRequestBody()Lokhttp3/RequestBody;
.end method

.method public generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;
    .locals 3
    .param p1, "callback"    # Lcom/zhy/http/okhttp/callback/Callback;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->buildRequestBody()Lokhttp3/RequestBody;

    move-result-object v1

    .line 71
    .local v1, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0, v1, p1}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 72
    .local v2, "wrappedRequestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0, v2}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    .line 73
    .local v0, "request":Lokhttp3/Request;
    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->id:I

    return v0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;
    .locals 0
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .param p2, "callback"    # Lcom/zhy/http/okhttp/callback/Callback;

    .prologue
    .line 57
    return-object p1
.end method
