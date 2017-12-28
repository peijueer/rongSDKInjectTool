.class final Lcom/unionpay/sdk/az;
.super Ljava/lang/Object;


# direct methods
.method static a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v2, "UPpref_longtime"

    const-string v3, "UPaes_key"

    invoke-static {v1, v2, v3, v0}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(J)V
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_shorttime"

    const-string v2, "UPpref.end.key"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_shorttime"

    const-string v2, "UPpref.lastactivity.key"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v2, "UPpref_longtime"

    const-string v3, "UPpref.session.key"

    invoke-static {v1, v2, v3, v0}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_longtime"

    const-string v2, "UPisAppQuiting"

    invoke-static {v0, v1, v2, p0}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static c()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_shorttime"

    const-string v2, "UPpref.lastactivity.key"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static d()J
    .locals 5

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v3, "UPpref_longtime"

    const-string v4, "UPpref.start.key"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method static e()J
    .locals 5

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v3, "UPpref_longtime"

    const-string v4, "UPpref.init.key"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method static f()J
    .locals 5

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v3, "UPpref_shorttime"

    const-string v4, "UPpref.end.key"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method static g()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "-1"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_longtime"

    const-string v2, "UPisAppQuiting"

    const-string v3, "-1"

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static h()I
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/az;->k()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unionpay/sdk/az;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/unionpay/sdk/a;->a()Lcom/unionpay/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/a;->b(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static i()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/az;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unionpay/sdk/az;->j()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/unionpay/sdk/a;->a()Lcom/unionpay/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/a;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "unknown"

    goto :goto_0
.end method

.method private static j()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v2, "UPpref_longtime"

    const-string v3, "UPadditionalVersionName"

    invoke-static {v1, v2, v3, v0}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static k()J
    .locals 5

    const-wide/16 v0, -0x1

    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v2, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v3, "UPpref_longtime"

    const-string v4, "UPadditionalVersionCode"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/unionpay/sdk/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
