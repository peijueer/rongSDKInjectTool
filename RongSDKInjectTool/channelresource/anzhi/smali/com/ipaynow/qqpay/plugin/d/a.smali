.class public final Lcom/ipaynow/qqpay/plugin/d/a;
.super Lcom/ipaynow/qqpay/plugin/d/b;


# direct methods
.method public constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ipaynow/qqpay/plugin/d/b;-><init>(Landroid/app/ProgressDialog;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/a;->m:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/a;->m:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->R:Ljava/lang/String;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->errorCode:Ljava/lang/String;

    iget-object v1, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->respMsg:Ljava/lang/String;

    iput-object v5, p0, Lcom/ipaynow/qqpay/plugin/d/a;->m:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->D()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    invoke-static {v5, v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p1, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->S:Ljava/util/HashMap;

    const-string v0, "payChannelType"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "mhtOrderNo"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "appId"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "payVoucher"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "25"

    invoke-static {v0, v4}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v5, p0, Lcom/ipaynow/qqpay/plugin/d/a;->m:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "appId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mhtOrderNo"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payVoucher"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/d/a;->T:Lcom/ipaynow/qqpay/plugin/c/a;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&funcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "B001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ipaynow/qqpay/plugin/c/a/c/b;

    iget-object v3, v0, Lcom/ipaynow/qqpay/plugin/c/a;->m:Landroid/app/ProgressDialog;

    invoke-direct {v2, v0, v4, v3}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;-><init>(Lcom/ipaynow/qqpay/plugin/c/b/a;ILandroid/app/ProgressDialog;)V

    new-array v0, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
