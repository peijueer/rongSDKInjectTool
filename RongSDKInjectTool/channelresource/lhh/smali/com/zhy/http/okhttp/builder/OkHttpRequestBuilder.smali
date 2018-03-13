.class public abstract Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.super Ljava/lang/Object;
.source "OkHttpRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, "this":Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;, "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;, "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<TT;>;"
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->headers:Ljava/util/Map;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object p0
.end method

.method public abstract build()Lcom/zhy/http/okhttp/request/RequestCall;
.end method

.method public headers(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;, "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<TT;>;"
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->headers:Ljava/util/Map;

    .line 41
    return-object p0
.end method

.method public id(I)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;, "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<TT;>;"
    iput p1, p0, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->id:I

    .line 22
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;, "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->tag:Ljava/lang/Object;

    .line 35
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;, "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<TT;>;"
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;->url:Ljava/lang/String;

    .line 28
    return-object p0
.end method
