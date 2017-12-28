.class public final Lcom/ipaynow/qqpay/plugin/c/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ipaynow/qqpay/plugin/c/a/c/b/a;


# instance fields
.field private I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

.field private J:Lcom/ipaynow/qqpay/plugin/c/a/c/b;

.field private K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

.field private L:I


# direct methods
.method public constructor <init>(Lcom/ipaynow/qqpay/plugin/c/a/c/b;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->J:Lcom/ipaynow/qqpay/plugin/c/a/c/b;

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    new-instance v0, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    invoke-direct {v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    new-instance v0, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    invoke-direct {v0, v1}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;-><init>(Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;)V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->J:Lcom/ipaynow/qqpay/plugin/c/a/c/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    aget-object v1, p1, v4

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->J:Lcom/ipaynow/qqpay/plugin/c/a/c/b;

    const-string v3, "\u652f\u4ed8\u5b89\u5168\u626b\u63cf"

    invoke-virtual {v2, v3}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/ipaynow/qqpay/plugin/b/f;->C:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->h()Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v4}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "payChannelType"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "A001"

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v1, v0, v2}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    const-string v3, "funcode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "responseTime"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "responseMsg"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    iput v4, v2, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->Q:I

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    const/4 v3, 0x2

    iput v3, v2, Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;->P:I

    iget-object v2, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v2, v0, v1}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/ipaynow/qqpay/plugin/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\u4e2d\u5c0f\u5f00\u53d1\u8005HTTPS\u670d\u52a1\u901a\u8baf\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(I)V
    .locals 2

    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u5ef6\u8fdf\u65f6\u95f4\u65b9\u6cd5\u5f02\u5e38"

    invoke-static {v0}, Lcom/ipaynow/a/a/b;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private varargs b([Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->J:Lcom/ipaynow/qqpay/plugin/c/a/c/b;

    const-string v1, "\u67e5\u8be2\u4ea4\u6613\u7ed3\u679c..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->d(Ljava/lang/String;)V

    aget-object v1, p1, v7

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/f;->C:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    if-lt v0, v9, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->h()Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    mul-int/lit16 v0, v0, 0xc8

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->a(I)V

    const-string v0, "ipaynow"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u67e5\u8be2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v7

    invoke-direct {p0, v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->b([Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    goto :goto_0

    :cond_1
    invoke-static {v0, v8}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "ipaynow"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "A002"

    invoke-static {v0, v3}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v1, v0, v2}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    const-string v0, "appId"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderNo"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderName"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderType"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtCurrencyType"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderAmt"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderTimeOut"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderStartTime"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtCharset"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceType"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payChannelType"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "settleAmt"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "responseTime"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signType"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signature"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transStatus"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "ipaynow"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "transStatus="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "A003"

    invoke-static {v0, v3}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "A004"

    invoke-static {v0, v3}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget v3, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    if-lt v3, v9, :cond_4

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v1, v0, v2}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xc8

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->a(I)V

    iget v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    const-string v0, "ipaynow"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u67e5\u8be2:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->L:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lcom/ipaynow/a/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v8, [Ljava/lang/String;

    aput-object v1, v0, v7

    invoke-direct {p0, v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->b([Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->I:Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v1, v0, v2}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->b(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final varargs a(I[Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "ipaynow"

    const-string v1, "\u7a7a\u6307\u9488-IPRemoteServices-45"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->J:Lcom/ipaynow/qqpay/plugin/c/a/c/b;

    const-string v1, "\u8ba2\u5355\u521d\u59cb\u5316\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/ipaynow/qqpay/plugin/c/a/c/b;->d(Ljava/lang/String;)V

    aget-object v0, p2, v7

    invoke-static {v0, v7}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/ipaynow/qqpay/plugin/b/f;->C:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v0}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->h()Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v8}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v2

    const-string v0, "responseCode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "A001"

    invoke-static {v0, v3}, Lcom/ipaynow/qqpay/plugin/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    invoke-virtual {v1, v0, v2}, Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->K:Lcom/ipaynow/qqpay/plugin/c/a/c/c/a;

    const-string v0, "mhtOrderType"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtCurrencyType"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderDetail"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderTimeOut"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtOrderStartTime"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "notifyUrl"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtCharset"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtReserved"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtSignType"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mhtSignature"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "funcode"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "responseMsg"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "responseTime"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "payChannelType"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "appId"

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "nowPayOrderNo"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "orderSysReserveSign"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "funcode"

    const-string v6, "B002"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appId"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nowPayOrderNo"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "orderSysReserveSign"

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "payChannelType"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v7, v7}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->a(Ljava/util/Map;ZZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v7

    aput-object v0, v2, v8

    invoke-direct {p0, v2}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->a([Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->a([Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/ipaynow/qqpay/plugin/c/a/c/a;->b([Ljava/lang/String;)Lcom/ipaynow/qqpay/plugin/c/a/c/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
