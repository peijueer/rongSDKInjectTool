.class Lcom/lzy/okhttputils/request/BaseRequest$4;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/request/BaseRequest;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

.field final synthetic val$isFromCache:Z

.field final synthetic val$response:Lokhttp3/Response;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest;ZLcom/lzy/okhttputils/callback/AbsCallback;Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iput-boolean p2, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$isFromCache:Z

    iput-object p3, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iput-object p4, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    iput-object p5, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$call:Lokhttp3/Call;

    iput-object p6, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 575
    iget-boolean v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$isFromCache:Z

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$call:Lokhttp3/Call;

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okhttputils/callback/AbsCallback;->onCacheSuccess(Ljava/lang/Object;Lokhttp3/Call;)V

    .line 577
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->REQUEST_FAILED_READ_CACHE:Lcom/lzy/okhttputils/cache/CacheMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v0, v0, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v1, Lcom/lzy/okhttputils/cache/CacheMode;->IF_NONE_CACHE_REQUEST:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v0, v1, :cond_1

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/lzy/okhttputils/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 584
    :cond_1
    :goto_0
    return-void

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$call:Lokhttp3/Call;

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$response:Lokhttp3/Response;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzy/okhttputils/callback/AbsCallback;->onSuccess(Ljava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)V

    .line 582
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$callback:Lcom/lzy/okhttputils/callback/AbsCallback;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$4;->val$t:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/lzy/okhttputils/callback/AbsCallback;->onAfter(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
