.class Lcom/arcsoft/hpay100/HPaySdkAPI$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private final synthetic val$yzm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/HPaySMS;Landroid/app/Activity;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/config/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$yzm:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object p5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v2, 0x0

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u8fdb\u884c\u4e2d,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$17(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v7, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v8, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$yzm:Ljava/lang/String;

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ZLcom/arcsoft/hpay100/HPaySdkCallback;I)V

    invoke-static {v6, v7, v8, v0}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u8fdb\u884c\u4e2d,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$17(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startSZLKFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v1, v2, v5}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$3(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u8fdb\u884c\u4e2d,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$17(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startDDYZMPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v1, v2, v5}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$4(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u8fdb\u884c\u4e2d,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$17(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    const-string v0, "xtddo"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "xtddo"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMSInfo:Lcom/arcsoft/hpay100/config/ac;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v1, v2, v3, v5}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$15(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startYYFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v1, v2, v5}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$6(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$8;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startYYFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v1, v2, v5}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$6(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto/16 :goto_0
.end method
