.class public final Lcom/ipaynow/qqpay/plugin/c/a/c/b;
.super Landroid/os/AsyncTask;


# instance fields
.field private M:Lcom/ipaynow/qqpay/plugin/c/b/a;

.field private N:Lcom/ipaynow/qqpay/plugin/c/a/c/b/a;

.field private O:I

.field private P:I

.field private m:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/ipaynow/qqpay/plugin/c/b/a;ILandroid/app/ProgressDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->M:Lcom/ipaynow/qqpay/plugin/c/b/a;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->m:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->N:Lcom/ipaynow/qqpay/plugin/c/a/c/b/a;

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->M:Lcom/ipaynow/qqpay/plugin/c/b/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->O:I

    iput p2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->P:I

    iput-object p3, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->m:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;

    invoke-direct {v0, p0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;-><init>(Lcom/ipaynow/qqpay/plugin/c/a/c/b;)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->N:Lcom/ipaynow/qqpay/plugin/c/a/c/b/a;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->N:Lcom/ipaynow/qqpay/plugin/c/a/c/b/a;

    iget v1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->P:I

    invoke-interface {v0, v1, p1}, Lcom/ipaynow/qqpay/plugin/c/a/c/b/a;->a(I[Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string v0, "ipaynow"

    const-string v1, "\u7a7a\u6307\u9488-IpaynowPluginTask-59"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->P:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->O:I

    iput v0, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->Q:I

    iget v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->P:I

    iput v0, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->P:I

    :cond_1
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->M:Lcom/ipaynow/qqpay/plugin/c/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->M:Lcom/ipaynow/qqpay/plugin/c/b/a;

    invoke-interface {v0, p1}, Lcom/ipaynow/qqpay/plugin/c/b/a;->a(Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;)V

    :cond_2
    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->m:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
