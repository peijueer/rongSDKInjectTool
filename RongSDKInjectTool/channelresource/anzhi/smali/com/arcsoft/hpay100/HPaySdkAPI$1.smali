.class Lcom/arcsoft/hpay100/HPaySdkAPI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$1;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->progressCustomDialog(Landroid/app/Activity;Ljava/lang/String;ZLcom/arcsoft/hpay100/utils/ad;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$12(Landroid/app/Dialog;)V

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$13()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$13()Landroid/app/Dialog;

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
