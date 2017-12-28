.class public Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLUGIN_SO_NAME:Ljava/lang/String; = "onlywechat_plugin"

.field public static optional_params:Ljava/util/ArrayList; = null

.field public static final plugin_name:Ljava/lang/String; = "onlyWeChat"

.field public static final plugin_version:Ljava/lang/String; = "2.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    sput-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "$change"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "mhtOrderTimeOut"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "outputType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "mhtOrderDetail"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "mhtCharset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "mhtLimitPay"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "mhtSubAppId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "mhtReserved"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "consumerId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    const-string v1, "consumerName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configDebugMode(ZZI)V
    .locals 0

    .prologue
    .line 49
    sput-boolean p0, Lcom/ipaynow/wechatpay/plugin/d/b;->aK:Z

    .line 50
    sput-boolean p1, Lcom/ipaynow/wechatpay/plugin/conf/c;->w:Z

    .line 51
    sput p2, Lcom/ipaynow/wechatpay/plugin/conf/c;->v:I

    .line 52
    return-void
.end method
