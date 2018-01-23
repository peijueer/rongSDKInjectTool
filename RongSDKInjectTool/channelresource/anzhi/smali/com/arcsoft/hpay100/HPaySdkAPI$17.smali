.class Lcom/arcsoft/hpay100/HPaySdkAPI$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private final synthetic val$submitCodeEd:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$submitCodeEd:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$submitCodeEd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$activity:Landroid/app/Activity;

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->toast(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$activity:Landroid/app/Activity;

    const-string v2, "\u652f\u4ed8\u8fdb\u884c\u4e2d,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$17(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    new-instance v3, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDSubmitYZM;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$17;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/16 v7, 0xc

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDSubmitYZM;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    invoke-static {v1, v2, v0, v3}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/b;)V

    goto :goto_0
.end method
