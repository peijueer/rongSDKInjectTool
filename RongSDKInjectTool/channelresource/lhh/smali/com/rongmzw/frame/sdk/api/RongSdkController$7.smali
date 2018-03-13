.class Lcom/rongmzw/frame/sdk/api/RongSdkController$7;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/zqhy/sdk/callback/LoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->login()V
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
    .line 376
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .locals 2

    .prologue
    .line 437
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLoginCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public onLoginFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoginFailure message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v2, p2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3502(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v2, p3}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3602(Lcom/rongmzw/frame/sdk/api/RongSdkController;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoginSuccess-->uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v1, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;

    invoke-direct {v1}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;-><init>()V

    .line 383
    .local v1, "rongUserInfo":Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;
    invoke-virtual {v1, p1}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setUid(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v1, p2}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setUsername(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v1, p3}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setCptoken(Ljava/lang/String;)V

    .line 386
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setDeviceId(Ljava/lang/String;)V

    .line 387
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->setRequestUrl(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4000(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 389
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "userinfo"

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4100(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v2, "channelversion"

    const/16 v3, 0x50

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$7;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v3}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$4200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;

    invoke-direct {v4, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$7$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$7;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->loginRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 428
    return-void
.end method
