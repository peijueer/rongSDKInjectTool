.class public final Lcom/ipaynow/qqpay/plugin/manager/route/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/ipaynow/qqpay/plugin/manager/route/a;-><init>()V

    return-void
.end method

.method public static D()Lcom/ipaynow/qqpay/plugin/manager/route/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/route/b;->E()Lcom/ipaynow/qqpay/plugin/manager/route/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/qqpay/plugin/b/a;->r:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v4}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "errorCode"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "respMsg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v2, Lcom/ipaynow/qqpay/plugin/b/a;->r:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v2}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    iput-object p1, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    iput-object p2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "ipaynow"

    const-string v1, "\u672a\u5b9e\u73b0\u901a\u77e5\u63a5\u53e3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "\u901a\u77e5\u63a5\u53e3:\u975e\u6cd5\u53c2\u6570"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v0, "\u901a\u77e5\u63a5\u53e3:\u975e\u6cd5\u53c2\u6570"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v0, "\u901a\u77e5\u63a5\u53e3:\u975e\u6cd5\u53c2\u6570"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 5

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/qqpay/plugin/b/a;->s:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v4}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "respMsg"

    const-string v4, "cancel"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v2, Lcom/ipaynow/qqpay/plugin/b/a;->s:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v2}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    const-string v2, "cancel"

    iput-object v2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/qqpay/plugin/b/a;->t:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v4}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "errorCode"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "respMsg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v2, Lcom/ipaynow/qqpay/plugin/b/a;->t:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v2}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    iput-object p1, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    iput-object p2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 5

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->x()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/qqpay/plugin/b/a;->q:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v4}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    sget-object v2, Lcom/ipaynow/qqpay/plugin/b/a;->q:Lcom/ipaynow/qqpay/plugin/b/a;

    invoke-virtual {v2}, Lcom/ipaynow/qqpay/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    const-string v2, "success"

    iput-object v2, v1, Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->w()Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/qqpay/plugin/manager/route/dto/ResponseParams;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void

    :cond_3
    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
