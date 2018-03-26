.class Lcom/zqhy/sdk/ui/H5WebActivity$b;
.super Landroid/webkit/WebViewClient;
.source "H5WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/H5WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/H5WebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 704
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 699
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loadingComplete()V

    .line 709
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$500(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->connectTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$400(Lcom/zqhy/sdk/ui/H5WebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 718
    const-string v0, "onReceivedSslError"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 722
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x8

    .line 669
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 670
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loading()V

    .line 671
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->type:I
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$700(Lcom/zqhy/sdk/ui/H5WebActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 672
    const-string v0, "alipay.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle1:Landroid/view/View;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$800(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle2:Landroid/view/View;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$900(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 675
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 676
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->rootView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$1000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$200(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$b;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # setter for: Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$1102(Lcom/zqhy/sdk/ui/H5WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading---> url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 687
    return v3
.end method
