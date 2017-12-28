.class Lcom/arcsoft/hpay100/HPaySdkActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$6;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$6;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mIsDYInput:Z
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$15(Lcom/arcsoft/hpay100/HPaySdkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$6;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$6;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showPayDialogRetain(I)V
    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$18(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$6;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$13(Lcom/arcsoft/hpay100/HPaySdkActivity;Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$6;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showDYInputPhone()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$24(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$6;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->cancelTimeCount()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$25(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    goto :goto_0
.end method
