.class public final Lcom/ipaynow/qqpay/plugin/b/b;
.super Ljava/lang/Object;


# static fields
.field public static w:Ljava/util/ArrayList;

.field public static x:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ipaynow/qqpay/plugin/b/b;->w:Ljava/util/ArrayList;

    const-string v1, "mhtOrderTimeOut"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/b;->w:Ljava/util/ArrayList;

    const-string v1, "payChannelType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/b;->w:Ljava/util/ArrayList;

    const-string v1, "mhtReserved"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/b;->w:Ljava/util/ArrayList;

    const-string v1, "consumerId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ipaynow/qqpay/plugin/b/b;->w:Ljava/util/ArrayList;

    const-string v1, "consumerName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ipaynow/qqpay/plugin/b/b;->x:Ljava/util/HashMap;

    const-string v1, "tips_bg.9.png"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ipaynow/a/a/b;->i:Z

    sput-object p0, Lcom/ipaynow/a/a/b;->j:Ljava/lang/String;

    sput-boolean v0, Lcom/ipaynow/qqpay/plugin/b/c;->y:Z

    return-void
.end method
