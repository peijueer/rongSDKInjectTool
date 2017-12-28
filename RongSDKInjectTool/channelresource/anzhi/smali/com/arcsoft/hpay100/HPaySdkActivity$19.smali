.class Lcom/arcsoft/hpay100/HPaySdkActivity$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$page:I

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;IILandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput p3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$page:I

    iput p4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$type:I

    iput-object p5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 6

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    new-instance v2, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$page:I

    invoke-direct {v2, v3, v4, v5}, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;I)V

    invoke-static {v0, v1, p1, v2}, Lcom/arcsoft/hpay100/config/c;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/b;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    new-instance v2, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode2;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$page:I

    invoke-direct {v2, v3, v4}, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode2;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    invoke-static {v0, v1, p1, v2}, Lcom/arcsoft/hpay100/config/c;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/b;)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 11

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/16 v1, 0x17dd

    const-string v2, "\u9a8c\u8bc1\u7801\u83b7\u53d6\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5007"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;->val$page:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
