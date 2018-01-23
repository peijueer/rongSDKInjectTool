.class Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/ar;


# instance fields
.field private mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method public constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;)V
    .locals 1

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-void
.end method


# virtual methods
.method public chanage()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, ""

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mYzmRegx:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mIsDYInput:Z
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$15(Lcom/arcsoft/hpay100/HPaySdkActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$16(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$16(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$16(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$16(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$16(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    instance-of v1, v2, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
