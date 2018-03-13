.class Lcom/rongmzw/frame/sdk/api/RongSdkController$4;
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

.field final synthetic val$rongMzwOrder:Lcom/rongmzw/frame/sdk/domain/local/RongOrder;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/local/RongOrder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iput-object p2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->val$rongMzwOrder:Lcom/rongmzw/frame/sdk/domain/local/RongOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 238
    const-string v0, "network error"

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payFailedCallBack(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    invoke-static {v2, v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2402(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    .line 186
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    const-string v1, "network error"

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payFailedCallBack(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2702(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    .line 190
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 191
    const-string v1, "network error"

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payFailedCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    const-string v2, "mzw_serverid"

    invoke-static {v1, v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3002(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    const-string v2, "mzw_servername"

    invoke-static {v1, v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3102(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    const-string v2, "mzw_roleid"

    invoke-static {v1, v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3202(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    :cond_4
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    const-string v2, "mzw_rolename"

    invoke-static {v1, v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3302(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    :cond_5
    new-instance v0, Lcom/zqhy/sdk/model/PayParams;

    invoke-direct {v0}, Lcom/zqhy/sdk/model/PayParams;-><init>()V

    .line 206
    .local v0, "payParams":Lcom/zqhy/sdk/model/PayParams;
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->getOrder_no()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->extendsinfo:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->username:Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->token:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->serverid:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;->getAmount()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/zqhy/sdk/model/PayParams;->amount:F

    .line 211
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->role_id:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->role_name:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->val$rongMzwOrder:Lcom/rongmzw/frame/sdk/domain/local/RongOrder;

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->getProductName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->product_name:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zqhy/sdk/model/PayParams;->servername:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2200()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    move-result-object v1

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/rongmzw/frame/sdk/api/RongSdkController$4$1;

    invoke-direct {v3, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$4$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$4;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->pay(Landroid/app/Activity;Lcom/zqhy/sdk/model/PayParams;Lcom/zqhy/sdk/callback/PayCallBack;)V

    goto/16 :goto_0
.end method
