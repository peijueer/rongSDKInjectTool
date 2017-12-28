.class Lcom/arcsoft/hpay100/HPaySdkActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

.field private final synthetic val$scheme:I


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$10;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iput p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$10;->val$scheme:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$10;->val$scheme:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$10;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDLLLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$17(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$10;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
