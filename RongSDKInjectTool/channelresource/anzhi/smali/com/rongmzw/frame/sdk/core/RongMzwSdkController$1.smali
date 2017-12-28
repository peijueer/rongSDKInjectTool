.class Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;
.super Ljava/lang/Object;
.source "RongMzwSdkController.java"

# interfaces
.implements Lcom/anzhi/sdk/middle/manage/GameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ILjava/lang/String;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 47
    const-string v2, "Anzhi_SDK_TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 49
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 51
    :pswitch_1
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwInitCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->access$000(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;

    move-result-object v2

    invoke-interface {v2, v5, p2}, Lcom/rongmzw/frame/sdk/core/callback/RongMzwInitCallback;->onResult(ILjava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->access$200(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v2

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->access$100(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->addPop(Landroid/app/Activity;)V

    goto :goto_0

    .line 56
    :pswitch_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 58
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwLoignCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->access$300(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "login success"

    invoke-interface {v2, v3, v4}, Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 60
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "code_desc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "desc":Ljava/lang/String;
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwLoignCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->access$300(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lcom/rongmzw/frame/sdk/core/callback/RongMzwLoignCallback;->onResult(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "json":Lorg/json/JSONObject;
    :pswitch_3
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->rongMzwPayCallback:Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;->access$400(Lcom/rongmzw/frame/sdk/core/RongMzwSdkController;)Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/rongmzw/frame/sdk/core/callback/RongMzwPayCallback;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
