.class public Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;
.super Ljava/lang/Object;
.source "MemoryCookieStore.java"

# interfaces
.implements Lcom/zhy/http/okhttp/cookie/store/CookieStore;


# instance fields
.field private final allCookies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 7
    .param p1, "url"    # Lokhttp3/HttpUrl;
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
    .line 22
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v5, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 24
    .local v2, "oldCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    if-eqz v2, :cond_3

    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    .local v0, "itNew":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/Cookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 28
    .local v1, "itOld":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/Cookie;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Cookie;

    invoke-virtual {v5}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "va":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Cookie;

    invoke-virtual {v5}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 40
    .end local v3    # "v":Ljava/lang/String;
    .end local v4    # "va":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 47
    .end local v0    # "itNew":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/Cookie;>;"
    .end local v1    # "itOld":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/Cookie;>;"
    :goto_1
    return-void

    .line 43
    :cond_3
    iget-object v5, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public get(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 3
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
    .line 52
    iget-object v1, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .restart local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-object v0
.end method

.method public getCookies()Ljava/util/List;
    .locals 5
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
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v4, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 74
    .local v1, "httpUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 78
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public remove(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z
    .locals 3
    .param p1, "uri"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    if-eqz p2, :cond_0

    .line 88
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 90
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/zhy/http/okhttp/cookie/store/MemoryCookieStore;->allCookies:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
