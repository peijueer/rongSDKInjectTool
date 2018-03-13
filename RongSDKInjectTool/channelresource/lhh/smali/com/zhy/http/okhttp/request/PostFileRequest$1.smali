.class Lcom/zhy/http/okhttp/request/PostFileRequest$1;
.super Ljava/lang/Object;
.source "PostFileRequest.java"

# interfaces
.implements Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/request/PostFileRequest;->wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/http/okhttp/request/PostFileRequest;

.field final synthetic val$callback:Lcom/zhy/http/okhttp/callback/Callback;


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/request/PostFileRequest;Lcom/zhy/http/okhttp/callback/Callback;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1;->this$0:Lcom/zhy/http/okhttp/request/PostFileRequest;

    iput-object p2, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestProgress(JJ)V
    .locals 7
    .param p1, "bytesWritten"    # J
    .param p3, "contentLength"    # J

    .prologue
    .line 56
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->getDelivery()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;-><init>(Lcom/zhy/http/okhttp/request/PostFileRequest$1;JJ)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
