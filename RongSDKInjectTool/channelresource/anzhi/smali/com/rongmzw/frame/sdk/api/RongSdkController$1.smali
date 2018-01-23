.class Lcom/rongmzw/frame/sdk/api/RongSdkController$1;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/anzhi/sdk/middle/manage/GameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 47
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anzhi callback code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z
    invoke-static {v6}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 51
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 52
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    const/4 v7, 0x1

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z
    invoke-static {v6, v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Z)Z

    .line 54
    :cond_0
    invoke-static {p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initSuccessCallBack(Ljava/lang/String;)V

    .line 55
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    invoke-static {v6}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v6

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->addPop(Landroid/app/Activity;)V

    goto :goto_0

    .line 59
    :pswitch_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, "json":Lorg/json/JSONObject;
    const-string v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 61
    const-string v6, "cptoken"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "cptoken":Ljava/lang/String;
    const-string v6, "deviceId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "deviceId":Ljava/lang/String;
    const-string v6, "requestUrl"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "requestUrl":Ljava/lang/String;
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anzhi cptoken=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";deviceId=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";requestUrl=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"cptoken\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\"deviceId\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\"requestUrl\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "userInfo":Ljava/lang/String;
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;

    invoke-direct {v8, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V

    invoke-virtual {v6, v7, v5, v8}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto/16 :goto_0

    .line 107
    .end local v0    # "cptoken":Ljava/lang/String;
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "requestUrl":Ljava/lang/String;
    .end local v5    # "userInfo":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 104
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v6, "code_desc"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "desc":Ljava/lang/String;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginFailedCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 111
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    :pswitch_2
    invoke-static {}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->logoutCallBack()V

    goto/16 :goto_0

    .line 114
    :pswitch_3
    invoke-static {p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallBack(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :pswitch_4
    invoke-static {p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallBack(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :pswitch_5
    const-string v6, "exitgame success"

    invoke-static {v6}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameSuccessCallBack(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :pswitch_6
    const-string v6, "exitgame cancel"

    invoke-static {v6}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameFailedCallBack(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
