.class final Lcom/ipaynow/qqpay/plugin/ipview/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic am:Lcom/ipaynow/qqpay/plugin/ipview/b;


# direct methods
.method constructor <init>(Lcom/ipaynow/qqpay/plugin/ipview/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/d;->am:Lcom/ipaynow/qqpay/plugin/ipview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/d;->am:Lcom/ipaynow/qqpay/plugin/ipview/b;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/b;->a(Lcom/ipaynow/qqpay/plugin/ipview/b;)Lcom/ipaynow/qqpay/plugin/ipview/a;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a;->a(Lcom/ipaynow/qqpay/plugin/ipview/a;)Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    move-result-object v0

    const-string v1, "PE002"

    const-string v2, "\u624bQ\u63a5\u53e3\u8bf7\u6c42\u8d85\u65f6"

    invoke-static {v0, v1, v2}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/d;->am:Lcom/ipaynow/qqpay/plugin/ipview/b;

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/b;->a(Lcom/ipaynow/qqpay/plugin/ipview/b;)Lcom/ipaynow/qqpay/plugin/ipview/a;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/ipview/a;->a(Lcom/ipaynow/qqpay/plugin/ipview/a;)Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->a(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;Z)V

    return-void
.end method
