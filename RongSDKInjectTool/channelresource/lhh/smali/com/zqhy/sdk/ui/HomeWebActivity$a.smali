.class Lcom/zqhy/sdk/ui/HomeWebActivity$a;
.super Landroid/webkit/WebChromeClient;
.source "HomeWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/HomeWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/HomeWebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$400(Lcom/zqhy/sdk/ui/HomeWebActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 426
    :cond_0
    if-ge p2, v6, :cond_2

    .line 427
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loading()V

    .line 428
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$200(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$200(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$600(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$500(Lcom/zqhy/sdk/ui/HomeWebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    :cond_2
    if-ne p2, v6, :cond_4

    .line 435
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$600(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$500(Lcom/zqhy/sdk/ui/HomeWebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 436
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/utils/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 437
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$200(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$200(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 443
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loadingComplete()V

    .line 444
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$300(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 446
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 447
    return-void

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$600(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$500(Lcom/zqhy/sdk/ui/HomeWebActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 451
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$700(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 453
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$a;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$700(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_0
    return-void
.end method
