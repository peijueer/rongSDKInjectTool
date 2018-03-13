.class final Lcom/lzy/okhttpserver/listener/UploadListener$1;
.super Lcom/lzy/okhttpserver/listener/UploadListener;
.source "UploadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/listener/UploadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/lzy/okhttpserver/listener/UploadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okhttpserver/upload/UploadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onFinish(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onProgress(Lcom/lzy/okhttpserver/upload/UploadInfo;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/listener/UploadListener$1;->parseNetworkResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public parseNetworkResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    return-object p1
.end method
