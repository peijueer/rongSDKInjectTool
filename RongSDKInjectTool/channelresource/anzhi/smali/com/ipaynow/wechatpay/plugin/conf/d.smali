.class public final Lcom/ipaynow/wechatpay/plugin/conf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 118
    const-string v0, ""

    .line 120
    :try_start_0
    const-string v1, "onlywechat_plugin"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    const-string v1, "RSAK"

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->getConstant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/d;->x:Ljava/lang/String;

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v1

    const-string v1, "ipaynow error"

    const-string v2, "\u83b7\u53d6\u79d8\u94a5\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/ipaynow/wechatpay/plugin/conf/c;->v:I

    packed-switch v0, :pswitch_data_0

    .line 136
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/d;->x:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/d;->x:Ljava/lang/String;

    goto :goto_0

    .line 134
    :pswitch_1
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1MLevZ7IPgEcx9hQANi1s/jqAYSk//uRoXBXixhMBAj/F07g/PgvFOZ79mR0E8pT1Jhyj1WN/HlahIYenieciJ1P/L8KHZoZR0hKeZ4K8g951AaZbL5B1HnrPpggZ8rNgeo0TsoK3uaWC9eSRW6zEhSR8hE/EE7CrI+eUlji8dFm3kw6MwUfbZpfH/+fePLijTMWl9KL8Nmb+kYjYtQdjiaee/IjNdjnrxlMFJ1ymXU0v4BvCn9uc7JL0PiHDwpyjtYZPX+wtimRNzOfuyXrZr/7yElKnsO3q/OmQ6cmC9qUyf0iaIGbtnVknZtVmozvFMLjxQGUK+z/hGk09pZ0SQIDAQAB"

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
