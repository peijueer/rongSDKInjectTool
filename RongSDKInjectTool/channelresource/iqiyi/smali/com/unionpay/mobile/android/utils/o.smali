.class public final Lcom/unionpay/mobile/android/utils/o;
.super Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

# interfaces
.implements Lcom/unionpay/mobile/android/fully/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/utils/o;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "reqtm"

    invoke-static {}, Lcom/unionpay/mobile/android/utils/o;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    :goto_0
    const-string v0, "uppay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post message = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/utils/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/o;->d()Lcom/unionpay/mobile/android/net/d;

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "sid"

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/o;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/o;->g()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/o;->a:Lcom/unionpay/mobile/android/net/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/mobile/android/net/c;

    iget-object v3, p0, Lcom/unionpay/mobile/android/utils/o;->b:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/unionpay/mobile/android/net/c;-><init>(Lcom/unionpay/mobile/android/net/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/utils/o;->a:Lcom/unionpay/mobile/android/net/c;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/o;->a:Lcom/unionpay/mobile/android/net/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->a()I

    move-result v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/utils/o;->a:Lcom/unionpay/mobile/android/net/c;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/net/c;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/utils/o;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ response msg ] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/o;->e()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
