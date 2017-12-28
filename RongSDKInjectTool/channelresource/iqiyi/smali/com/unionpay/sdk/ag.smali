.class final Lcom/unionpay/sdk/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/sdk/ab;->setAppAnalyticsAppId(Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_appId"

    sget-object v3, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_channelId"

    sget-object v3, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
