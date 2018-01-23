.class Lcom/arcsoft/hpay100/HPaySdkActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$19(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "input:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVInputPhoneTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$20(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVInputPhoneTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$20(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVInputPhoneTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$20(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "\u8bf7\u8f93\u5165\u5f85\u652f\u4ed8\u624b\u673a\u53f7\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$21(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u9a8c\u8bc1\u7801\uff0c\u8bf7\u7a0d\u540e"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$22(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v2

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$7(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYSubmitPhone:Ljava/lang/String;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$23(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mCodeType:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$6(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    new-instance v8, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderOne;

    iget-object v9, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {v8, v9, v10}, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderOne;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    invoke-static/range {v0 .. v8}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v2

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$3;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v4

    const-string v5, "1"

    const-string v6, ""

    move v7, v10

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
