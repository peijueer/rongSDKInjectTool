.class Lcom/arcsoft/hpay100/HPaySdkAPI$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$scheme:I

.field private final synthetic val$submitCodeEd:Landroid/widget/EditText;

.field private final synthetic val$timeCountYJDY:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/os/CountDownTimer;I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$submitCodeEd:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$timeCountYJDY:Landroid/os/CountDownTimer;

    iput p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$scheme:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$activity:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u9a8c\u8bc1\u7801\uff0c\u8bf7\u7a0d\u540e"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$17(Landroid/app/Activity;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$submitCodeEd:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$submitCodeEd:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$timeCountYJDY:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$timeCountYJDY:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$scheme:I

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v6, "1"

    const-string v7, ""

    const/4 v8, 0x6

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$activity:Landroid/app/Activity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v11, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$scheme:I

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v13, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget v14, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v15, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    const-string v16, ""

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget v9, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$12;->val$scheme:I

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const/4 v8, 0x6

    invoke-direct/range {v1 .. v8}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v10, v1

    invoke-static/range {v2 .. v10}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
