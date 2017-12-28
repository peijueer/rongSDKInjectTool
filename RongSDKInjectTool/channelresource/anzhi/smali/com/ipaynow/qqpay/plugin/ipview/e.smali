.class final Lcom/ipaynow/qqpay/plugin/ipview/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;


# direct methods
.method constructor <init>(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/e;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/e;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->e(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;I)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/e;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/ipview/e;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v2}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->f(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/e;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-virtual {v1, v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
