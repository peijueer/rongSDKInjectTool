.class Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/b;


# instance fields
.field private mPage:I

.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method public constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;I)V
    .locals 1

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    iput p3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    return-void
.end method


# virtual methods
.method public onFinsh(Ljava/lang/String;)V
    .locals 14

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/16 v11, 0x17da

    const/4 v13, 0x4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5008"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v0, v11, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5009"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v0, v11, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v2

    goto :goto_1

    :cond_3
    const-string v0, "status"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v0, "msg"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_5

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    move-object v11, v0

    :goto_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    invoke-static {v0, v12, v11}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "res"

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5010"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v0, v11, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    const-string v1, ""

    :try_start_1
    const-string v1, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    const-string v1, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resdes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5011"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v0, v11, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_8
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto/16 :goto_3

    :cond_9
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    :goto_4
    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5012"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v0, v11, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_a
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_4

    :cond_b
    const-string v1, "code"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_c

    const/16 v1, 0xc8

    if-ne v12, v1, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$13(Lcom/arcsoft/hpay100/HPaySdkActivity;Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showDYSubmitSms()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$14(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    move-object v11, v0

    :goto_5
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    invoke-static {v0, v12, v11}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_e
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYDMWap2GetVerfiyCode1;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    goto/16 :goto_0

    :cond_f
    move-object v11, v0

    goto :goto_5

    :cond_10
    move-object v11, v0

    goto/16 :goto_2
.end method
