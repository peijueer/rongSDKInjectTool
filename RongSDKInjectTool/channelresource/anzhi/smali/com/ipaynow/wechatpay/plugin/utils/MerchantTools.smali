.class public Lcom/ipaynow/wechatpay/plugin/utils/MerchantTools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePreSignMessage(Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->b(Z)V

    .line 22
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/ipaynow/wechatpay/plugin/utils/a;->a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->g(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->g(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    .line 28
    :goto_1
    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->g(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->g(Z)Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    goto :goto_1
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
