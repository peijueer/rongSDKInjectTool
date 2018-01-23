.class Lcom/arcsoft/hpay100/web/HPayWebFullActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->stopLoading()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$6;->this$0:Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->access$4(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->reload()V

    :cond_0
    return-void
.end method
