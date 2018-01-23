.class public Lcom/anzhi/sdk/middle/net/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field public static final IS_TEST:Z = false

.field private static final MAIN_URL:Ljava/lang/String; = "http://api.goapk.com"

.field private static final PHP_FILE:Ljava/lang/String; = "/ucsdk.php"

.field private static final PROP_HOST:Ljava/lang/String; = "Host"

.field private static final TIMEOUT:I = 0xa


# instance fields
.field private httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private isCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mRetryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->isCanceled:Z

    .line 60
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method private detectProxy(Lorg/apache/http/params/HttpParams;)V
    .locals 8
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 169
    :try_start_0
    iget-object v6, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 170
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 171
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_0

    .line 172
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    .line 173
    .local v5, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    .line 174
    .local v4, "port":I
    if-eqz v5, :cond_0

    .line 175
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v5, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v2, "host":Lorg/apache/http/HttpHost;
    const-string v6, "http.route.default-proxy"

    invoke-interface {p1, v6, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Use proxy host= "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "host":Lorg/apache/http/HttpHost;
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v4    # "port":I
    .end local v5    # "proxyHost":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static downloadGet(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const v10, 0xea60

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "downloadGet url:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 248
    invoke-static {p0}, Lcom/anzhi/sdk/middle/net/HttpEngine;->hasNetwork(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 249
    const-string v8, "downloadGet net is unavailable!"

    invoke-static {v8}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 268
    :goto_0
    return-object v7

    .line 252
    :cond_0
    const/4 v2, 0x0

    .line 253
    .local v2, "is":Ljava/io/InputStream;
    const-wide/16 v4, 0x0

    .line 254
    .local v4, "length":J
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 255
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 257
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 258
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 260
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 261
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_1

    .line 262
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 263
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 264
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadGet -->response  len:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 265
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_0

    .line 267
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "downloadGet -->response  code"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 279
    .local v0, "con":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 280
    .local v1, "workinfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    const-string v2, "hasNetwork \u7f51\u7edc\u5f02\u5e38"

    invoke-static {v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 282
    const/4 v2, 0x0

    .line 287
    :goto_0
    return v2

    .line 285
    :cond_1
    const-string v2, "hasNetwork \u7f51\u7edc\u826f\u597d"

    invoke-static {v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 287
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static unZipData([B[BLorg/apache/http/util/ByteArrayBuffer;)[B
    .locals 4
    .param p0, "srcBytes"    # [B
    .param p1, "buffer"    # [B
    .param p2, "byteBuffer"    # Lorg/apache/http/util/ByteArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p2}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 220
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lez v3, :cond_0

    .line 222
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v1, "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 224
    .local v2, "readCnt":I
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 227
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 228
    invoke-virtual {p2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object p0

    .line 235
    .end local v1    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v2    # "readCnt":I
    .end local p0    # "srcBytes":[B
    :cond_0
    :goto_1
    return-object p0

    .line 225
    .restart local v1    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "readCnt":I
    .restart local p0    # "srcBytes":[B
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p2, p1, v3, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v1    # "gzipInputStream":Ljava/util/zip/GZIPInputStream;
    .end local v2    # "readCnt":I
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 231
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static zipData(Ljava/lang/String;)[B
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 198
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    .local v0, "bytes":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v1, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 202
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 203
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 205
    .end local v0    # "bytes":[B
    .end local v1    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->isCanceled:Z

    .line 336
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 339
    :cond_0
    return-void
.end method

.method public download(Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 12
    .param p1, "httpClient"    # Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "retry"    # I

    .prologue
    .line 294
    const/4 v6, 0x0

    .line 295
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .local v7, "len":Ljava/lang/Integer;
    move v8, p3

    .line 298
    .end local p3    # "retry":I
    .local v8, "retry":I
    :goto_0
    if-nez p1, :cond_0

    .line 299
    const/4 v10, 0x2

    :try_start_0
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    move p3, v8

    .line 331
    .end local v8    # "retry":I
    .restart local p3    # "retry":I
    :goto_1
    return-object v10

    .line 301
    .end local p3    # "retry":I
    .restart local v8    # "retry":I
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 302
    .local v4, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1, v4}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->executeWithRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 303
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    if-nez v10, :cond_2

    .line 304
    :cond_1
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    move p3, v8

    .end local v8    # "retry":I
    .restart local p3    # "retry":I
    goto :goto_1

    .line 306
    .end local p3    # "retry":I
    .restart local v8    # "retry":I
    :cond_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 307
    .local v2, "httpCode":I
    const/16 v10, 0xc8

    if-ne v2, v10, :cond_6

    .line 308
    const-string v10, "Content-Length"

    invoke-interface {v5, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 309
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    .line 310
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 312
    .local v9, "temp":Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 318
    .end local v9    # "temp":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 319
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_5

    .line 320
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move p3, v8

    .line 331
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "httpCode":I
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v8    # "retry":I
    .restart local p3    # "retry":I
    :cond_4
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    goto :goto_1

    .line 313
    .end local p3    # "retry":I
    .restart local v1    # "header":Lorg/apache/http/Header;
    .restart local v2    # "httpCode":I
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v8    # "retry":I
    .restart local v9    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v10, ""

    invoke-static {v10, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "header":Lorg/apache/http/Header;
    .end local v2    # "httpCode":I
    .end local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, ""

    invoke-static {v10, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    add-int/lit8 p3, v8, -0x1

    .line 296
    .end local v8    # "retry":I
    .restart local p3    # "retry":I
    if-lez v8, :cond_4

    move v8, p3

    .end local p3    # "retry":I
    .restart local v8    # "retry":I
    goto :goto_0

    .line 324
    .restart local v2    # "httpCode":I
    .restart local v4    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Download httpCode = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method public executePost(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "request"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v16, "http://api.goapk.com/ucsdk.php"

    .line 76
    .local v16, "url":Ljava/lang/String;
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/anzhi/sdk/middle/net/HttpEngine;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 79
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/anzhi/sdk/middle/net/HttpEngine;->zipData(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 84
    .local v14, "sendData":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/net/HttpEngine;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v17, v0

    const-string v18, "Host"

    const-string v19, "gomarket.goapk.com"

    invoke-virtual/range {v17 .. v19}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v14}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 86
    .local v4, "byteEntity":Lorg/apache/http/entity/ByteArrayEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/net/HttpEngine;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 87
    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 88
    .local v11, "params":Lorg/apache/http/params/HttpParams;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 89
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/anzhi/sdk/middle/net/HttpEngine;->detectProxy(Lorg/apache/http/params/HttpParams;)V

    .line 92
    new-instance v7, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;

    invoke-direct {v7, v11}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 93
    .local v7, "httpClient":Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    const/4 v13, 0x0

    .line 94
    .local v13, "response":Lorg/apache/http/HttpResponse;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    move/from16 v17, v0

    if-gtz v17, :cond_1

    .line 161
    const/4 v12, 0x0

    .end local v4    # "byteEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v7    # "httpClient":Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .end local v11    # "params":Lorg/apache/http/params/HttpParams;
    .end local v13    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "sendData":[B
    :cond_0
    :goto_1
    return-object v12

    .line 80
    :catch_0
    move-exception v5

    .line 81
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 82
    const/4 v12, 0x0

    goto :goto_1

    .line 96
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "byteEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v7    # "httpClient":Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;
    .restart local v11    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v13    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "sendData":[B
    :cond_1
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "request ==================>> "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 97
    invoke-static/range {p1 .. p1}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 98
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "request <<================== "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 99
    const-string v17, " "

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/anzhi/sdk/middle/net/HttpEngine;->isCanceled()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 101
    const-string v17, "http request canceled !!"

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;)V

    .line 102
    const/4 v12, 0x0

    goto :goto_1

    .line 104
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/anzhi/sdk/middle/net/HttpEngine;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/AdvancedHttpClient;->executeWithRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/anzhi/sdk/middle/net/HttpEngine;->isCanceled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 116
    const-string v17, "http request canceled !!"

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;)V

    .line 117
    const/4 v12, 0x0

    goto :goto_1

    .line 105
    :catch_1
    move-exception v5

    .line 106
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/anzhi/sdk/middle/net/HttpEngine;->isCanceled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 108
    const-string v17, "http request canceled !!"

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;)V

    .line 109
    const/4 v12, 0x0

    goto :goto_1

    .line 111
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    .line 112
    const-string v17, "connect fail retry to request"

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    if-nez v17, :cond_6

    .line 120
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    .line 121
    const-string v17, "response/getStatusLine() is null retry to request"

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_6
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 125
    .local v8, "httpCode":I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "httpCode = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", url = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 126
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 128
    :try_start_2
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 129
    .local v9, "is":Ljava/io/InputStream;
    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 130
    .local v2, "bab":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v10, -0x1

    .line 132
    .local v10, "line":I
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v3, v0, [B

    .line 133
    .local v3, "buffer":[B
    :goto_2
    invoke-virtual {v9, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    .line 136
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v6

    .line 138
    .local v6, "encryData":[B
    const/4 v15, 0x0

    .line 139
    .local v15, "tmp":[B
    invoke-static {v6, v3, v2}, Lcom/anzhi/sdk/middle/net/HttpEngine;->unZipData([B[BLorg/apache/http/util/ByteArrayBuffer;)[B

    move-result-object v15

    .line 140
    const/4 v12, 0x0

    .line 141
    .local v12, "re":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 142
    new-instance v12, Ljava/lang/String;

    .end local v12    # "re":Ljava/lang/String;
    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v12, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 143
    .restart local v12    # "re":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "response =================>> "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 144
    invoke-static {v12}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 145
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "response <<================= "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->v(Ljava/lang/String;)V

    .line 147
    :cond_7
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v8, v0, :cond_0

    .line 148
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Real response data:\n"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;)V

    .line 149
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "bab length "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 152
    .end local v2    # "bab":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3    # "buffer":[B
    .end local v6    # "encryData":[B
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "line":I
    .end local v12    # "re":Ljava/lang/String;
    .end local v15    # "tmp":[B
    :catch_2
    move-exception v5

    .line 153
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 134
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "bab":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v3    # "buffer":[B
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "line":I
    :cond_8
    const/16 v17, 0x0

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v2, v3, v0, v10}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 156
    .end local v2    # "bab":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3    # "buffer":[B
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "line":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/anzhi/sdk/middle/net/HttpEngine;->mRetryCount:I

    .line 157
    const-string v17, "Retry to request!"

    invoke-static/range {v17 .. v17}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/net/HttpEngine;->isCanceled:Z

    return v0
.end method
