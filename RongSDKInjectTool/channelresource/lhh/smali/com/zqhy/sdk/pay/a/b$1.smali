.class Lcom/zqhy/sdk/pay/a/b$1;
.super Landroid/os/Handler;
.source "AliPayInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/pay/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/pay/a/b;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/pay/a/b;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zqhy/sdk/pay/a/b$1;->a:Lcom/zqhy/sdk/pay/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 43
    :pswitch_0
    new-instance v1, Lcom/zqhy/sdk/pay/a/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/zqhy/sdk/pay/a/c;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v0, v1, Lcom/zqhy/sdk/pay/a/c;->a:Ljava/lang/String;

    .line 47
    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/zqhy/sdk/pay/a/b$1;->a:Lcom/zqhy/sdk/pay/a/b;

    invoke-static {v0}, Lcom/zqhy/sdk/pay/a/b;->a(Lcom/zqhy/sdk/pay/a/b;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/zqhy/sdk/pay/a/b$1;->a:Lcom/zqhy/sdk/pay/a/b;

    invoke-static {v0}, Lcom/zqhy/sdk/pay/a/b;->a(Lcom/zqhy/sdk/pay/a/b;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/pay/a/b$1;->a:Lcom/zqhy/sdk/pay/a/b;

    invoke-static {v0}, Lcom/zqhy/sdk/pay/a/b;->a(Lcom/zqhy/sdk/pay/a/b;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v0, p0, Lcom/zqhy/sdk/pay/a/b$1;->a:Lcom/zqhy/sdk/pay/a/b;

    invoke-static {v0}, Lcom/zqhy/sdk/pay/a/b;->a(Lcom/zqhy/sdk/pay/a/b;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u68c0\u67e5\u7ed3\u679c\u4e3a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
