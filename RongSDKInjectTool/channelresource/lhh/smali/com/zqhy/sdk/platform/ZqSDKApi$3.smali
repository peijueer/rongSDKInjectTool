.class Lcom/zqhy/sdk/platform/ZqSDKApi$3;
.super Ljava/lang/Object;
.source "ZqSDKApi.java"

# interfaces
.implements Lcom/zqhy/sdk/callback/PollingCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/platform/ZqSDKApi;->init(Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

.field final synthetic val$appkey:Ljava/lang/String;

.field final synthetic val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

.field final synthetic val$pid:I

.field final synthetic val$t:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/platform/ZqSDKApi;Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iput-object p2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$t:Landroid/app/Activity;

    iput p3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$pid:I

    iput-object p4, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$appkey:Ljava/lang/String;

    iput-object p5, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/InitCallBack;->onInitFailure(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    .line 194
    const-string v0, "pollingUrls onSuccess"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constant.httpUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zqhy/sdk/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->this$0:Lcom/zqhy/sdk/platform/ZqSDKApi;

    iget-object v1, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$t:Landroid/app/Activity;

    iget v2, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$pid:I

    iget-object v3, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$appkey:Ljava/lang/String;

    iget-object v4, p0, Lcom/zqhy/sdk/platform/ZqSDKApi$3;->val$initCallBack:Lcom/zqhy/sdk/callback/InitCallBack;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zqhy/sdk/platform/ZqSDKApi;->doInit(Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V

    .line 197
    return-void
.end method
