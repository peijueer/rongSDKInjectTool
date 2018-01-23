.class public Lcom/zhy/http/okhttp/request/PostFileRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "PostFileRequest.java"


# static fields
.field private static MEDIA_TYPE_STREAM:Lokhttp3/MediaType;


# instance fields
.field private file:Ljava/io/File;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/request/PostFileRequest;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Lokhttp3/MediaType;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/Object;
    .param p5, "file"    # Ljava/io/File;
    .param p6, "mediaType"    # Lokhttp3/MediaType;
    .param p7, "id"    # I
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
            ">;",
            "Ljava/io/File;",
            "Lokhttp3/MediaType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/zhy/http/okhttp/request/OkHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    .line 27
    iput-object p5, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->file:Ljava/io/File;

    .line 28
    iput-object p6, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    .line 30
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 32
    const-string v0, "the file can not be null !"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    if-nez v0, :cond_1

    .line 36
    sget-object v0, Lcom/zhy/http/okhttp/request/PostFileRequest;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;
    .locals 2
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .param p2, "callback"    # Lcom/zhy/http/okhttp/callback/Callback;

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 67
    .end local p1    # "requestBody":Lokhttp3/RequestBody;
    :goto_0
    return-object p1

    .line 50
    .restart local p1    # "requestBody":Lokhttp3/RequestBody;
    :cond_0
    new-instance v0, Lcom/zhy/http/okhttp/request/CountingRequestBody;

    new-instance v1, Lcom/zhy/http/okhttp/request/PostFileRequest$1;

    invoke-direct {v1, p0, p2}, Lcom/zhy/http/okhttp/request/PostFileRequest$1;-><init>(Lcom/zhy/http/okhttp/request/PostFileRequest;Lcom/zhy/http/okhttp/callback/Callback;)V

    invoke-direct {v0, p1, v1}, Lcom/zhy/http/okhttp/request/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;)V

    .local v0, "countingRequestBody":Lcom/zhy/http/okhttp/request/CountingRequestBody;
    move-object p1, v0

    .line 67
    goto :goto_0
.end method
