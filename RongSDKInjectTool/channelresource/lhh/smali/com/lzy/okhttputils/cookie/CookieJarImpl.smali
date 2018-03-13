.class public Lcom/lzy/okhttputils/cookie/CookieJarImpl;
.super Ljava/lang/Object;
.source "CookieJarImpl.java"

# interfaces
.implements Lokhttp3/CookieJar;


# instance fields
.field private cookieStore:Lcom/lzy/okhttputils/cookie/store/CookieStore;

.field private userCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okhttputils/cookie/store/CookieStore;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->userCookies:Ljava/util/Map;

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cookieStore can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okhttputils/cookie/store/CookieStore;

    .line 38
    return-void
.end method


# virtual methods
.method public addCookies(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Cookie;

    .line 23
    invoke-virtual {v0}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v3

    .line 24
    iget-object v1, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->userCookies:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 25
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 27
    iget-object v4, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->userCookies:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public getCookieStore()Lcom/lzy/okhttputils/cookie/store/CookieStore;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okhttputils/cookie/store/CookieStore;

    return-object v0
.end method

.method public declared-synchronized loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 3
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
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okhttputils/cookie/store/CookieStore;

    invoke-interface {v0, p1}, Lcom/lzy/okhttputils/cookie/store/CookieStore;->loadCookies(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object v1

    .line 48
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->userCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 49
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 50
    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 1
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
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/cookie/CookieJarImpl;->cookieStore:Lcom/lzy/okhttputils/cookie/store/CookieStore;

    invoke-interface {v0, p1, p2}, Lcom/lzy/okhttputils/cookie/store/CookieStore;->saveCookies(Lokhttp3/HttpUrl;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
