.class Lcom/arcsoft/hpay100/HPaySdkActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private final synthetic val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/config/HPaySMS;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/arcsoft/hpay100/config/ac;)V
    .locals 6

    sget v0, Lcom/arcsoft/hpay100/config/c;->j:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const-string v3, ""

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    move-object v4, p1

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$29(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v5, 0x0

    move-object v3, p1

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$30(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto :goto_0
.end method

.method public onTimeout()V
    .locals 11

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/16 v1, 0x17d8

    const-string v2, "\u77ed\u4fe1\u53d1\u9001\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideDDDialog(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$28(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$12;->val$hPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "6104"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
