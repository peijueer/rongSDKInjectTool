.class Lcom/zqhy/sdk/ui/HomeWebActivity$4;
.super Ljava/lang/Object;
.source "HomeWebActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/HomeWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/HomeWebActivity;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loadingComplete()V

    .line 407
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$200(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$200(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->flErrorPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$300(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->flErrorPage:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$300(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->isDestroyWebView:Z
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$400(Lcom/zqhy/sdk/ui/HomeWebActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 416
    :cond_2
    return-void
.end method
