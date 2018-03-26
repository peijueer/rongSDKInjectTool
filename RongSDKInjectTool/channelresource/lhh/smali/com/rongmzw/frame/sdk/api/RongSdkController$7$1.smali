.class Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 425
    const-string v0, "binding  failed..."

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginFailedCallBack(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v5, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v4

    const-class v6, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    invoke-virtual {v4, p2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v5, v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4302(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .line 396
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v5, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v5, v5, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v5

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    invoke-static {v4, v5}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    .line 397
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getErr_no()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 398
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "token":Ljava/lang/String;
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindurl()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getMzwid()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "mzwid":Ljava/lang/String;
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "mzw_spf"

    const-string v6, "bindurl"

    invoke-static {v4, v5, v6, v3}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "mzw_spf"

    const-string v6, "mzwid"

    invoke-static {v4, v5, v6, v1}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "mzw_spf"

    const-string v6, "mzwid_bind_state"

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v7, v7, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    invoke-static {v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getBindstate()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 404
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->addMzwId(Landroid/app/Activity;Ljava/lang/String;)V

    .line 405
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponseDataBean:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getBindstate()I

    move-result v4

    if-nez v4, :cond_0

    .line 407
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$5900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/rongmzw/frame/sdk/activity/WebActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "token"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v4, "url"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v4, "mzwid"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$6000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 421
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mzwid":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 413
    .restart local v1    # "mzwid":Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$6100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginSuccessCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$6200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginSuccessCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v1    # "mzwid":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$7;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$6300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getErr_msg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginFailedCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method
