.class Lcom/arcsoft/hpay100/HPaySdkAPI$18;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setScheme(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$18;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    const/4 v10, 0x6

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
