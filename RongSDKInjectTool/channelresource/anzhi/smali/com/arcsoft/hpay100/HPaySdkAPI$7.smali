.class Lcom/arcsoft/hpay100/HPaySdkAPI$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/v;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideDDDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$9(Landroid/app/Activity;)V

    invoke-virtual {p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->getPayStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDYZMDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$16(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->getFailedType()I

    move-result v0

    const/16 v1, 0x17d8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDYZMDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$16(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v0, p1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v0, p1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto :goto_0
.end method
