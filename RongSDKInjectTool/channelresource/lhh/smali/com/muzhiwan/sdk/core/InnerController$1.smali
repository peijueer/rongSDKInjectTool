.class Lcom/muzhiwan/sdk/core/InnerController$1;
.super Ljava/lang/Object;
.source "InnerController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muzhiwan/sdk/core/InnerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muzhiwan/sdk/core/InnerController;


# direct methods
.method constructor <init>(Lcom/muzhiwan/sdk/core/InnerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/muzhiwan/sdk/core/InnerController;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x1

    .line 111
    invoke-static {p2}, Lcom/muzhiwan/sdk/service/IMzwService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/muzhiwan/sdk/service/IMzwService;

    move-result-object v0

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$302(Lcom/muzhiwan/sdk/service/IMzwService;)Lcom/muzhiwan/sdk/service/IMzwService;

    .line 112
    invoke-static {v3}, Lcom/muzhiwan/sdk/core/InnerController;->access$102(Z)Z

    .line 113
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client service connected..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$400(Lcom/muzhiwan/sdk/core/InnerController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$500(Lcom/muzhiwan/sdk/core/InnerController;)Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$500(Lcom/muzhiwan/sdk/core/InnerController;)Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mzw sdk init failed"

    invoke-interface {v0, v1, v2}, Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;->onResult(ILjava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$600(Lcom/muzhiwan/sdk/core/InnerController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getInitConfigSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v1}, Lcom/muzhiwan/sdk/core/InnerController;->access$400(Lcom/muzhiwan/sdk/core/InnerController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0}, Lcom/muzhiwan/sdk/core/InnerController;->getForce_update()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 123
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$700(Lcom/muzhiwan/sdk/core/InnerController;)V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$800(Lcom/muzhiwan/sdk/core/InnerController;)V

    .line 126
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$500(Lcom/muzhiwan/sdk/core/InnerController;)Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/InnerController$1;->this$0:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$500(Lcom/muzhiwan/sdk/core/InnerController;)Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    move-result-object v0

    const-string v1, "mzw sdk init success"

    invoke-interface {v0, v3, v1}, Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/muzhiwan/sdk/core/InnerController;->access$102(Z)Z

    .line 106
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client service disconnected..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
