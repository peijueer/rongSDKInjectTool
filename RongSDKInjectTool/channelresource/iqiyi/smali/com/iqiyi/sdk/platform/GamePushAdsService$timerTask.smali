.class Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;
.super Ljava/util/TimerTask;
.source "GamePushAdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/sdk/platform/GamePushAdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "timerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;


# direct methods
.method constructor <init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 202
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    iget-object v6, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$100(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->game_id:Ljava/lang/String;
    invoke-static {v7}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$200(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->pushAds(Landroid/os/Handler;Ljava/lang/String;)V

    .line 203
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->mThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$300(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 205
    :try_start_0
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->mThread:Ljava/lang/Thread;
    invoke-static {v5}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$300(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    invoke-virtual {v5}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    .line 213
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 216
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .line 217
    invoke-virtual {v6}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .line 220
    invoke-virtual {v6}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .line 221
    invoke-virtual {v7}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "pps_push_ads"

    invoke-static {v7, v8}, Lcom/iqiyigame/plugin/utils/GameResourcesUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 220
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 219
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .line 222
    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->open_content:Ljava/lang/String;
    invoke-static {v6}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$400(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 223
    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 224
    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 226
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->download_mode:I
    invoke-static {v5}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$500(Lcom/iqiyi/sdk/platform/GamePushAdsService;)I

    move-result v5

    if-eq v5, v9, :cond_0

    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->download_mode:I
    invoke-static {v5}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$500(Lcom/iqiyi/sdk/platform/GamePushAdsService;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->download_mode:I
    invoke-static {v5}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$500(Lcom/iqiyi/sdk/platform/GamePushAdsService;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 227
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .line 228
    # getter for: Lcom/iqiyi/sdk/platform/GamePushAdsService;->open_url:Ljava/lang/String;
    invoke-static {v6}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$600(Lcom/iqiyi/sdk/platform/GamePushAdsService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$timerTask;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .line 230
    invoke-virtual {v5}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 229
    invoke-static {v5, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 231
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 232
    const/16 v5, 0x234

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    return-void

    .line 206
    .end local v0    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
