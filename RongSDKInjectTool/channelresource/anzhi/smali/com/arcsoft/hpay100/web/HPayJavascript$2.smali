.class Lcom/arcsoft/hpay100/web/HPayJavascript$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->b(Lcom/arcsoft/hpay100/config/HPaySMS;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$2(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/HPaySdkCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$2(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/HPaySdkCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$2;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    const/16 v10, 0xb

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
