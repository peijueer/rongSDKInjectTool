.class Lcom/rongmzw/frame/sdk/api/RongSdkController$1;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/iqiyi/sdk/platform/GamePlatformInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callInit(Landroid/app/Activity;ILcom/rongmzw/frame/sdk/callback/RongCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

.field final synthetic val$gameActivity:Landroid/app/Activity;

.field final synthetic val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;Lcom/rongmzw/frame/sdk/callback/RongCallback;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    iput-object p2, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    iput-object p3, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$gameActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init failed because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "init success"

    invoke-interface {v0, v1, v2, v3}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/iqiyi/sdk/platform/GamePlatform;

    move-result-object v0

    new-instance v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;

    invoke-direct {v1, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$1;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V

    invoke-virtual {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatform;->addLoginListener(Lcom/iqiyi/sdk/listener/LoginListener;)V

    .line 93
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->iqiyiGamePlatform:Lcom/iqiyi/sdk/platform/GamePlatform;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/iqiyi/sdk/platform/GamePlatform;

    move-result-object v0

    new-instance v1, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;

    invoke-direct {v1, p0}, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;-><init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V

    invoke-virtual {v0, v1}, Lcom/iqiyi/sdk/platform/GamePlatform;->addPaymentListener(Lcom/iqiyi/sdk/listener/PayListener;)V

    .line 108
    return-void
.end method
