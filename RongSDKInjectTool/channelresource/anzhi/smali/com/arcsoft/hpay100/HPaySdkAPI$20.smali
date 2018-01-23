.class Lcom/arcsoft/hpay100/HPaySdkAPI$20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$23()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$23()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$23()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$24(Landroid/app/Dialog;)V

    :cond_0
    invoke-static {v1}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void
.end method
