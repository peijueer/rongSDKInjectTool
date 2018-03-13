.class public abstract Lcom/zhy/http/okhttp/callback/StringCallback;
.super Lcom/zhy/http/okhttp/callback/Callback;
.source "StringCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/callback/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lokhttp3/Response;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/callback/StringCallback;->parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/String;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
