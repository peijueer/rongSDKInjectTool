.class Lcom/rongmzw/frame/sdk/api/RongSdkController$1;
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
    .line 79
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iput-object p2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$gameActivity:Landroid/app/Activity;

    iput p3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$screenOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initFailedCallBack(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v1, v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    .line 84
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v1

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$402(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    .line 85
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindstate()I

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mzw callInit......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->mzwSdkController:Lcom/muzhiwan/sdk/core/MzwSdkController;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/muzhiwan/sdk/core/MzwSdkController;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$gameActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$screenOrientation:I

    new-instance v3, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;

    invoke-direct {v3, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/muzhiwan/sdk/core/MzwSdkController;->init(Landroid/app/Activity;ILcom/muzhiwan/sdk/core/callback/MzwInitCallback;)V

    .line 122
    :goto_0
    return-void

    .line 95
    :cond_1
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lhh callInit......"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getParams()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    move-result-object v1

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    .line 97
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->getExtra()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    move-result-object v1

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsExtraBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;
    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    .line 99
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsExtraBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsExtraBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean$ExtraBean;->getPid()I

    move-result v0

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->strPid:I
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1802(I)I

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataParamsBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;->getAppkey()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->strAppkey:Ljava/lang/String;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2002(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    :cond_3
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->lehihiGameSDKApi:Lcom/zqhy/sdk/platform/LehihiGameSDKApi;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2200()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$gameActivity:Landroid/app/Activity;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->strPid:I
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1800()I

    move-result v2

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->strAppkey:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;

    invoke-direct {v4, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->init(Landroid/app/Activity;ILjava/lang/String;Lcom/zqhy/sdk/callback/InitCallBack;)V

    goto :goto_0

    .line 120
    :cond_4
    const-string v0, "init failed, server data error..."

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initFailedCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method
