.class Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;
.super Ljava/util/TimerTask;
.source "GamePushAdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/sdk/platform/GamePushAdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tt"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;


# direct methods
.method constructor <init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    iget-object v2, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$100(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->game_id:Ljava/lang/String;
    invoke-static {v3}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$200(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->pushAds(Landroid/os/Handler;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->mThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$300(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->mThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$300(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$tt;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # invokes: Lcom/iqiyi/sdk/platform/GamePushAdsService;->startTimer()V
    invoke-static {v1}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$700(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V

    .line 252
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
