.class final Lcom/ipaynow/qqpay/plugin/manager/a/b;
.super Ljava/lang/Object;


# static fields
.field private static az:Lcom/ipaynow/qqpay/plugin/manager/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ipaynow/qqpay/plugin/manager/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ipaynow/qqpay/plugin/manager/a/a;-><init>(B)V

    sput-object v0, Lcom/ipaynow/qqpay/plugin/manager/a/b;->az:Lcom/ipaynow/qqpay/plugin/manager/a/a;

    return-void
.end method

.method static synthetic C()Lcom/ipaynow/qqpay/plugin/manager/a/a;
    .locals 1

    sget-object v0, Lcom/ipaynow/qqpay/plugin/manager/a/b;->az:Lcom/ipaynow/qqpay/plugin/manager/a/a;

    return-object v0
.end method
