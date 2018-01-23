.class Lcom/arcsoft/hpay100/web/HPayJavascript$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$9;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$9;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$11(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$9;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$11(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$9;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$11(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$9;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$10(Lcom/arcsoft/hpay100/web/HPayJavascript;Landroid/app/Dialog;)V
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
