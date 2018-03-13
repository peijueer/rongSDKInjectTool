.class public abstract Lcom/lzy/okhttputils/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/lzy/okhttputils/request/BaseRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

.field protected cacheTime:J

.field protected connectTimeout:J

.field protected headers:Lcom/lzy/okhttputils/model/HttpHeaders;

.field protected hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpUrl:Lokhttp3/HttpUrl;

.field protected interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

.field private mRequest:Lokhttp3/Request;

.field protected params:Lcom/lzy/okhttputils/model/HttpParams;

.field protected readTimeOut:J

.field private sslParams:Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

.field protected tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;

.field protected userCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field protected writeTimeOut:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    .line 61
    new-instance v0, Lcom/lzy/okhttputils/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okhttputils/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    .line 62
    new-instance v0, Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okhttputils/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->url:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->baseUrl:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->httpUrl:Lokhttp3/HttpUrl;

    .line 74
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/lzy/okhttputils/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Accept-Language"

    invoke-virtual {p0, v2, v1}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 79
    :cond_0
    invoke-static {}, Lcom/lzy/okhttputils/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "User-Agent"

    invoke-virtual {p0, v2, v1}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 82
    :cond_1
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonParams()Lcom/lzy/okhttputils/model/HttpParams;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonParams()Lcom/lzy/okhttputils/model/HttpParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Lcom/lzy/okhttputils/model/HttpParams;)V

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCommonHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    .line 85
    :cond_3
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 86
    :cond_4
    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCacheTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lzy/okhttputils/request/BaseRequest;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lzy/okhttputils/request/BaseRequest;Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/lzy/okhttputils/request/BaseRequest;->handleCache(Lokhttp3/Headers;Ljava/lang/Object;)V

    return-void
.end method

.method private handleCache(Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->NO_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/lzy/okhttputils/utils/HeaderParser;->createCacheEntity(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okhttputils/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    .line 523
    if-nez v0, :cond_2

    .line 525
    sget-object v0, Lcom/lzy/okhttputils/cache/CacheManager;->INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/cache/CacheManager;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 528
    :cond_2
    sget-object v1, Lcom/lzy/okhttputils/cache/CacheManager;->INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/lzy/okhttputils/cache/CacheManager;->replace(Ljava/lang/String;Lcom/lzy/okhttputils/cache/CacheEntity;)Lcom/lzy/okhttputils/cache/CacheEntity;

    goto :goto_0
.end method

.method private sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Ljava/lang/Exception;",
            "Lcom/lzy/okhttputils/callback/AbsCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 535
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getDelivery()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/lzy/okhttputils/request/BaseRequest$3;

    move-object v1, p0

    move v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/lzy/okhttputils/request/BaseRequest$3;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;ZLcom/lzy/okhttputils/callback/AbsCallback;Lokhttp3/Call;Ljava/lang/Exception;Lokhttp3/Response;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v1, :cond_1

    .line 554
    sget-object v0, Lcom/lzy/okhttputils/cache/CacheManager;->INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/cache/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire()Z

    move-result v1

    if-nez v1, :cond_3

    .line 556
    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 557
    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v0

    .line 558
    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 560
    :cond_0
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v0}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    move-object v0, p0

    move v1, v8

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 568
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move v1, v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 562
    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0

    .line 565
    :cond_3
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v0}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    move-object v0, p0

    move v1, v8

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0
.end method

.method private sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZTT;",
            "Lokhttp3/Call;",
            "Lokhttp3/Response;",
            "Lcom/lzy/okhttputils/callback/AbsCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getDelivery()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/lzy/okhttputils/request/BaseRequest$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/lzy/okhttputils/request/BaseRequest$4;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;ZLcom/lzy/okhttputils/callback/AbsCallback;Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    return-void
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Lokhttp3/Cookie$Builder;

    invoke-direct {v0}, Lokhttp3/Cookie$Builder;-><init>()V

    .line 256
    invoke-virtual {v0, p1}, Lokhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->httpUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lokhttp3/Cookie$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Cookie$Builder;->build()Lokhttp3/Cookie;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    return-object p0
.end method

.method public addCookie(Lokhttp3/Cookie;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1    # Lokhttp3/Cookie;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Cookie;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-object p0
.end method

.method public addCookies(Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    return-object p0
.end method

.method public addInterceptor(Lokhttp3/Interceptor;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Interceptor;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-object p0
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    .line 238
    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public cacheMode(Lcom/lzy/okhttputils/cache/CacheMode;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 122
    return-object p0
.end method

.method public cacheTime(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 134
    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    .line 135
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    .line 136
    return-object p0
.end method

.method public connTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    .line 116
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
    .line 400
    invoke-virtual {p0}, Lcom/lzy/okhttputils/request/BaseRequest;->getCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okhttputils/callback/AbsCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okhttputils/callback/AbsCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 406
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    .line 407
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    if-nez v0, :cond_0

    sget-object v0, Lcom/lzy/okhttputils/callback/AbsCallback;->CALLBACK_DEFAULT:Lcom/lzy/okhttputils/callback/AbsCallback;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    invoke-virtual {v0, p0}, Lcom/lzy/okhttputils/callback/AbsCallback;->onBefore(Lcom/lzy/okhttputils/request/BaseRequest;)V

    .line 413
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->baseUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v1, v1, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lcom/lzy/okhttputils/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    if-nez v0, :cond_2

    sget-object v0, Lcom/lzy/okhttputils/cache/CacheMode;->NO_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->NO_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-eq v0, v1, :cond_c

    .line 418
    sget-object v0, Lcom/lzy/okhttputils/cache/CacheManager;->INSTANCE:Lcom/lzy/okhttputils/cache/CacheManager;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/cache/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/lzy/okhttputils/cache/CacheEntity;->checkExpire(Lcom/lzy/okhttputils/cache/CacheMode;JJ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    invoke-virtual {v0, v6}, Lcom/lzy/okhttputils/cache/CacheEntity;->setExpire(Z)V

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    invoke-static {p0, v0, v1}, Lcom/lzy/okhttputils/utils/HeaderParser;->addCacheHeaders(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;Lcom/lzy/okhttputils/cache/CacheMode;)V

    move-object v9, v0

    .line 426
    :goto_0
    invoke-virtual {p0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    .line 427
    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->wrapRequestBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    .line 430
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v1, :cond_8

    .line 432
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire()Z

    move-result v0

    if-nez v0, :cond_7

    .line 433
    invoke-virtual {v9}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 434
    invoke-virtual {v9}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v0

    .line 435
    if-eqz v5, :cond_4

    if-nez v0, :cond_6

    .line 437
    :cond_4
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v0}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    iget-object v5, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v0, p0

    move v1, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 462
    :cond_5
    :goto_1
    new-instance v0, Lcom/lzy/okhttputils/request/BaseRequest$2;

    invoke-direct {v0, p0, v9}, Lcom/lzy/okhttputils/request/BaseRequest$2;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;)V

    invoke-interface {v2, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 509
    :goto_2
    return-void

    .line 439
    :cond_6
    iget-object v8, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v3, p0

    move v4, v6

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_2

    .line 443
    :cond_7
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v0}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    iget-object v5, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v0, p0

    move v1, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_1

    .line 445
    :cond_8
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v1, :cond_5

    .line 447
    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire()Z

    move-result v0

    if-nez v0, :cond_b

    .line 448
    invoke-virtual {v9}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 449
    invoke-virtual {v9}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v0

    .line 450
    if-eqz v5, :cond_9

    if-nez v0, :cond_a

    .line 452
    :cond_9
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v0}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    iget-object v5, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v0, p0

    move v1, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_1

    .line 454
    :cond_a
    iget-object v8, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v3, p0

    move v4, v6

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_1

    .line 457
    :cond_b
    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v0}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    iget-object v5, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    move-object v0, p0

    move v1, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_1

    :cond_c
    move-object v9, v7

    goto/16 :goto_0
.end method

.method protected generateCall(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 368
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mRequest:Lokhttp3/Request;

    .line 369
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->sslParams:Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 373
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 374
    :cond_1
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 375
    :cond_2
    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    iget-wide v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->connectTimeout:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 377
    :cond_4
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->sslParams:Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->sslParams:Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    iget-object v0, v0, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->sslParams:Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    iget-object v2, v2, Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v0, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getCookieJar()Lcom/lzy/okhttputils/cookie/CookieJarImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest;->userCookies:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->addCookies(Ljava/util/List;)V

    .line 379
    :cond_6
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 380
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Interceptor;

    .line 381
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 384
    :cond_7
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected abstract generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract generateRequestBody()Lokhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .prologue
    .line 328
    iget-wide v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime:J

    return-wide v0
.end method

.method public getCall()Lokhttp3/Call;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-static {p0, v0, v0}, Lcom/lzy/okhttputils/utils/HeaderParser;->addCacheHeaders(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;Lcom/lzy/okhttputils/cache/CacheMode;)V

    .line 393
    invoke-virtual {p0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    .line 394
    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->wrapRequestBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mRequest:Lokhttp3/Request;

    .line 395
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mRequest:Lokhttp3/Request;

    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->generateCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okhttputils/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttputils/model/HttpParams$FileWrapper;

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/lzy/okhttputils/model/HttpParams;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okhttputils/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 288
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headers(Lcom/lzy/okhttputils/model/HttpHeaders;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    .line 160
    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object p0
.end method

.method public params(Lcom/lzy/okhttputils/model/HttpParams;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->put(Lcom/lzy/okhttputils/model/HttpParams;)V

    .line 184
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    .line 226
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    .line 214
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    .line 208
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    .line 202
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    .line 220
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 196
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    .line 232
    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/model/HttpParams;->put(Ljava/util/Map;[Z)V

    .line 190
    return-object p0
.end method

.method public readTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->readTimeOut:J

    .line 104
    return-object p0
.end method

.method public removeAllHeaders()Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/model/HttpHeaders;->clear()V

    .line 178
    return-object p0
.end method

.method public removeAllParams()Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/model/HttpParams;->clear()V

    .line 250
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/model/HttpParams;->remove(Ljava/lang/String;)V

    .line 244
    return-object p0
.end method

.method public setCallback(Lcom/lzy/okhttputils/callback/AbsCallback;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/callback/AbsCallback;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 275
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;

    .line 276
    return-object p0
.end method

.method public varargs setCertificates(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "[",
            "Ljava/io/InputStream;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p1, p2, p3}, Lcom/lzy/okhttputils/https/HttpsUtils;->getSslSocketFactory(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->sslParams:Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    .line 148
    return-object p0
.end method

.method public varargs setCertificates([Ljava/io/InputStream;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/InputStream;",
            ")TR;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {v0, v0, p1}, Lcom/lzy/okhttputils/https/HttpsUtils;->getSslSocketFactory(Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest;->sslParams:Lcom/lzy/okhttputils/https/HttpsUtils$SSLParams;

    .line 142
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 154
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->tag:Ljava/lang/Object;

    .line 98
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->url:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/lzy/okhttputils/request/ProgressRequestBody;

    invoke-direct {v0, p1}, Lcom/lzy/okhttputils/request/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;)V

    .line 349
    new-instance v1, Lcom/lzy/okhttputils/request/BaseRequest$1;

    invoke-direct {v1, p0}, Lcom/lzy/okhttputils/request/BaseRequest$1;-><init>(Lcom/lzy/okhttputils/request/BaseRequest;)V

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/request/ProgressRequestBody;->setListener(Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;)V

    .line 360
    return-object v0
.end method

.method public writeTimeOut(J)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/lzy/okhttputils/request/BaseRequest;->writeTimeOut:J

    .line 110
    return-object p0
.end method
