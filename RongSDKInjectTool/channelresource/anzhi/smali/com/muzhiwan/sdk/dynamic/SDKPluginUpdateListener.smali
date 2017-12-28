.class public Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;
.super Ljava/lang/Object;
.source "SDKPluginUpdateListener.java"

# interfaces
.implements Lcom/muzhiwan/sdk/dynamic/UpdateListener;


# instance fields
.field private mainActivity:Landroid/app/Activity;

.field private updateErrorDialog:Landroid/app/Dialog;

.field private updateProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "mainActivity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->showProgressDialog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->showErrorDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    .line 47
    :cond_0
    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->dismissProgressDialog()V

    .line 51
    iget-object v1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateErrorDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u9519\u8bef\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 54
    const-string v1, "\u4e0b\u8f7d\u51fa\u9519\uff0c\u8bf7\u9000\u51fa\u91cd\u8bd5\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$1;

    invoke-direct {v2, p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$1;-><init>(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateErrorDialog:Landroid/app/Dialog;

    .line 64
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 67
    :cond_1
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;I)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 27
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u70ed\u66f4\u8fdb\u5ea6"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 32
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 33
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 34
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 36
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 37
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->updateProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 40
    :cond_1
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$5;

    invoke-direct {v1, p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$5;-><init>(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$4;

    invoke-direct {v1, p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$4;-><init>(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public onProgress(JJ)V
    .locals 9
    .param p1, "progress"    # J
    .param p3, "max"    # J

    .prologue
    .line 81
    long-to-double v4, p1

    long-to-double v6, p3

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 82
    .local v0, "precent":I
    iget-object v3, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    invoke-static {v3, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "progressText":Ljava/lang/String;
    iget-object v3, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    invoke-static {v3, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "sizeText":Ljava/lang/String;
    iget-object v3, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    new-instance v4, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$3;-><init>(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$2;

    invoke-direct {v1, p0}, Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener$2;-><init>(Lcom/muzhiwan/sdk/dynamic/SDKPluginUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
