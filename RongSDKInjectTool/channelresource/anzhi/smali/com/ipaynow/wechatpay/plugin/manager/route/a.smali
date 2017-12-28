.class public final Lcom/ipaynow/wechatpay/plugin/manager/route/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;-><init>()V

    return-void
.end method

.method public static I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/b;->J()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    .line 70
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 72
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/wechatpay/plugin/conf/a;->d:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v4}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "respMsg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    if-eqz p0, :cond_3

    .line 78
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 83
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    .line 85
    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/a;->d:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    .line 86
    iput-object p1, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    .line 87
    iput-object p2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;)V

    .line 90
    :cond_1
    if-eqz p0, :cond_2

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 94
    :cond_2
    return-void

    .line 80
    :cond_3
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 162
    :try_start_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

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

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 165
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

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

    .line 175
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    const-string v0, "ipaynow"

    const-string v1, "\u672a\u5b9e\u73b0\u901a\u77e5\u63a5\u53e3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    const-string v0, "\u901a\u77e5\u63a5\u53e3:\u975e\u6cd5\u53c2\u6570"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :catch_2
    move-exception v0

    const-string v0, "\u901a\u77e5\u63a5\u53e3:\u975e\u6cd5\u53c2\u6570"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :catch_3
    move-exception v0

    const-string v0, "\u901a\u77e5\u63a5\u53e3:\u975e\u6cd5\u53c2\u6570"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 132
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    .line 134
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/wechatpay/plugin/conf/a;->f:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v4}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, "respMsg"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 141
    if-eqz p0, :cond_3

    .line 142
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 147
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 148
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    .line 149
    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/a;->f:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    .line 150
    iput-object p1, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->errorCode:Ljava/lang/String;

    .line 151
    iput-object p2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    .line 152
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;)V

    .line 154
    :cond_1
    if-eqz p0, :cond_2

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 158
    :cond_2
    return-void

    .line 144
    :cond_3
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 36
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    .line 38
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 40
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/wechatpay/plugin/conf/a;->e:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v4}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "respMsg"

    const-string v4, "cancel"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 44
    if-eqz p0, :cond_3

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    .line 52
    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/a;->e:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    .line 53
    const-string v2, "cancel"

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;)V

    .line 56
    :cond_1
    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 60
    :cond_2
    return-void

    .line 47
    :cond_3
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 101
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    .line 103
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->A()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 105
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 106
    const-string v3, "respCode"

    sget-object v4, Lcom/ipaynow/wechatpay/plugin/conf/a;->c:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v4}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    if-eqz p0, :cond_3

    .line 109
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 114
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    new-instance v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;

    invoke-direct {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;-><init>()V

    .line 116
    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/a;->c:Lcom/ipaynow/wechatpay/plugin/conf/a;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/a;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respCode:Ljava/lang/String;

    .line 117
    const-string v2, "success"

    iput-object v2, v1, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;->respMsg:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->z()Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/impl/ReceivePayResult;->onIpaynowTransResult(Lcom/ipaynow/wechatpay/plugin/manager/route/dto/ResponseParams;)V

    .line 120
    :cond_1
    if-eqz p0, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 124
    :cond_2
    return-void

    .line 111
    :cond_3
    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
