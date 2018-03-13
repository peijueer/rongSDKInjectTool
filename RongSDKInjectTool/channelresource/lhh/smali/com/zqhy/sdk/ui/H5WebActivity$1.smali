.class Lcom/zqhy/sdk/ui/H5WebActivity$1;
.super Ljava/lang/Object;
.source "H5WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/H5WebActivity;->initViews()V
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
    .line 293
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity$1;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$1;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$1;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$1;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity$1;->a:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->finish()V

    goto :goto_0
.end method
