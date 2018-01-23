.class public Lcom/ipaynow/qqpay/plugin/utils/MerchantTools;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePreSignMessage(Lcom/ipaynow/qqpay/plugin/manager/route/dto/RequestParams;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/b;->w:Ljava/util/ArrayList;

    const-string v1, "mhtSignType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mhtSignature"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/ipaynow/qqpay/plugin/utils/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->d(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->d(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->d(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->u()Lcom/ipaynow/qqpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ipaynow/qqpay/plugin/manager/a/a;->d(Z)Lcom/ipaynow/qqpay/plugin/manager/a/a;

    goto :goto_1
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
