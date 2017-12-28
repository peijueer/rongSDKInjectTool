.class Lcom/arcsoft/hpay100/HPaySdkAPI$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/v;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$4;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$4;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$4;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$4;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v0, p1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$4;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideDDDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$9(Landroid/app/Activity;)V

    return-void
.end method
