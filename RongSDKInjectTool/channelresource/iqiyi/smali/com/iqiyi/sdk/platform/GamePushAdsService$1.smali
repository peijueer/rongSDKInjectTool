.class Lcom/iqiyi/sdk/platform/GamePushAdsService$1;
.super Landroid/os/Handler;
.source "GamePushAdsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/sdk/platform/GamePushAdsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;


# direct methods
.method constructor <init>(Lcom/iqiyi/sdk/platform/GamePushAdsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iqiyi/sdk/platform/GamePushAdsService;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$1;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v1, p0, Lcom/iqiyi/sdk/platform/GamePushAdsService$1;->this$0:Lcom/iqiyi/sdk/platform/GamePushAdsService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/iqiyi/sdk/platform/GamePushAdsService;->notificationInfo(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/iqiyi/sdk/platform/GamePushAdsService;->access$000(Lcom/iqiyi/sdk/platform/GamePushAdsService;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
