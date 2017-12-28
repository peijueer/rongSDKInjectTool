.class public Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;
.super Lcom/ipaynow/qqpay/plugin/ipview/BaseView;

# interfaces
.implements Lcom/ipaynow/qqpay/plugin/ipview/a/a;


# instance fields
.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:I

.field private Z:Z

.field private aa:Z

.field ab:Z

.field private ac:Ljava/util/Timer;

.field private ad:Ljava/util/TimerTask;

.field private final ae:I

.field private af:Landroid/app/AlertDialog;

.field private ag:Landroid/webkit/WebView;

.field private ah:Lcom/ipaynow/qqpay/plugin/d/c;

.field private ai:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;-><init>()V

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->W:Ljava/lang/String;

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->X:Ljava/lang/String;

    iput v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Y:I

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Z:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ab:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ae:I

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->af:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ah:Lcom/ipaynow/qqpay/plugin/d/c;

    iput-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ai:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ai:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    return-object v0
.end method

.method static synthetic a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Y:I

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->X:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ac:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ad:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ac:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ad:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic e(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)I
    .locals 1

    iget v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Y:I

    return v0
.end method

.method static synthetic f(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->X:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/ipaynow/qqpay/plugin/d/c;

    invoke-direct {v0, p0}, Lcom/ipaynow/qqpay/plugin/d/c;-><init>(Lcom/ipaynow/qqpay/plugin/ipview/a/a;)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ah:Lcom/ipaynow/qqpay/plugin/d/c;

    if-eqz p1, :cond_0

    const-string v0, "appId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mhtOrderNo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ah:Lcom/ipaynow/qqpay/plugin/d/c;

    const-string v1, "appId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ipaynow/qqpay/plugin/d/c;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ah:Lcom/ipaynow/qqpay/plugin/d/c;

    const-string v1, "mhtOrderNo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ipaynow/qqpay/plugin/d/c;->g(Ljava/lang/String;)V

    const-string v0, "payVoucher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->W:Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->W:Ljava/lang/String;

    const-string v1, "schema_url=null%3"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->W:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    const-string v0, "PE009"

    const-string v1, "\u672a\u77e5\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p0, v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Y:I

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->k()V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    invoke-static {p0, p1, p2}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    invoke-interface {v0, p1}, Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    const/4 v1, 0x1

    iput-object p0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ai:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-virtual {p0, v1}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->requestWindowFeature(I)Z

    const v0, 0x103007f

    invoke-virtual {p0, v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->setTheme(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    new-instance v1, Lcom/ipaynow/qqpay/plugin/ipview/a;

    invoke-direct {v1, p0}, Lcom/ipaynow/qqpay/plugin/ipview/a;-><init>(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ag:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/e;->B:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/e;->B:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    :cond_0
    const-string v0, "\u6b63\u5728\u8df3\u8f6c\u81f3QQ"

    invoke-virtual {p0, v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->j()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;->show()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->V:Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;->dismiss()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->k()V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    const-string v0, "PE002"

    const-string v1, "\u4ea4\u6613\u67e5\u8be2\u8d85\u65f6"

    invoke-static {p0, v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    return-void
.end method

.method public final m()V
    .locals 1

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->k()V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    invoke-static {p0}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->c(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    return-void
.end method

.method public final n()V
    .locals 6

    sget-boolean v0, Lcom/ipaynow/qqpay/plugin/b/e;->A:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->k()V

    new-instance v0, Lcom/ipaynow/qqpay/plugin/view/a;

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u662f\u5426\u7ee7\u7eed\u5b8c\u6210QQ\u652f\u4ed8?"

    new-instance v4, Lcom/ipaynow/qqpay/plugin/ipview/e;

    invoke-direct {v4, p0}, Lcom/ipaynow/qqpay/plugin/ipview/e;-><init>(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)V

    new-instance v5, Lcom/ipaynow/qqpay/plugin/ipview/f;

    invoke-direct {v5, p0}, Lcom/ipaynow/qqpay/plugin/ipview/f;-><init>(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ipaynow/qqpay/plugin/view/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/view/a;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->af:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->af:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->k()V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    invoke-static {p0}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->b(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Z:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "\u70b9\u51fb\u4e86HOME"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->onPause()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ah:Lcom/ipaynow/qqpay/plugin/d/c;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/d/c;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->onResume()V

    const-string v0, "onResume"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ah:Lcom/ipaynow/qqpay/plugin/d/c;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/d/c;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/ipaynow/qqpay/plugin/ipview/BaseView;->onStop()V

    const-string v0, "\u5fae\u4fe1\u901a\u77e5Activity\u7ed3\u675f"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ah:Lcom/ipaynow/qqpay/plugin/d/c;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/d/c;->onStop()V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    return v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Y:I

    return v0
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->aa:Z

    return-void
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->Z:Z

    return-void
.end method

.method public final t()Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->ac:Ljava/util/Timer;

    return-object v0
.end method
