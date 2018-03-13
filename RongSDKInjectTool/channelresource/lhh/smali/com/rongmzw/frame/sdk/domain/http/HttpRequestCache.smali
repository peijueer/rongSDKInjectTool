.class public Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;
.super Ljava/lang/Object;
.source "HttpRequestCache.java"


# static fields
.field public static final REQUEST_TYPE_INIT:I = 0x1

.field public static final REQUEST_TYPE_LOGIN:I = 0x2

.field public static final REQUEST_TYPE_PAY:I = 0x3


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

.field private paramsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestType:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCallback()Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->callback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    return-object v0
.end method

.method public getParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->paramsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->requestType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method public setCallback(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->callback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .line 53
    return-void
.end method

.method public setParamsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->paramsMap:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public setRequestType(I)V
    .locals 0
    .param p1, "requestType"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->requestType:I

    .line 61
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->url:Ljava/lang/String;

    .line 37
    return-void
.end method
