.class public abstract Lcom/zhy/http/okhttp/callback/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static CALLBACK_DEFAULT:Lcom/zhy/http/okhttp/callback/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/zhy/http/okhttp/callback/Callback$1;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/callback/Callback$1;-><init>()V

    sput-object v0, Lcom/zhy/http/okhttp/callback/Callback;->CALLBACK_DEFAULT:Lcom/zhy/http/okhttp/callback/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcom/zhy/http/okhttp/callback/Callback;, "Lcom/zhy/http/okhttp/callback/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inProgress(FJI)V
    .locals 0
    .param p1, "progress"    # F
    .param p2, "total"    # J
    .param p4, "id"    # I

    .prologue
    .line 35
    .local p0, "this":Lcom/zhy/http/okhttp/callback/Callback;, "Lcom/zhy/http/okhttp/callback/Callback<TT;>;"
    return-void
.end method

.method public onAfter(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 25
    .local p0, "this":Lcom/zhy/http/okhttp/callback/Callback;, "Lcom/zhy/http/okhttp/callback/Callback<TT;>;"
    return-void
.end method

.method public onBefore(Lokhttp3/Request;I)V
    .locals 0
    .param p1, "request"    # Lokhttp3/Request;
    .param p2, "id"    # I

    .prologue
    .line 16
    .local p0, "this":Lcom/zhy/http/okhttp/callback/Callback;, "Lcom/zhy/http/okhttp/callback/Callback<TT;>;"
    return-void
.end method

.method public abstract onError(Lokhttp3/Call;Ljava/lang/Exception;I)V
.end method

.method public abstract onResponse(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public validateReponse(Lokhttp3/Response;I)Z
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "id"    # I

    .prologue
    .line 45
    .local p0, "this":Lcom/zhy/http/okhttp/callback/Callback;, "Lcom/zhy/http/okhttp/callback/Callback<TT;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method
