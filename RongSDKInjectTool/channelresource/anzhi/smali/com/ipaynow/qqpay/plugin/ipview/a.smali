.class final Lcom/ipaynow/qqpay/plugin/ipview/a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;


# direct methods
.method constructor <init>(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/qqpay/plugin/ipview/a;)Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "\u9875\u9762\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->c(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->c(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->c(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    iget-boolean v0, v0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ab:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    iput-boolean v1, v0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ab:Z

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "\u9875\u9762\u5f00\u59cb\u52a0\u8f7d"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Ljava/util/Timer;)V

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    new-instance v2, Lcom/ipaynow/qqpay/plugin/ipview/b;

    invoke-direct {v2, p0, v0}, Lcom/ipaynow/qqpay/plugin/ipview/b;-><init>(Lcom/ipaynow/qqpay/plugin/ipview/a;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Ljava/util/TimerTask;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->c(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->d(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "mqqapi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0, p2}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-virtual {v1, v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0, v4}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Z)V

    :cond_1
    return v4

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0, v3}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Z)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->k()V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    move-result-object v0

    const-string v1, "PE007"

    const-string v2, "\u7528\u6237\u672a\u5b89\u88c5\u624bQ\u5ba2\u6237\u7aef"

    invoke-static {v0, v1, v2}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/a;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0, v3}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Z)V

    goto :goto_0
.end method
