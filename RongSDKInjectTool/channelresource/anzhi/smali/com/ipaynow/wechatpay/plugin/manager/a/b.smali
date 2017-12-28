.class final Lcom/ipaynow/wechatpay/plugin/manager/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bf:Lcom/ipaynow/wechatpay/plugin/manager/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;-><init>(B)V

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/manager/a/b;->bf:Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    return-void
.end method

.method static synthetic H()Lcom/ipaynow/wechatpay/plugin/manager/a/a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/manager/a/b;->bf:Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    return-object v0
.end method
