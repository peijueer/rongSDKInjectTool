.class Lcom/arcsoft/hpay100/HPaySdkAPI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private final synthetic val$scheme:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$scheme:I

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 8

    sget v0, Lcom/arcsoft/hpay100/config/c;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v1, p1, v2, v3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v7, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ZLcom/arcsoft/hpay100/HPaySdkCallback;I)V

    invoke-static {v6, v7, p1, v0}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/b;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$7(Lcom/arcsoft/hpay100/config/HPaySMS;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$scheme:I

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showYJDYDialog(Landroid/app/Activity;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$14(Landroid/app/Activity;ILcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method
