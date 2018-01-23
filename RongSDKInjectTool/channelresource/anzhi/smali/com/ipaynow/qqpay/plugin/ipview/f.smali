.class final Lcom/ipaynow/qqpay/plugin/ipview/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;


# direct methods
.method constructor <init>(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/f;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/f;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->k()V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/f;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/f;->aj:Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Z)V

    return-void
.end method
