.class public Lcom/zhy/http/okhttp/builder/GetBuilder;
.super Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.source "GetBuilder.java"

# interfaces
.implements Lcom/zhy/http/okhttp/builder/HasParamsable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder",
        "<",
        "Lcom/zhy/http/okhttp/builder/GetBuilder;",
        ">;",
        "Lcom/zhy/http/okhttp/builder/HasParamsable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/GetBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object p0
.end method

.method public bridge synthetic addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/builder/GetBuilder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 35
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 36
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 37
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 38
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 43
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 6

    .prologue
    .line 21
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->url:Ljava/lang/String;

    .line 26
    :cond_0
    new-instance v0, Lcom/zhy/http/okhttp/request/GetRequest;

    iget-object v1, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    iget-object v4, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->headers:Ljava/util/Map;

    iget v5, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->id:I

    invoke-direct/range {v0 .. v5}, Lcom/zhy/http/okhttp/request/GetRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/request/GetRequest;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/GetBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zhy/http/okhttp/builder/GetBuilder;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    .line 51
    return-object p0
.end method

.method public bridge synthetic params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    return-object v0
.end method
