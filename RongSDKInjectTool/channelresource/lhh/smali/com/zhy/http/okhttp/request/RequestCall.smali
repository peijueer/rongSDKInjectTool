.class public Lcom/zhy/http/okhttp/request/RequestCall;
.super Ljava/lang/Object;
.source "RequestCall.java"


# instance fields
.field private call:Lokhttp3/Call;

.field private clone:Lokhttp3/OkHttpClient;

.field private connTimeOut:J

.field private okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

.field private readTimeOut:J

.field private request:Lokhttp3/Request;

.field private writeTimeOut:J


# direct methods
.method public constructor <init>(Lcom/zhy/http/okhttp/request/OkHttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/zhy/http/okhttp/request/OkHttpRequest;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

    .line 33
    return-void
.end method

.method private generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;
    .locals 1
    .param p1, "callback"    # Lcom/zhy/http/okhttp/callback/Callback;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

    invoke-virtual {v0, p1}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildCall(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Call;
    .locals 6
    .param p1, "callback"    # Lcom/zhy/http/okhttp/callback/Callback;

    .prologue
    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/zhy/http/okhttp/request/RequestCall;->generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    .line 57
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 59
    :cond_0
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    :goto_0
    iput-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    .line 60
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    :goto_1
    iput-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    .line 61
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    :cond_1
    iput-wide v2, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    .line 63
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->clone:Lokhttp3/OkHttpClient;

    .line 69
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->clone:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    return-object v0

    :cond_2
    move-wide v0, v2

    .line 59
    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 60
    goto :goto_1

    .line 72
    :cond_4
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    goto :goto_2
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 121
    :cond_0
    return-void
.end method

.method public connTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 1
    .param p1, "connTimeOut"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    .line 50
    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zhy/http/okhttp/request/RequestCall;->buildCall(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Call;

    .line 112
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/zhy/http/okhttp/callback/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/zhy/http/okhttp/callback/Callback;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/request/RequestCall;->buildCall(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Call;

    .line 86
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/RequestCall;->getOkHttpRequest()Lcom/zhy/http/okhttp/request/OkHttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/zhy/http/okhttp/callback/Callback;->onBefore(Lokhttp3/Request;I)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zhy/http/okhttp/OkHttpUtils;->execute(Lcom/zhy/http/okhttp/request/RequestCall;Lcom/zhy/http/okhttp/callback/Callback;)V

    .line 92
    return-void
.end method

.method public getCall()Lokhttp3/Call;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    return-object v0
.end method

.method public getOkHttpRequest()Lcom/zhy/http/okhttp/request/OkHttpRequest;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public readTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 1
    .param p1, "readTimeOut"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    .line 38
    return-object p0
.end method

.method public writeTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 1
    .param p1, "writeTimeOut"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    .line 44
    return-object p0
.end method
