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
    .line 51
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ILjava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 54
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anzhi callback code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    packed-switch p1, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z
    invoke-static {v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 58
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 59
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    const/4 v8, 0x1

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z
    invoke-static {v7, v8}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Z)Z

    .line 61
    :cond_0
    invoke-static {p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initSuccessCallBack(Ljava/lang/String;)V

    .line 62
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    invoke-static {v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v7

    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->addPop(Landroid/app/Activity;)V

    goto :goto_0

    .line 66
    :pswitch_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "json":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 68
    const-string v7, "cptoken"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "cptoken":Ljava/lang/String;
    const-string v7, "deviceId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "deviceId":Ljava/lang/String;
    const-string v7, "requestUrl"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "requestUrl":Ljava/lang/String;
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "anzhi cptoken=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";deviceId=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";requestUrl=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v6, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;

    invoke-direct {v6}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;-><init>()V

    .line 74
    .local v6, "rongUserInfo":Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;
    invoke-virtual {v6, v0}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setCptoken(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6, v2}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setDeviceId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v6, v5}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setRequestUrl(Ljava/lang/String;)V

    .line 80
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 81
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "userinfo"

    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;
    invoke-static {v8}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v7, "channelversion"

    const/16 v8, 0x193

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v8, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;

    invoke-direct {v9, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V

    invoke-virtual {v7, v8, v4, v9}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto/16 :goto_0

    .line 124
    .end local v0    # "cptoken":Ljava/lang/String;
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "requestUrl":Ljava/lang/String;
    .end local v6    # "rongUserInfo":Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 121
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "code_desc"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "desc":Ljava/lang/String;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginFailedCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 128
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    :pswitch_2
    invoke-static {}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->logoutCallBack()V

    goto/16 :goto_0

    .line 131
    :pswitch_3
    invoke-static {p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallBack(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :pswitch_4
    invoke-static {p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallBack(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :pswitch_5
    const-string v7, "exitgame success"

    invoke-static {v7}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameSuccessCallBack(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :pswitch_6
    const-string v7, "exitgame cancel"

    invoke-static {v7}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameFailedCallBack(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
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
