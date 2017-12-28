.class public abstract Lcom/ipaynow/qqpay/plugin/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/qqpay/plugin/d/a/a;


# instance fields
.field T:Lcom/ipaynow/qqpay/plugin/c/a;

.field m:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/d/b;->m:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/ipaynow/qqpay/plugin/c/a;

    invoke-direct {v0, p0, p1}, Lcom/ipaynow/qqpay/plugin/c/a;-><init>(Lcom/ipaynow/qqpay/plugin/d/a/a;Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/b;->T:Lcom/ipaynow/qqpay/plugin/c/a;

    return-void
.end method
