.class public Lcom/lzy/okhttputils/utils/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCacheHeaders(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;Lcom/lzy/okhttputils/cache/CacheMode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okhttputils/request/BaseRequest;",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;",
            "Lcom/lzy/okhttputils/cache/CacheMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    if-eqz p1, :cond_1

    sget-object v0, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne p2, v0, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    const-string v2, "If-None-Match"

    invoke-virtual {p0, v2, v1}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 129
    :cond_0
    const-string v1, "Last-Modified"

    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/model/HttpHeaders;->getLastModified(Ljava/lang/String;)J

    move-result-wide v0

    .line 130
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "If-Modified-Since"

    invoke-static {v0, v1}, Lcom/lzy/okhttputils/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 133
    :cond_1
    return-void
.end method

.method public static createCacheEntity(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okhttputils/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/Headers;",
            "TT;",
            "Lcom/lzy/okhttputils/cache/CacheMode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 46
    .line 48
    sget-object v0, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne p2, v0, :cond_9

    .line 49
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/model/HttpHeaders;->getDate(Ljava/lang/String;)J

    move-result-wide v8

    .line 50
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okhttputils/model/HttpHeaders;->getExpiration(Ljava/lang/String;)J

    move-result-wide v4

    .line 51
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pragma"

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzy/okhttputils/model/HttpHeaders;->getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    move-object v0, v6

    .line 104
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 58
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v10, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 60
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 61
    const-string v11, "no-cache"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "no-store"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move-object v0, v6

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string v11, "max-age="

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 67
    const/16 v11, 0x8

    :try_start_0
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 69
    cmp-long v7, v0, v2

    if-gtz v7, :cond_1

    move-object v0, v6

    goto :goto_0

    .line 70
    :catch_0
    move-exception v7

    .line 71
    invoke-static {v7}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move-wide v0, v2

    .line 78
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    cmp-long v10, v8, v2

    if-lez v10, :cond_6

    move-wide v6, v8

    .line 81
    :cond_6
    cmp-long v8, v0, v2

    if-lez v8, :cond_8

    .line 83
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long v2, v6, v0

    .line 93
    :cond_7
    :goto_2
    new-instance v1, Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-direct {v1}, Lcom/lzy/okhttputils/model/HttpHeaders;-><init>()V

    .line 94
    invoke-virtual {p0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 84
    :cond_8
    cmp-long v0, v4, v2

    if-ltz v0, :cond_7

    move-wide v2, v4

    .line 86
    goto :goto_2

    .line 89
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_2

    .line 99
    :cond_a
    new-instance v0, Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-direct {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;-><init>()V

    .line 100
    invoke-virtual {v0, p3}, Lcom/lzy/okhttputils/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->setData(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttputils/cache/CacheEntity;->setLocalExpire(J)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/lzy/okhttputils/cache/CacheEntity;->setResponseHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)V

    goto/16 :goto_0
.end method
