.class Lcom/arcsoft/hpay100/HPaySdkAPI$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/config/HPaySMS;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/arcsoft/hpay100/config/ac;)V
    .locals 4

    sget v0, Lcom/arcsoft/hpay100/config/c;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const-string v2, ""

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v3, 0x0

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$15(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/16 v1, 0x17d8

    const-string v2, "\u77ed\u4fe1\u53d1\u9001\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$5;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideDDDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$9(Landroid/app/Activity;)V

    return-void
.end method
