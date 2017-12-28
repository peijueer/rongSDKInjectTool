.class Lcom/iqiyi/sdk/platform/GamePushAdsService$2;
.super Ljava/lang/Thread;
.source "GamePushAdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyi/sdk/platform/GamePushAdsService;->pushAds(Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$strUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    iput-object p2, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;->val$strUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 176
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 177
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;->val$strUrl:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 180
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 182
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;->val$handler:Landroid/os/Handler;

    const/4 v6, 0x1

    .line 183
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 184
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 195
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 186
    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    const-string v5, "Warning"

    const-string v6, "Connect failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 188
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
