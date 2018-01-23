.class public final Lcom/ipaynow/wechatpay/plugin/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    const-string v0, ""

    .line 14
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    .line 16
    :catch_0
    move-exception v1

    const-string v1, "URL\u89e3\u7801\u5931\u8d25"

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/d/b;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method
