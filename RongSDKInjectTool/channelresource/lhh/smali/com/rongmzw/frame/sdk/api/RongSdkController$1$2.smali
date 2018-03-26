.class Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/zqhy/sdk/callback/InitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 115
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitFailure...message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .prologue
    .line 108
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInitSuccess..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    const-string v1, "init success..."

    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initCallBack(ILjava/lang/String;)V

    .line 110
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->lehihiGameSDKApi:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2200()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v1, v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v1, v1, Lcom/rongmzw/frame/sdk/api/RongSdkController;->reLoginCallBack:Lcom/zqhy/sdk/callback/ReLoginCallBack;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->registerReLoginCallBack(Lcom/zqhy/sdk/callback/ReLoginCallBack;)V

    .line 111
    return-void
.end method
