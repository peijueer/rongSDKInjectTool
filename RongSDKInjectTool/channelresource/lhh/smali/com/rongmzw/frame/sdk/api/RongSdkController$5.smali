.class Lcom/rongmzw/frame/sdk/api/RongSdkController$5;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/zqhy/sdk/callback/ExitCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callExitGame()V
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
    .line 342
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 357
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public onContinueGame()V
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onContinueGame"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method

.method public onExit()V
    .locals 2

    .prologue
    .line 345
    invoke-static {}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onExit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$5;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$3900(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 347
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 348
    return-void
.end method
