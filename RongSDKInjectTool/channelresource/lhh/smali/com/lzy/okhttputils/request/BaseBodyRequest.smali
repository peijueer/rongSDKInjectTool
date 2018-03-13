.class public abstract Lcom/lzy/okhttputils/request/BaseBodyRequest;
.super Lcom/lzy/okhttputils/request/BaseRequest;
.source "BaseBodyRequest.java"

# interfaces
.implements Lcom/lzy/okhttputils/request/HasBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/lzy/okhttputils/request/BaseBodyRequest;",
        ">",
        "Lcom/lzy/okhttputils/request/BaseRequest",
        "<TR;>;",
        "Lcom/lzy/okhttputils/request/HasBody",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected bs:[B

.field protected json:Ljava/lang/String;

.field protected mediaType:Lokhttp3/MediaType;

.field protected requestBody:Lokhttp3/RequestBody;

.field protected string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/request/BaseRequest;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->putFileParams(Ljava/lang/String;Ljava/util/List;)V

    .line 54
    return-object p0
.end method

.method public bridge synthetic addFileParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->addFileParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method public addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->putFileWrapperParams(Ljava/lang/String;Ljava/util/List;)V

    .line 61
    return-object p0
.end method

.method public bridge synthetic addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->addFileWrapperParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method protected generateRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->requestBody:Lokhttp3/RequestBody;

    .line 111
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->string:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->string:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->json:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->json:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->bs:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->bs:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/HttpUtils;->generateMultipartRequestBody(Lcom/lzy/okhttputils/model/HttpParams;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;)V

    .line 47
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 68
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)V

    .line 75
    return-object p0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->params(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lokhttp3/MediaType;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method public requestBody(Lokhttp3/RequestBody;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 0
    .param p1    # Lokhttp3/RequestBody;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->requestBody:Lokhttp3/RequestBody;

    .line 40
    return-object p0
.end method

.method public bridge synthetic requestBody(Lokhttp3/RequestBody;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lokhttp3/RequestBody;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->requestBody(Lokhttp3/RequestBody;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method public upBytes([B)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TR;"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->bs:[B

    .line 101
    sget-object v0, Lcom/lzy/okhttputils/model/HttpParams;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 102
    return-object p0
.end method

.method public bridge synthetic upBytes([B)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->upBytes([B)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method public upJson(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->json:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/lzy/okhttputils/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 93
    return-object p0
.end method

.method public bridge synthetic upJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method

.method public upString(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->string:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/lzy/okhttputils/model/HttpParams;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseBodyRequest;->mediaType:Lokhttp3/MediaType;

    .line 84
    return-object p0
.end method

.method public bridge synthetic upString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/request/BaseBodyRequest;->upString(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    return-object v0
.end method
