.class public Lcom/unionpay/sdk/n;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = null

.field public static final d:Ljava/lang/String; = "app"

.field static e:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/n;->b:Ljava/lang/String;

    sput-object v0, Lcom/unionpay/sdk/n;->c:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TalkingDataMain"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unionpay/sdk/n;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/unionpay/sdk/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/unionpay/sdk/n;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/unionpay/sdk/n;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p2, Lcom/unionpay/sdk/n;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/unionpay/sdk/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/unionpay/sdk/ab;->getPartnerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/ab;->getAppAnalyticsAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/unionpay/sdk/ab;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/unionpay/sdk/UPAgent;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
