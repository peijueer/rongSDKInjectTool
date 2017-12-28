.class public final Lcom/ipaynow/qqpay/plugin/view/b;
.super Landroid/app/AlertDialog;

# interfaces
.implements Lcom/ipaynow/qqpay/plugin/view/IpaynowLoading;


# instance fields
.field private aU:Lcom/a/a/h;

.field private aV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/b;->aU:Lcom/a/a/h;

    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0, p1}, Lcom/a/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/b;->aU:Lcom/a/a/h;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/b;->aU:Lcom/a/a/h;

    invoke-virtual {v0}, Lcom/a/a/h;->dismiss()V

    return-void
.end method

.method public final setLoadingMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/view/b;->aV:Ljava/lang/String;

    return-void
.end method

.method public final show()V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/view/b;->aU:Lcom/a/a/h;

    sget-object v1, Lcom/a/a/j;->bH:Lcom/a/a/j;

    invoke-virtual {v0, v1}, Lcom/a/a/h;->a(Lcom/a/a/j;)Lcom/a/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/view/b;->aV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/h;->m(Ljava/lang/String;)Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h;->M()Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h;->N()Lcom/a/a/h;

    return-void
.end method
