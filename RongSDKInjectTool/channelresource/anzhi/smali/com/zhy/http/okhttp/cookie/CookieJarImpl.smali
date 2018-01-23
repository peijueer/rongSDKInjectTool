.class public Lcom/zhy/http/okhttp/cookie/CookieJarImpl;
.super Ljava/lang/Object;
.source "CookieJarImpl.java"

# interfaces
.implements Lokhttp3/CookieJar;


# instance fields
.field private cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;


# direct methods
.method public constructor <init>(Lcom/zhy/http/okhttp/cookie/store/CookieStore;)V
    .locals 2
    .param p1, "cookieStore"    # Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    const-string v0, "cookieStore can not be null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    .line 23
    return-void
.end method


# virtual methods
.method public getCookieStore()Lcom/zhy/http/okhttp/cookie/store/CookieStore;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    return-object v0
.end method

.method public declared-synchronized loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
    .param p1, "url"    # Lokhttp3/HttpUrl;
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
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    invoke-interface {v0, p1}, Lcom/zhy/http/okhttp/cookie/store/CookieStore;->get(Lokhttp3/HttpUrl;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 1
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
    .line 28
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    invoke-interface {v0, p1, p2}, Lcom/zhy/http/okhttp/cookie/store/CookieStore;->add(Lokhttp3/HttpUrl;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
