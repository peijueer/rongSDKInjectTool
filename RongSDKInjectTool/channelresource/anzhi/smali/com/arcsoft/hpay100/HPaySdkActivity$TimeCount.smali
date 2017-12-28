.class Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method public constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$0(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$0(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$0(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u65b0\u83b7\u53d6"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$0(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
