.class Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->callBack(ILjava/lang/String;)V
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
    .line 67
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "binding  failed..."

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginFailedCallBack(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v5, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gson:Lcom/google/gson/Gson;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v4

    const-class v6, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    invoke-virtual {v4, p2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    # setter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v5, v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .line 72
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getErr_no()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "token":Ljava/lang/String;
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getBindurl()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getMzwid()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "mzwid":Ljava/lang/String;
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "mzw_spf"

    const-string v6, "bindurl"

    invoke-static {v4, v5, v6, v3}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "mzw_spf"

    const-string v6, "mzwid"

    invoke-static {v4, v5, v6, v1}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1400(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "mzw_spf"

    const-string v6, "mzwid_bind_state"

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v7, v7, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v7}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1500(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getBindstate()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1600(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->addMzwId(Landroid/app/Activity;Ljava/lang/String;)V

    .line 80
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->initResponse:Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1700(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/InitResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->getSwitchX()I

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1800(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getBindstate()I

    move-result v4

    if-nez v4, :cond_0

    .line 82
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/rongmzw/frame/sdk/activity/WebActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "token"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v4, "url"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v4, "mzwid"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->gameActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mzwid":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 88
    .restart local v1    # "mzwid":Ljava/lang/String;
    .restart local v2    # "token":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginSuccessCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginSuccessCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v1    # "mzwid":Ljava/lang/String;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v4, v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginResponse:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getErr_msg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginFailedCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method
