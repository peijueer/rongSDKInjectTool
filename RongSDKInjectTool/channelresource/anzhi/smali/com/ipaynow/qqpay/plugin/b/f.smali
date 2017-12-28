.class public final Lcom/ipaynow/qqpay/plugin/b/f;
.super Ljava/lang/Object;


# static fields
.field public static final C:Ljava/lang/String;

.field public static final D:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IU"

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->getConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/qqpay/plugin/b/f;->C:Ljava/lang/String;

    const-string v0, "ITU"

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/utils/PluginTools;->getConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/qqpay/plugin/b/f;->D:Ljava/lang/String;

    return-void
.end method
