.class public Lcom/unionpay/sdk/ab;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/Map;

.field static b:Z

.field static c:Landroid/os/Handler;

.field static d:Ljava/nio/channels/FileChannel;

.field static e:J

.field static f:Z

.field static g:Z

.field static h:Z

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field static k:J

.field static l:J

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/ab;->a:Ljava/util/Map;

    sput-boolean v2, Lcom/unionpay/sdk/ab;->b:Z

    sput-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/unionpay/sdk/ab;->c:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unionpay/sdk/ab;->e:J

    sput-boolean v2, Lcom/unionpay/sdk/ab;->f:Z

    sput-boolean v3, Lcom/unionpay/sdk/ab;->g:Z

    sput-boolean v3, Lcom/unionpay/sdk/ab;->h:Z

    const-string v0, ""

    sput-object v0, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    const-string v0, "Default"

    sput-object v0, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/unionpay/sdk/ab;->l:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "UP_app_pefercen_profile"

    const-string v1, "UP_appId"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/unionpay/sdk/ab;->c:Landroid/os/Handler;

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sput-object p1, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/unionpay/sdk/ag;

    invoke-direct {v0}, Lcom/unionpay/sdk/ag;-><init>()V

    invoke-static {v0}, Lcom/unionpay/sdk/k;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    sput-object p0, Lcom/unionpay/sdk/ab;->i:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getAdTrackingAppId()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_tracking_appId"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppAnalyticsAppId()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_analytics_appId"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_channelId"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGameAnalyticsAppId()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_game_appId"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPartnerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/sdk/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "UP_app_pefercen_profile"

    const-string v1, "UP_channelId"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/unionpay/sdk/ab;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static setAdTrackingAppId(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_tracking_appId"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppAnalyticsAppId(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_analytics_appId"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setChannelId(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_channelId"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setGameAnalyticsAppId(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UP_app_pefercen_profile"

    const-string v2, "UP_game_appId"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
