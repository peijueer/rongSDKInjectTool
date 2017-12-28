.class Lcom/arcsoft/hpay100/HPaySdkActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

.field private final synthetic val$scheme:I


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iput p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->val$scheme:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$7(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->val$scheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setScheme(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->val$scheme:I

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$11;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "1"

    const-string v9, ""

    const/4 v10, 0x5

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
