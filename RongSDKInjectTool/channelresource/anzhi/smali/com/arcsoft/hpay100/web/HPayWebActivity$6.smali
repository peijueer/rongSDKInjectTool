.class Lcom/arcsoft/hpay100/web/HPayWebActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->stopLoading()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->reload()V

    :cond_0
    return-void
.end method
