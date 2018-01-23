.class Lcom/arcsoft/hpay100/web/HPayWebView$2;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayWebView;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebView$2;->this$0:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProgressChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView$2;->this$0:Lcom/arcsoft/hpay100/web/HPayWebView;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebView;->mHPayWebViewLoad:Lcom/arcsoft/hpay100/web/HPayWebViewLoad;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->access$0(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/HPayWebViewLoad;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebView$2;->this$0:Lcom/arcsoft/hpay100/web/HPayWebView;

    # getter for: Lcom/arcsoft/hpay100/web/HPayWebView;->mHPayWebViewLoad:Lcom/arcsoft/hpay100/web/HPayWebViewLoad;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->access$0(Lcom/arcsoft/hpay100/web/HPayWebView;)Lcom/arcsoft/hpay100/web/HPayWebViewLoad;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebView$2;->this$0:Lcom/arcsoft/hpay100/web/HPayWebView;

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/web/HPayWebViewLoad;->loadResult(Lcom/arcsoft/hpay100/web/HPayWebView;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
