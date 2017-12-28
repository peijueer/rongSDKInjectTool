.class Lcom/arcsoft/hpay100/HPaySdkActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$2;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$2;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDLLLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$17(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$2;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v1, 0x3

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showPayDialogRetain(I)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$18(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    return-void
.end method
