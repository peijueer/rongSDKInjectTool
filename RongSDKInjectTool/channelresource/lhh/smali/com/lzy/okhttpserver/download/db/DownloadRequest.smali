.class public Lcom/lzy/okhttpserver/download/db/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5f88b9ccf5278071L


# instance fields
.field public cacheKey:Ljava/lang/String;

.field public cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

.field public cacheTime:J

.field public headers:Lcom/lzy/okhttputils/model/HttpHeaders;

.field public method:Ljava/lang/String;

.field public params:Lcom/lzy/okhttputils/model/HttpParams;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1

    .prologue
    .line 48
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lzy/okhttputils/request/GetRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/GetRequest;-><init>(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-object v0

    .line 49
    :cond_0
    const-string v0, "post"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lzy/okhttputils/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/PostRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "put"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/lzy/okhttputils/request/PutRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/PutRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "delete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/lzy/okhttputils/request/DeleteRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/DeleteRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v0, "options"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/lzy/okhttputils/request/OptionsRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/OptionsRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_4
    const-string v0, "head"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/lzy/okhttputils/request/HeadRequest;

    invoke-direct {v0, p0}, Lcom/lzy/okhttputils/request/HeadRequest;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMethod(Lcom/lzy/okhttputils/request/BaseRequest;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    instance-of v0, p0, Lcom/lzy/okhttputils/request/GetRequest;

    if-eqz v0, :cond_0

    const-string v0, "get"

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    instance-of v0, p0, Lcom/lzy/okhttputils/request/PostRequest;

    if-eqz v0, :cond_1

    const-string v0, "post"

    goto :goto_0

    .line 40
    :cond_1
    instance-of v0, p0, Lcom/lzy/okhttputils/request/PutRequest;

    if-eqz v0, :cond_2

    const-string v0, "put"

    goto :goto_0

    .line 41
    :cond_2
    instance-of v0, p0, Lcom/lzy/okhttputils/request/DeleteRequest;

    if-eqz v0, :cond_3

    const-string v0, "delete"

    goto :goto_0

    .line 42
    :cond_3
    instance-of v0, p0, Lcom/lzy/okhttputils/request/OptionsRequest;

    if-eqz v0, :cond_4

    const-string v0, "options"

    goto :goto_0

    .line 43
    :cond_4
    instance-of v0, p0, Lcom/lzy/okhttputils/request/HeadRequest;

    if-eqz v0, :cond_5

    const-string v0, "head"

    goto :goto_0

    .line 44
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method
