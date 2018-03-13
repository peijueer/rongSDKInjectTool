.class Lcom/zqhy/sdk/ui/FloatWindowManager$4;
.super Landroid/os/Handler;
.source "FloatWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/FloatWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/FloatWindowManager;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/FloatWindowManager;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x7d0

    .line 317
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    iget-object v0, v0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/FloatWindowManager;->access$300(Lcom/zqhy/sdk/ui/FloatWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    iget-object v0, v0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/FloatWindowManager;->access$400(Lcom/zqhy/sdk/ui/FloatWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    iget-object v0, v0, Lcom/zqhy/sdk/ui/FloatWindowManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/FloatWindowManager$4;->a:Lcom/zqhy/sdk/ui/FloatWindowManager;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/FloatWindowManager;->access$500(Lcom/zqhy/sdk/ui/FloatWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
