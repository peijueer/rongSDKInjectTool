.class Lcom/lzy/okhttputils/request/BaseRequest$3;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/request/BaseRequest;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$isFromCache:Z

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest;ZLcom/lzy/okhttputils/callback/AbsCallback;Lokhttp3/Call;Ljava/lang/Exception;Lokhttp3/Response;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iput-boolean p2, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$isFromCache:Z

    iput-object p3, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iput-object p4, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$call:Lokhttp3/Call;

    iput-object p5, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    iput-object p6, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 538
    iget-boolean v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$isFromCache:Z

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$call:Lokhttp3/Call;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okhttputils/callback/AbsCallback;->onCacheError(Lokhttp3/Call;Ljava/lang/Exception;)V

    .line 540
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v1, :cond_1

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v4, v1}, Lcom/lzy/okhttputils/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 549
    :cond_1
    :goto_0
    return-void

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$call:Lokhttp3/Call;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$response:Lokhttp3/Response;

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzy/okhttputils/callback/AbsCallback;->onError(Lokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;)V

    .line 545
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-eq v0, v1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$3;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v4, v1}, Lcom/lzy/okhttputils/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
