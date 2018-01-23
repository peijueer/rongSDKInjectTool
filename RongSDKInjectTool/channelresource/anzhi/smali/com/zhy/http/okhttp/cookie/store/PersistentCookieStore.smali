.class public Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"

# interfaces
.implements Lcom/zhy/http/okhttp/cookie/store/CookieStore;


# static fields
.field private static final COOKIE_NAME_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final COOKIE_PREFS:Ljava/lang/String; = "CookiePrefsFile"

.field private static final LOG_TAG:Ljava/lang/String; = "PersistentCookieStore"


# instance fields
.field private final cookiePrefs:Landroid/content/SharedPreferences;

.field private final cookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v10, "CookiePrefsFile"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    .line 61
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    .line 64
    iget-object v10, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    .line 65
    .local v9, "prefsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 67
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "cookie_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 69
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, ","

    invoke-static {v10, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "cookieNames":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v8, v0, v6

    .line 72
    .local v8, "name":Ljava/lang/String;
    iget-object v10, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cookie_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "encodedCookie":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {p0, v3}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->decodeCookie(Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v2

    .line 76
    .local v2, "decodedCookie":Lokhttp3/Cookie;
    if-eqz v2, :cond_2

    .line 78
    iget-object v10, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 79
    iget-object v10, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    iget-object v10, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v2    # "decodedCookie":Lokhttp3/Cookie;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cookieNames":[Ljava/lang/String;
    .end local v3    # "encodedCookie":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static isCookieExpired(Lokhttp3/Cookie;)Z
    .locals 4
    .param p0, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 156
    invoke-virtual {p0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 3
    .param p1, "uri"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 128
    .local v0, "cookie":Lokhttp3/Cookie;
    invoke-virtual {p0, p1, v0}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->add(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V

    goto :goto_0

    .line 130
    .end local v0    # "cookie":Lokhttp3/Cookie;
    :cond_0
    return-void
.end method

.method protected add(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
    .locals 6
    .param p1, "uri"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 91
    invoke-virtual {p0, p2}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lokhttp3/Cookie;->persistent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_0
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 113
    .local v1, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zhy/http/okhttp/cookie/store/SerializableHttpCookie;

    invoke-direct {v3, p2}, Lcom/zhy/http/okhttp/cookie/store/SerializableHttpCookie;-><init>(Lokhttp3/Cookie;)V

    invoke-virtual {p0, v3}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->encodeCookie(Lcom/zhy/http/okhttp/cookie/store/SerializableHttpCookie;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    .end local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected byteArrayToHexString([B)Ljava/lang/String;
    .locals 8
    .param p1, "bytes"    # [B

    .prologue
    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v6, p1

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 255
    .local v1, "element":B
    and-int/lit16 v5, v1, 0xff

    .line 256
    .local v5, "v":I
    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    .line 258
    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "element":B
    .end local v5    # "v":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected decodeCookie(Ljava/lang/String;)Lokhttp3/Cookie;
    .locals 7
    .param p1, "cookieString"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 226
    .local v1, "bytes":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 227
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 230
    .local v2, "cookie":Lokhttp3/Cookie;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    .local v4, "objectInputStream":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zhy/http/okhttp/cookie/store/SerializableHttpCookie;

    invoke-virtual {v5}, Lcom/zhy/http/okhttp/cookie/store/SerializableHttpCookie;->getCookie()Lokhttp3/Cookie;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 240
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v2

    .line 232
    :catch_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "PersistentCookieStore"

    const-string v6, "IOException in decodeCookie"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 237
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "PersistentCookieStore"

    const-string v6, "ClassNotFoundException in decodeCookie"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected encodeCookie(Lcom/zhy/http/okhttp/cookie/store/SerializableHttpCookie;)Ljava/lang/String;
    .locals 6
    .param p1, "cookie"    # Lcom/zhy/http/okhttp/cookie/store/SerializableHttpCookie;

    .prologue
    const/4 v3, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 220
    :goto_0
    return-object v3

    .line 209
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 213
    .local v2, "outputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 214
    .end local v2    # "outputStream":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "PersistentCookieStore"

    const-string v5, "IOException in encodeCookie"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public get(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 6
    .param p1, "uri"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lokhttp3/Cookie;>;"
    iget-object v4, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 139
    .local v1, "cookies":Ljava/util/Collection;, "Ljava/util/Collection<Lokhttp3/Cookie;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 141
    .local v0, "cookie":Lokhttp3/Cookie;
    invoke-static {v0}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->remove(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0    # "cookie":Lokhttp3/Cookie;
    .end local v1    # "cookies":Ljava/util/Collection;, "Ljava/util/Collection<Lokhttp3/Cookie;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method protected getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;
    .locals 2
    .param p1, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lokhttp3/Cookie;>;"
    iget-object v3, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 201
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method protected hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 274
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 275
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 277
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 275
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 279
    :cond_0
    return-object v0
.end method

.method public remove(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z
    .locals 6
    .param p1, "uri"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 173
    invoke-virtual {p0, p2}, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 180
    .local v1, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cookie_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    :cond_0
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    iget-object v2, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    const/4 v2, 0x1

    .line 190
    .end local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll()Z
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 163
    .local v0, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    iget-object v1, p0, Lcom/zhy/http/okhttp/cookie/store/PersistentCookieStore;->cookies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 166
    const/4 v1, 0x1

    return v1
.end method
