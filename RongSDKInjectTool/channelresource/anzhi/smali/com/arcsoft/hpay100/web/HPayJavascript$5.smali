.class Lcom/arcsoft/hpay100/web/HPayJavascript$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/v;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$5;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$5;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # invokes: Lcom/arcsoft/hpay100/web/HPayJavascript;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$3(Lcom/arcsoft/hpay100/web/HPayJavascript;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$5;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$2(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/HPaySdkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$5;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$2(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/HPaySdkCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$5;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
