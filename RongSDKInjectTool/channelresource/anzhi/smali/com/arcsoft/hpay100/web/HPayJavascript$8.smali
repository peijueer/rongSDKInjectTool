.class Lcom/arcsoft/hpay100/web/HPayJavascript$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # invokes: Lcom/arcsoft/hpay100/web/HPayJavascript;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$3(Lcom/arcsoft/hpay100/web/HPayJavascript;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->val$msg:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->progressCustomDialog(Landroid/app/Activity;Ljava/lang/String;ZLcom/arcsoft/hpay100/utils/ad;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$10(Lcom/arcsoft/hpay100/web/HPayJavascript;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$11(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$8;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$11(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
