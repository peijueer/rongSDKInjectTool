.class public Lcom/lzy/okhttputils/OkHttpUtils;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;
    }
.end annotation


# static fields
.field public static final DEFAULT_MILLISECONDS:I = 0xea60

.field private static context:Landroid/app/Application;

.field private static mInstance:Lcom/lzy/okhttputils/OkHttpUtils;


# instance fields
.field private cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

.field private mCacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

.field private mCacheTime:J

.field private mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

.field private mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

.field private mDelivery:Landroid/os/Handler;

.field private okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/32 v2, 0xea60

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheTime:J

    .line 58
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 59
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;

    invoke-direct {v1, p0}, Lcom/lzy/okhttputils/OkHttpUtils$DefaultHostnameVerifier;-><init>(Lcom/lzy/okhttputils/OkHttpUtils;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 60
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 61
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 62
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mDelivery:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public static delete(Ljava/lang/String;)Lcom/lzy/okhttputils/request/DeleteRequest;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/lzy/okhttputils/request/DeleteRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/lzy/okhttputils/request/GetRequest;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/lzy/okhttputils/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/GetRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8bf7\u5148\u5728\u5168\u5c40Application\u4e2d\u8c03\u7528 OkHttpUtils.init() \u521d\u59cb\u5316\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->context:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/lzy/okhttputils/OkHttpUtils;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/lzy/okhttputils/OkHttpUtils;

    invoke-direct {v0}, Lcom/lzy/okhttputils/OkHttpUtils;-><init>()V

    sput-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/lzy/okhttputils/OkHttpUtils;->mInstance:Lcom/lzy/okhttputils/OkHttpUtils;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static head(Ljava/lang/String;)Lcom/lzy/okhttputils/request/HeadRequest;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/lzy/okhttputils/request/HeadRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/HeadRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 79
    sput-object p0, Lcom/lzy/okhttputils/OkHttpUtils;->context:Landroid/app/Application;

    .line 80
    return-void
.end method

.method public static options(Ljava/lang/String;)Lcom/lzy/okhttputils/request/OptionsRequest;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/lzy/okhttputils/request/OptionsRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PostRequest;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/lzy/okhttputils/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PutRequest;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/lzy/okhttputils/request/PutRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/PutRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addCommonHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okhttputils/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    .line 253
    return-object p0
.end method

.method public addCommonParams(Lcom/lzy/okhttputils/model/HttpParams;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lzy/okhttputils/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okhttputils/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Lcom/lzy/okhttputils/model/HttpParams;)V

    .line 241
    return-object p0
.end method

.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1
    .param p1    # Lokhttp3/Interceptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 259
    return-object p0
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 265
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    .line 270
    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    .line 274
    :cond_3
    return-void
.end method

.method public debug(Ljava/lang/String;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttputils/OkHttpUtils;->debug(Ljava/lang/String;Z)Lcom/lzy/okhttputils/OkHttpUtils;

    .line 134
    return-object p0
.end method

.method public debug(Ljava/lang/String;Z)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/lzy/okhttputils/interceptor/LoggerInterceptor;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 143
    invoke-static {p2}, Lcom/lzy/okhttputils/utils/OkLogger;->debug(Z)V

    .line 144
    return-object p0
.end method

.method public getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheTime:J

    return-wide v0
.end method

.method public getCommonHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    return-object v0
.end method

.method public getCommonParams()Lcom/lzy/okhttputils/model/HttpParams;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCommonParams:Lcom/lzy/okhttputils/model/HttpParams;

    return-object v0
.end method

.method public getCookieJar()Lcom/lzy/okhttputils/cookie/CookieJarImpl;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    return-object v0
.end method

.method public getDelivery()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mDelivery:Landroid/os/Handler;

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public getOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public setCacheMode(Lcom/lzy/okhttputils/cache/CacheMode;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 212
    return-object p0
.end method

.method public setCacheTime(J)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 222
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 223
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->mCacheTime:J

    .line 224
    return-object p0
.end method

.method public varargs setCertificates(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 3

    .prologue
    .line 174
    invoke-static {p1, p2, p3}, Lcom/lzy/okhttputils/https/HttpsUtils;->getSslSocketFactory(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    iget-object v2, v0, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, v0, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 176
    return-object p0
.end method

.method public varargs setCertificates([Ljava/io/InputStream;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-static {v0, v0, p1}, Lcom/lzy/okhttputils/https/HttpsUtils;->getSslSocketFactory(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    iget-object v2, v0, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, v0, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 169
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 206
    return-object p0
.end method

.method public setCookieStore(Lcom/lzy/okhttputils/cookie/store/CookieStore;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    invoke-direct {v0, p1}, Lcom/lzy/okhttputils/cookie/CookieJarImpl;-><init>(Lcom/lzy/okhttputils/cookie/store/CookieStore;)V

    iput-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    .line 182
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    iget-object v1, p0, Lcom/lzy/okhttputils/OkHttpUtils;->cookieJar:Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 183
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 162
    return-object p0
.end method

.method public setReadTimeOut(I)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 194
    return-object p0
.end method

.method public setWriteTimeOut(I)Lcom/lzy/okhttputils/OkHttpUtils;
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lzy/okhttputils/OkHttpUtils;->okHttpClientBuilder:Lokhttp3/OkHttpClient$Builder;

    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 200
    return-object p0
.end method
