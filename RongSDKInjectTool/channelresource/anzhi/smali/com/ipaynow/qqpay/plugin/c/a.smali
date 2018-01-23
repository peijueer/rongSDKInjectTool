.class public final Lcom/ipaynow/qqpay/plugin/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/qqpay/plugin/c/b/a;


# instance fields
.field public E:Lcom/ipaynow/qqpay/plugin/d/a/a;

.field public m:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a;->m:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a;->E:Lcom/ipaynow/qqpay/plugin/d/a/a;

    return-void
.end method

.method public constructor <init>(Lcom/ipaynow/qqpay/plugin/d/a/a;Landroid/app/ProgressDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a;->m:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a;->E:Lcom/ipaynow/qqpay/plugin/d/a/a;

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/c/a;->E:Lcom/ipaynow/qqpay/plugin/d/a/a;

    iput-object p2, p0, Lcom/ipaynow/qqpay/plugin/c/a;->m:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final a(Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a;->E:Lcom/ipaynow/qqpay/plugin/d/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a;->E:Lcom/ipaynow/qqpay/plugin/d/a/a;

    invoke-interface {v0, p1}, Lcom/ipaynow/qqpay/plugin/d/a/a;->b(Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;)V

    :cond_0
    return-void
.end method
