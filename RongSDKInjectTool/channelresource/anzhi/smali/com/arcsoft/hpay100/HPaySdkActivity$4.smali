.class Lcom/arcsoft/hpay100/HPaySdkActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$16(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const-string v2, "\u652f\u4ed8\u8fdb\u884c\u4e2d\uff0c\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$22(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    new-instance v3, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYSubmitYZM;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$4;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYSubmitYZM;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;I)V

    invoke-static {v1, v2, v0, v3}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/b;)V

    goto :goto_0
.end method
