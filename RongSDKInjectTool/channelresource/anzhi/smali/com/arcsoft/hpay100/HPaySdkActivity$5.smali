.class Lcom/arcsoft/hpay100/HPaySdkActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u9a8c\u8bc1\u7801\uff0c\u8bf7\u7a0d\u540e"

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$22(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v2

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$7(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYSubmitPhone:Ljava/lang/String;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$23(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mCodeType:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$6(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    new-instance v8, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;

    iget-object v9, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$5;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10}, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    invoke-static/range {v0 .. v8}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V

    return-void
.end method
