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
    .line 40
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ILjava/lang/String;)V
    .locals 12
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 43
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "anzhi callback code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 48
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->hasLoopered:Z
    invoke-static {v5, v8}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Z)Z

    .line 50
    :cond_0
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v5, v6, v8, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 51
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v5

    iget-object v6, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->addPop(Landroid/app/Activity;)V

    goto :goto_0

    .line 55
    :pswitch_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "json":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 57
    const-string v5, "cptoken"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "cptoken":Ljava/lang/String;
    const-string v5, "deviceId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "deviceId":Ljava/lang/String;
    const-string v5, "requestUrl"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "requestUrl":Ljava/lang/String;
    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "anzhi cptoken=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";deviceId=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";requestUrl=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "login success"

    invoke-interface {v5, v6, v7, v8}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 67
    .end local v0    # "cptoken":Ljava/lang/String;
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "requestUrl":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 64
    .restart local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v5, "code_desc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "desc":Ljava/lang/String;
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, v1}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 71
    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    :pswitch_2
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    const/4 v6, 0x6

    const-string v7, "logout success"

    invoke-interface {v5, v8, v6, v7}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :pswitch_3
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    invoke-interface {v5, v10, p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :pswitch_4
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    invoke-interface {v5, v10, p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 80
    :pswitch_5
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    const-string v6, "exitgame success"

    invoke-interface {v5, v11, v8, v6}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :pswitch_6
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v5

    const-string v6, "exitgame cancel"

    invoke-interface {v5, v11, v9, v6}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 44
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
