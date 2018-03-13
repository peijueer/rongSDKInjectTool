.class public abstract Lcom/zhy/http/okhttp/callback/BitmapCallback;
.super Lcom/zhy/http/okhttp/callback/Callback;
.source "BitmapCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/callback/Callback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetworkResponse(Lokhttp3/Response;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

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
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/callback/BitmapCallback;->parseNetworkResponse(Lokhttp3/Response;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
