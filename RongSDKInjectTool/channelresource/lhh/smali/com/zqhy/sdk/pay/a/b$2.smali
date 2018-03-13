.class Lcom/zqhy/sdk/pay/a/b$2;
.super Ljava/lang/Object;
.source "AliPayInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/pay/a/b;->a(Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/zqhy/sdk/pay/a/b;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/pay/a/b;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zqhy/sdk/pay/a/b$2;->d:Lcom/zqhy/sdk/pay/a/b;

    iput-object p2, p0, Lcom/zqhy/sdk/pay/a/b$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/zqhy/sdk/pay/a/b$2;->b:I

    iput-object p4, p0, Lcom/zqhy/sdk/pay/a/b$2;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/zqhy/sdk/pay/a/b$2;->d:Lcom/zqhy/sdk/pay/a/b;

    invoke-static {v1}, Lcom/zqhy/sdk/pay/a/b;->a(Lcom/zqhy/sdk/pay/a/b;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/pay/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zqhy/sdk/pay/a/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zqhy/sdk/pay/a/b$2;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 86
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 87
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/zqhy/sdk/pay/a/b$2;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    return-void
.end method
