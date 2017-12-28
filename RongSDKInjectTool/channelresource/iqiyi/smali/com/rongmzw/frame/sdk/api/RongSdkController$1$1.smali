.class Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/iqiyi/sdk/listener/LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->onSuccess()V
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
    .line 64
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitGame()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const-string v3, "exit game success"

    invoke-interface {v0, v1, v2, v3}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$gameActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 90
    return-void
.end method

.method public loginResult(ILcom/iqiyi/sdk/platform/GameUser;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "gameUser"    # Lcom/iqiyi/sdk/platform/GameUser;

    .prologue
    const/4 v3, 0x1

    .line 67
    if-ne p1, v3, :cond_0

    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/iqiyi/sdk/platform/GamePlatform;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v1, v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$gameActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatform;->initSliderBar(Landroid/app/Activity;)V

    .line 69
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/iqiyi/sdk/platform/GameUser;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/iqiyi/sdk/platform/GameUser;->timestamp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sign : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/iqiyi/sdk/platform/GameUser;->sign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # invokes: Lcom/rongmzw/frame/sdk/api/RongSdkController;->getUserType()V
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    .line 74
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const-string v1, "login success"

    invoke-interface {v0, v3, v3, v1}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x0

    const-string v2, "login failed"

    invoke-interface {v0, v3, v1, v2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x1

    const/4 v2, 0x6

    const-string v3, "logout success"

    invoke-interface {v0, v1, v2, v3}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 83
    return-void
.end method
