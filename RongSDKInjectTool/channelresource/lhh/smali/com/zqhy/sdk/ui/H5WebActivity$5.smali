.class Lcom/zqhy/sdk/ui/H5WebActivity$5;
.super Ljava/lang/Object;
.source "H5WebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/H5WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/H5WebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$5;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$5;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loadingComplete()V

    .line 610
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$5;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$5;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$200(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$5;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$200(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$5;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    # getter for: Lcom/zqhy/sdk/ui/H5WebActivity;->isDestroyWebView:Z
    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$300(Lcom/zqhy/sdk/ui/H5WebActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$5;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 617
    :cond_1
    return-void
.end method
