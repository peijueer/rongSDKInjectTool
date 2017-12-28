.class Lcom/arcsoft/hpay100/web/HPayWebActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$9;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$9;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->access$6(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$9;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->access$6(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$9;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebActivity;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->access$6(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
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
