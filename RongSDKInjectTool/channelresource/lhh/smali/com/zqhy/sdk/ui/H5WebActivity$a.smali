.class Lcom/zqhy/sdk/ui/H5WebActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "H5WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/H5WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/H5WebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 624
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->isDestroyWebView:Z
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$300(Lcom/zqhy/sdk/ui/H5WebActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 627
    :cond_0
    if-ge p2, v4, :cond_1

    .line 630
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loading()V

    .line 631
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$500(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->connectTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$400(Lcom/zqhy/sdk/ui/H5WebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    :cond_1
    if-ne p2, v4, :cond_2

    .line 636
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$500(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->connectTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$400(Lcom/zqhy/sdk/ui/H5WebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 638
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/utils/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 643
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loadingComplete()V

    .line 644
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$200(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 646
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 647
    return-void

    .line 641
    :cond_3
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$500(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->connectTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$400(Lcom/zqhy/sdk/ui/H5WebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 651
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->idTvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$600(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 655
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$a;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->idTvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$600(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :cond_0
    return-void
.end method
