.class public final Lcom/ipaynow/wechatpay/plugin/view/d;
.super Landroid/app/AlertDialog$Builder;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/ipaynow/wechatpay/plugin/view/d;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 17
    invoke-virtual {p0, p3}, Lcom/ipaynow/wechatpay/plugin/view/d;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/d;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 19
    invoke-virtual {p0, p0}, Lcom/ipaynow/wechatpay/plugin/view/d;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 20
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/e;

    invoke-direct {v0, p0, p5}, Lcom/ipaynow/wechatpay/plugin/view/e;-><init>(Lcom/ipaynow/wechatpay/plugin/view/d;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/view/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 28
    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p0, v0, p4}, Lcom/ipaynow/wechatpay/plugin/view/d;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    if-eqz p5, :cond_0

    .line 30
    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p0, v0, p5}, Lcom/ipaynow/wechatpay/plugin/view/d;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keyEvent = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 38
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 39
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
