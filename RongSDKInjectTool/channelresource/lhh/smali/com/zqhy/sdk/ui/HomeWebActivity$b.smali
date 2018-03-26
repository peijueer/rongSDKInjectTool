.class Lcom/zqhy/sdk/ui/HomeWebActivity$b;
.super Landroid/webkit/WebViewClient;
.source "HomeWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/HomeWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/HomeWebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loadingComplete()V

    .line 496
    const-string v0, "onReceivedError"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$600(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->connectTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$500(Lcom/zqhy/sdk/ui/HomeWebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 501
    const-string v0, "onReceivedSslError"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 503
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 469
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loading()V

    .line 470
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->flErrorPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$300(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$b;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # setter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$802(Lcom/zqhy/sdk/ui/HomeWebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 472
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

    .line 473
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x1

    return v0
.end method
