.class final Lcom/zhy/http/okhttp/callback/Callback$1;
.super Lcom/zhy/http/okhttp/callback/Callback;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/http/okhttp/callback/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "id"    # I

    .prologue
    .line 73
    return-void
.end method

.method public onResponse(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "response"    # Ljava/lang/Object;
    .param p2, "id"    # I

    .prologue
    .line 79
    return-void
.end method

.method public parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method
