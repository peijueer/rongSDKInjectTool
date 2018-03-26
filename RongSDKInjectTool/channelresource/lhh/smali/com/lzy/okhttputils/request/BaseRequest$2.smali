.class Lcom/lzy/okhttputils/request/BaseRequest$2;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest;->execute(Lcom/lzy/okhttputils/callback/AbsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/request/BaseRequest;

.field final synthetic val$finalCacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttputils/cache/CacheEntity;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iput-object p2, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->val$finalCacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 6

    .prologue
    .line 465
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okhttputils/callback/AbsCallback;->parseNetworkFail(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 467
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v2}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v2, p1

    move-object v4, p2

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 470
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 474
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    .line 476
    const/16 v2, 0x130

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v2, v2, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    sget-object v3, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne v2, v3, :cond_3

    .line 477
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->val$finalCacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const-string v2, "\u670d\u52a1\u5668\u54cd\u5e94\u7801304\uff0c\u4f46\u662f\u5ba2\u6237\u7aef\u6ca1\u6709\u7f13\u5b58\uff01"

    invoke-static {v2}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v2}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    .line 507
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->val$finalCacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 481
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->val$finalCacheEntity:Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v0

    .line 482
    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const-string v2, "\u6ca1\u6709\u83b7\u53d6\u5230\u7f13\u5b58,\u6216\u8005\u7f13\u5b58\u5df2\u7ecf\u8fc7\u671f!"

    invoke-static {v2}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    iget-object v2, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v2}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v3}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$200(Lcom/lzy/okhttputils/request/BaseRequest;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0

    .line 492
    :cond_3
    const/16 v1, 0x194

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_5

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const-string v1, "\u670d\u52a1\u5668\u6570\u636e\u5f02\u5e38!"

    invoke-static {v1}, Lcom/lzy/okhttputils/exception/OkHttpException;->INSTANCE(Ljava/lang/String;)Lcom/lzy/okhttputils/exception/OkHttpException;

    move-result-object v4

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v1}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move v1, v6

    move-object v2, p1

    move-object v3, p2

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto :goto_0

    .line 498
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lzy/okhttputils/callback/AbsCallback;->parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v2

    .line 500
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->handleCache(Lokhttp3/Headers;Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/lzy/okhttputils/request/BaseRequest;->access$300(Lcom/lzy/okhttputils/request/BaseRequest;Lokhttp3/Headers;Ljava/lang/Object;)V

    .line 502
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v3}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->sendSuccessResultCallback(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$200(Lcom/lzy/okhttputils/request/BaseRequest;ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v4

    .line 505
    iget-object v0, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    iget-object v1, p0, Lcom/lzy/okhttputils/request/BaseRequest$2;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    # getter for: Lcom/lzy/okhttputils/request/BaseRequest;->mCallback:Lcom/lzy/okhttputils/callback/AbsCallback;
    invoke-static {v1}, Lcom/lzy/okhttputils/request/BaseRequest;->access$000(Lcom/lzy/okhttputils/request/BaseRequest;)Lcom/lzy/okhttputils/callback/AbsCallback;

    move-result-object v5

    move v1, v6

    move-object v2, p1

    move-object v3, p2

    # invokes: Lcom/lzy/okhttputils/request/BaseRequest;->sendFailResultCallback(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/lzy/okhttputils/request/BaseRequest;->access$100(Lcom/lzy/okhttputils/request/BaseRequest;ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Exception;Lcom/lzy/okhttputils/callback/AbsCallback;)V

    goto/16 :goto_0
.end method
