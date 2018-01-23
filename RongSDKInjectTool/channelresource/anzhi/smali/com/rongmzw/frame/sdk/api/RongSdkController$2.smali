.class Lcom/rongmzw/frame/sdk/api/RongSdkController$2;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callInit(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/callback/RongCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

.field final synthetic val$gameActivity:Landroid/app/Activity;

.field final synthetic val$screenOrientation:I


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iput-object p2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->val$gameActivity:Landroid/app/Activity;

    iput p3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->val$screenOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-static {p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initFailedCallBack(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v1, v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2602(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    .line 156
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mzw callInit......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/muzhiwan/sdk/core/MzwSdkController;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->val$gameActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->val$screenOrientation:I

    new-instance v3, Lcom/rongmzw/frame/sdk/api/RongSdkController$2$1;

    invoke-direct {v3, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$2$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/muzhiwan/sdk/core/MzwSdkController;->init(Landroid/app/Activity;ILcom/muzhiwan/sdk/core/callback/MzwInitCallback;)V

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_1
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anzhi callInit......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getParams()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->getAppkey()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getParams()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->getSecret()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3402(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->val$gameActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->appkey:Ljava/lang/String;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->callback:Lcom/anzhi/sdk/middle/manage/GameCallBack;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/GameCallBack;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/anzhi/sdk/middle/manage/GameCallBack;)V

    goto :goto_0
.end method
