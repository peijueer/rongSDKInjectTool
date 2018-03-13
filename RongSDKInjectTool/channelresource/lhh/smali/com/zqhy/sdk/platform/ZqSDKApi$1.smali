.class Lcom/zqhy/sdk/platform/ZqSDKApi$1;
.super Landroid/os/Handler;
.source "ZqSDKApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->pollingUrls(Lcom/zqhy/sdk/callback/PollingCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$pollingCallBack:Lcom/zqhy/sdk/callback/PollingCallBack;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Lcom/zqhy/sdk/callback/PollingCallBack;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$1;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$1;->val$pollingCallBack:Lcom/zqhy/sdk/callback/PollingCallBack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 147
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$1;->val$pollingCallBack:Lcom/zqhy/sdk/callback/PollingCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PollingCallBack;->onSuccess()V

    goto :goto_0

    .line 143
    :pswitch_1
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$1;->val$pollingCallBack:Lcom/zqhy/sdk/callback/PollingCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PollingCallBack;->onFailure()V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
