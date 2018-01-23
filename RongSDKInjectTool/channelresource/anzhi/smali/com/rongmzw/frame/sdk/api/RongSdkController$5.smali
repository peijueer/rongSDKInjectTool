.class Lcom/rongmzw/frame/sdk/api/RongSdkController$5;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callPay(Lcom/rongmzw/frame/sdk/domain/local/RongOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

.field final synthetic val$productDesc:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iput-object p2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->val$productName:Ljava/lang/String;

    iput-object p4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->val$productDesc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v0, "network error"

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payFailedCallBack(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    invoke-static {v4, v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3702(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    .line 222
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "amount"

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->getAmount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    const-string v3, "productCode"

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->val$productId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v3, "productName"

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->val$productName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v3, "cpCustomInfo"

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->val$productDesc:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v3, "productCount"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v3, "cpOrderId"

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->getOrder_no()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v3, "wangzhixin"

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->getOrder_no()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v3, "cpOrderTime"

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->payResponse:Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->getOrder_no()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->anzhiSDK:Lcom/anzhi/sdk/middle/manage/AnzhiSDK;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/anzhi/sdk/middle/manage/AnzhiSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/rongmzw/frame/sdk/util/Des3Util;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->appSecret:Ljava/lang/String;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/anzhi/sdk/middle/manage/AnzhiSDK;->pay(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 233
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
