.class public Lcom/iqiyigame/plugin/utils/GameRedirectHandler;
.super Ljava/lang/Object;
.source "GameRedirectHandler.java"

# interfaces
.implements Lorg/apache/http/client/RedirectHandler;


# instance fields
.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->uri:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    const/4 v4, 0x0

    .line 40
    const-string v3, ""

    .line 41
    .local v3, "url":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 42
    .local v2, "headers":[Lorg/apache/http/Header;
    array-length v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 43
    .local v1, "header":Lorg/apache/http/Header;
    const-string v7, "Location"

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 44
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 49
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRedirectRequested Location : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    :goto_1
    return v4

    .line 42
    .restart local v1    # "header":Lorg/apache/http/Header;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_2
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2
.end method
