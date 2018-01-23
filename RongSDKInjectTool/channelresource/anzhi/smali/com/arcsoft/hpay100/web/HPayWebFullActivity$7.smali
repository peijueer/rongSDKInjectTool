.class Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/ar;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chanage()V
    .locals 4

    :try_start_0
    const-string v0, ""

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$5(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$5(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mYzmRegx:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "change yzm11:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:hpay_func.inputVerifyCode(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/arcsoft/hpay100/web/HPayWebView;->loadUrl(Ljava/lang/String;)V

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "change yzm22:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:IYUE.returVerifyCode(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->loadUrl(Ljava/lang/String;)V
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
