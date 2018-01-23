.class public Lcom/zhy/http/okhttp/log/LoggerInterceptor;
.super Ljava/lang/Object;
.source "LoggerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final TAG:Ljava/lang/String; = "OkHttpUtils"


# instance fields
.field private showResponse:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zhy/http/okhttp/log/LoggerInterceptor;-><init>(Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "showResponse"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string p1, "OkHttpUtils"

    .line 32
    :cond_0
    iput-boolean p2, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->showResponse:Z

    .line 33
    iput-object p1, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private bodyToString(Lokhttp3/Request;)Ljava/lang/String;
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 157
    .local v1, "copy":Lokhttp3/Request;
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 158
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {v1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v3, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 159
    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 162
    .end local v0    # "buffer":Lokio/Buffer;
    .end local v1    # "copy":Lokhttp3/Request;
    :goto_0
    return-object v3

    .line 160
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "something error when show requestBody."

    goto :goto_0
.end method

.method private isText(Lokhttp3/MediaType;)Z
    .locals 3
    .param p1, "mediaType"    # Lokhttp3/MediaType;

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webviewhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logForRequest(Lokhttp3/Request;)V
    .locals 7
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 104
    .local v0, "headers":Lokhttp3/Headers;
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v5, "========request\'log======="

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "method : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headers : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    .line 112
    .local v2, "requestBody":Lokhttp3/RequestBody;
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    .line 115
    .local v1, "mediaType":Lokhttp3/MediaType;
    if-eqz v1, :cond_1

    .line 117
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestBody\'s contentType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0, v1}, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestBody\'s content : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->bodyToString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v1    # "mediaType":Lokhttp3/MediaType;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v5, "========request\'log=======end"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "headers":Lokhttp3/Headers;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    .end local v3    # "url":Ljava/lang/String;
    :goto_1
    return-void

    .line 123
    .restart local v0    # "headers":Lokhttp3/Headers;
    .restart local v1    # "mediaType":Lokhttp3/MediaType;
    .restart local v2    # "requestBody":Lokhttp3/RequestBody;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v5, "requestBody\'s content :  maybe [file part] , too large too print , ignored!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v0    # "headers":Lokhttp3/Headers;
    .end local v1    # "mediaType":Lokhttp3/MediaType;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private logForResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 8
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 55
    :try_start_0
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "========response\'log======="

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    .line 57
    .local v1, "builder":Lokhttp3/Response$Builder;
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 58
    .local v2, "clone":Lokhttp3/Response;
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "code : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protocol : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-boolean v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->showResponse:Z

    if-eqz v5, :cond_2

    .line 66
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 67
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    .line 70
    .local v3, "mediaType":Lokhttp3/MediaType;
    if-eqz v3, :cond_2

    .line 72
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseBody\'s contentType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0, v3}, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "resp":Ljava/lang/String;
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseBody\'s content : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v3, v4}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 94
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v1    # "builder":Lokhttp3/Response$Builder;
    .end local v2    # "clone":Lokhttp3/Response;
    .end local v3    # "mediaType":Lokhttp3/MediaType;
    .end local v4    # "resp":Ljava/lang/String;
    .end local p1    # "response":Lokhttp3/Response;
    :goto_0
    return-object p1

    .line 82
    .restart local v0    # "body":Lokhttp3/ResponseBody;
    .restart local v1    # "builder":Lokhttp3/Response$Builder;
    .restart local v2    # "clone":Lokhttp3/Response;
    .restart local v3    # "mediaType":Lokhttp3/MediaType;
    .restart local p1    # "response":Lokhttp3/Response;
    :cond_1
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "responseBody\'s content :  maybe [file part] , too large too print , ignored!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "body":Lokhttp3/ResponseBody;
    .end local v3    # "mediaType":Lokhttp3/MediaType;
    :cond_2
    iget-object v5, p0, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v6, "========response\'log=======end"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "builder":Lokhttp3/Response$Builder;
    .end local v2    # "clone":Lokhttp3/Response;
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 45
    .local v0, "request":Lokhttp3/Request;
    invoke-direct {p0, v0}, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->logForRequest(Lokhttp3/Request;)V

    .line 46
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 47
    .local v1, "response":Lokhttp3/Response;
    invoke-direct {p0, v1}, Lcom/zhy/http/okhttp/log/LoggerInterceptor;->logForResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
