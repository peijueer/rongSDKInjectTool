.class public Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;
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

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;-><init>(Ljava/lang/String;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string p1, "OkHttpUtils"

    .line 32
    :cond_0
    iput-boolean p2, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->showResponse:Z

    .line 33
    iput-object p1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private bodyToString(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 130
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 131
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 132
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v0, "something error when show requestBody."

    goto :goto_0
.end method

.method private isText(Lokhttp3/MediaType;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "webviewhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logForRequest(Lokhttp3/Request;)V
    .locals 5

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v3, "---------------------request log start---------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v2, "headers : \n"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->bodyToString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "---------------------request log end-----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_1
    return-void

    .line 65
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "content :  maybe [file part] , too large too print , ignored!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_2
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "---------------------request log end-----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v2, "---------------------request log end-----------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private logForResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 5

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "---------------------response log start---------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-boolean v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->showResponse:Z

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    iget-object v2, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0, v1}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->isText(Lokhttp3/MediaType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v2, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v1, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "---------------------response log end-----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-object p1

    .line 98
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "content :  maybe [file part] , too large too print , ignored!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "---------------------response log end-----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    :try_start_2
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v1, "---------------------response log end-----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->tag:Ljava/lang/String;

    const-string v2, "---------------------response log end-----------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->logForRequest(Lokhttp3/Request;)V

    .line 40
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;->logForResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
