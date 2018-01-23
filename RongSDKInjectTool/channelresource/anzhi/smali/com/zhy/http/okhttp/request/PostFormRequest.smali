.class public Lcom/zhy/http/okhttp/request/PostFormRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "PostFormRequest.java"


# instance fields
.field private files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;I)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/Object;
    .param p6, "id"    # I
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
            "Ljava/util/List",
            "<",
            "Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/List;, "Ljava/util/List<Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/zhy/http/okhttp/request/OkHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    .line 31
    iput-object p5, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->files:Ljava/util/List;

    .line 32
    return-void
.end method

.method private addParams(Lokhttp3/FormBody$Builder;)V
    .locals 3
    .param p1, "builder"    # Lokhttp3/FormBody$Builder;

    .prologue
    .line 121
    iget-object v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->params:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->params:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 128
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private addParams(Lokhttp3/MultipartBody$Builder;)V
    .locals 6
    .param p1, "builder"    # Lokhttp3/MultipartBody$Builder;

    .prologue
    .line 109
    iget-object v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->params:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->params:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Content-Disposition"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "form-data; name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->params:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 117
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private guessMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v2

    .line 92
    .local v2, "fileNameMap":Ljava/net/FileNameMap;
    const/4 v0, 0x0

    .line 95
    .local v0, "contentTypeFor":Ljava/lang/String;
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    :goto_0
    if-nez v0, :cond_0

    .line 102
    const-string v0, "application/octet-stream"

    .line 104
    :cond_0
    return-object v0

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 7

    .prologue
    .line 37
    iget-object v5, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->files:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    :cond_0
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 40
    .local v0, "builder":Lokhttp3/FormBody$Builder;
    invoke-direct {p0, v0}, Lcom/zhy/http/okhttp/request/PostFormRequest;->addParams(Lokhttp3/FormBody$Builder;)V

    .line 41
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v3

    .line 55
    .end local v0    # "builder":Lokhttp3/FormBody$Builder;
    :goto_0
    return-object v3

    .line 45
    :cond_1
    new-instance v5, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v5}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v5, v6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 47
    .local v0, "builder":Lokhttp3/MultipartBody$Builder;
    invoke-direct {p0, v0}, Lcom/zhy/http/okhttp/request/PostFormRequest;->addParams(Lokhttp3/MultipartBody$Builder;)V

    .line 49
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->files:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 51
    iget-object v5, p0, Lcom/zhy/http/okhttp/request/PostFormRequest;->files:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;

    .line 52
    .local v2, "fileInput":Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;
    iget-object v5, v2, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;->filename:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/zhy/http/okhttp/request/PostFormRequest;->guessMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    iget-object v6, v2, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;->file:Ljava/io/File;

    invoke-static {v5, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 53
    .local v1, "fileBody":Lokhttp3/RequestBody;
    iget-object v5, v2, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;->key:Ljava/lang/String;

    iget-object v6, v2, Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;->filename:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 55
    .end local v1    # "fileBody":Lokhttp3/RequestBody;
    .end local v2    # "fileInput":Lcom/zhy/http/okhttp/builder/PostFormBuilder$FileInput;
    :cond_2
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v3

    goto :goto_0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;
    .locals 2
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .param p2, "callback"    # Lcom/zhy/http/okhttp/callback/Callback;

    .prologue
    .line 62
    if-nez p2, :cond_0

    .line 80
    .end local p1    # "requestBody":Lokhttp3/RequestBody;
    :goto_0
    return-object p1

    .line 63
    .restart local p1    # "requestBody":Lokhttp3/RequestBody;
    :cond_0
    new-instance v0, Lcom/zhy/http/okhttp/request/CountingRequestBody;

    new-instance v1, Lcom/zhy/http/okhttp/request/PostFormRequest$1;

    invoke-direct {v1, p0, p2}, Lcom/zhy/http/okhttp/request/PostFormRequest$1;-><init>(Lcom/zhy/http/okhttp/request/PostFormRequest;Lcom/zhy/http/okhttp/callback/Callback;)V

    invoke-direct {v0, p1, v1}, Lcom/zhy/http/okhttp/request/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;)V

    .local v0, "countingRequestBody":Lcom/zhy/http/okhttp/request/CountingRequestBody;
    move-object p1, v0

    .line 80
    goto :goto_0
.end method
