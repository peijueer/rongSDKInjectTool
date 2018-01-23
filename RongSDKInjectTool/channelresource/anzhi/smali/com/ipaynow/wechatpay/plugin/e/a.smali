.class public abstract Lcom/ipaynow/wechatpay/plugin/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/e/a/a;


# instance fields
.field public S:Landroid/app/ProgressDialog;

.field public T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

.field public bA:Lcom/ipaynow/wechatpay/plugin/a/a/a;


# direct methods
.method public constructor <init>(Lcom/ipaynow/wechatpay/plugin/a/a/a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->S:Landroid/app/ProgressDialog;

    .line 22
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 23
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->bA:Lcom/ipaynow/wechatpay/plugin/a/a/a;

    .line 28
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->bA:Lcom/ipaynow/wechatpay/plugin/a/a/a;

    .line 29
    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->S:Landroid/app/ProgressDialog;

    .line 30
    return-void
.end method

.method private a(Lcom/ipaynow/wechatpay/plugin/c/c/b;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->S:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->S:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/b;->a(Landroid/app/ProgressDialog;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/e/a;->T:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-virtual {p1, v0}, Lcom/ipaynow/wechatpay/plugin/c/c/b;->a(Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;)V

    goto :goto_0
.end method


# virtual methods
.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 42
    invoke-static {p1, p2}, Lcom/ipaynow/wechatpay/plugin/manager/b/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u7684\u539f\u6587:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 44
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/c/c/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/ipaynow/wechatpay/plugin/c/c/b;-><init>(Lcom/ipaynow/wechatpay/plugin/e/a/a;I)V

    .line 45
    invoke-direct {p0, v1}, Lcom/ipaynow/wechatpay/plugin/e/a;->a(Lcom/ipaynow/wechatpay/plugin/c/c/b;)V

    .line 46
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/c/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 37
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/c/c/b;

    invoke-direct {v0, p0, v1}, Lcom/ipaynow/wechatpay/plugin/c/c/b;-><init>(Lcom/ipaynow/wechatpay/plugin/e/a/a;I)V

    .line 38
    invoke-direct {p0, v0}, Lcom/ipaynow/wechatpay/plugin/e/a;->a(Lcom/ipaynow/wechatpay/plugin/c/c/b;)V

    .line 39
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/c/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method
