.class Lcom/zqhy/sdk/ui/HomeWebActivity$1;
.super Ljava/lang/Object;
.source "HomeWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/HomeWebActivity;->initViews()V
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
    .line 177
    iput-object p1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$1;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$1;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$1;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$1;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    # getter for: Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity$1;->a:Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->finish()V

    goto :goto_0
.end method
