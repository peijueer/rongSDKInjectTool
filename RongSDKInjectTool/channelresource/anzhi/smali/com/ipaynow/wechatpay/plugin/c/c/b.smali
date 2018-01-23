.class public final Lcom/ipaynow/wechatpay/plugin/c/c/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private R:Lcom/ipaynow/wechatpay/plugin/e/a/a;

.field private S:Landroid/app/ProgressDialog;

.field private T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

.field private U:Lcom/ipaynow/wechatpay/plugin/c/c/c/a;

.field private V:I

.field private W:I


# direct methods
.method public constructor <init>(Lcom/ipaynow/wechatpay/plugin/e/a/a;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->R:Lcom/ipaynow/wechatpay/plugin/e/a/a;

    .line 17
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->S:Landroid/app/ProgressDialog;

    .line 18
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 19
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->U:Lcom/ipaynow/wechatpay/plugin/c/c/c/a;

    .line 32
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->R:Lcom/ipaynow/wechatpay/plugin/e/a/a;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->V:I

    .line 34
    iput p2, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->W:I

    .line 35
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/c/c/a;

    invoke-direct {v0, p0}, Lcom/ipaynow/wechatpay/plugin/c/c/a;-><init>(Lcom/ipaynow/wechatpay/plugin/c/c/b;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->U:Lcom/ipaynow/wechatpay/plugin/c/c/c/a;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->S:Landroid/app/ProgressDialog;

    .line 44
    return-void
.end method

.method public final a(Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 40
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/b;->publishProgress([Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->U:Lcom/ipaynow/wechatpay/plugin/c/c/c/a;

    iget v1, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->W:I

    invoke-interface {v0, v1, p1}, Lcom/ipaynow/wechatpay/plugin/c/c/c/a;->a(I[Ljava/lang/String;)Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "ipaynow"

    const-string v1, "\u7a7a\u6307\u9488-IpaynowPluginTask-59"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;

    invoke-direct {p1}, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;-><init>()V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->W:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->V:I

    iput v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->X:I

    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->W:I

    iput v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->W:I

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->R:Lcom/ipaynow/wechatpay/plugin/e/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->R:Lcom/ipaynow/wechatpay/plugin/e/a/a;

    invoke-interface {v0, p1}, Lcom/ipaynow/wechatpay/plugin/e/a/a;->f(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 49
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->S:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->S:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->S:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->S:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/c/b;->S:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
