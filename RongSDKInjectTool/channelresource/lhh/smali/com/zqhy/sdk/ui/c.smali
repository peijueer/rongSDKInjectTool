.class public Lcom/zqhy/sdk/ui/c;
.super Landroid/app/AlertDialog;
.source "LoadingAlertDialog.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    const-string v0, "style"

    const-string v1, "LoadDialog"

    invoke-static {p1, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p1, p0, Lcom/zqhy/sdk/ui/c;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 39
    iget-object v0, p0, Lcom/zqhy/sdk/ui/c;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/zqhy/sdk/ui/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zqhy/sdk/ui/c;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/zqhy/sdk/ui/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    iget-object v0, p0, Lcom/zqhy/sdk/ui/c;->a:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "zq_sdk_dialog_loading_layout"

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/c;->setContentView(I)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/c;->setCanceledOnTouchOutside(Z)V

    .line 33
    iget-object v0, p0, Lcom/zqhy/sdk/ui/c;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "bar"

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/c;->b:Landroid/widget/ProgressBar;

    .line 34
    iget-object v0, p0, Lcom/zqhy/sdk/ui/c;->a:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "message"

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/c;->c:Landroid/widget/TextView;

    .line 35
    return-void
.end method
