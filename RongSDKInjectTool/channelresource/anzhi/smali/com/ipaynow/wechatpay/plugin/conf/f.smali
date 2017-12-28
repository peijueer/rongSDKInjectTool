.class public final Lcom/ipaynow/wechatpay/plugin/conf/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/String;

.field private static final B:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 71
    const-string v2, ""

    .line 72
    const-string v1, ""

    .line 73
    const-string v0, ""

    .line 75
    :try_start_0
    const-string v3, "onlywechat_plugin"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    const-string v3, "IU"

    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->getConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "ITU"

    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->getConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v3, "IPU"

    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->getConstant(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :goto_0
    sput-object v2, Lcom/ipaynow/wechatpay/plugin/conf/f;->z:Ljava/lang/String;

    .line 83
    sput-object v1, Lcom/ipaynow/wechatpay/plugin/conf/f;->A:Ljava/lang/String;

    .line 84
    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/f;->B:Ljava/lang/String;

    .line 85
    return-void

    .line 80
    :catch_0
    move-exception v3

    const-string v3, "ipaynow error "

    const-string v4, "\u83b7\u53d6\u670d\u52a1\u5668\u5730\u5740\u5931\u8d25"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/ipaynow/wechatpay/plugin/conf/c;->v:I

    packed-switch v0, :pswitch_data_0

    .line 96
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/f;->z:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 90
    :pswitch_0
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/f;->z:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_1
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/f;->B:Ljava/lang/String;

    goto :goto_0

    .line 94
    :pswitch_2
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/f;->A:Ljava/lang/String;

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/ipaynow/wechatpay/plugin/conf/c;->v:I

    packed-switch v0, :pswitch_data_0

    .line 109
    const-string v0, "https://pay.ipaynow.cn/sdk/syncException"

    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    const-string v0, "https://pay.ipaynow.cn/sdk/syncException"

    goto :goto_0

    .line 105
    :pswitch_1
    const-string v0, "https://pay.ipaynow.cn/api_release/sdk/syncException"

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "https://dby.ipaynow.cn/api/payment/sdk/syncException"

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
