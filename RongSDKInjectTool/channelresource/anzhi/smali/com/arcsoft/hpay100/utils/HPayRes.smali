.class public Lcom/arcsoft/hpay100/utils/HPayRes;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->c:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "string"

    const-string v2, "app_name"

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->d:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channelid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCpName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->g:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cpname:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getKfPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->e:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kfPhone:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMMAppID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "string"

    const-string v2, "weakChinaMobile_appID"

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appid_string:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMMAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "string"

    const-string v2, "weakChinaMobile_appKey"

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appkey_string:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMMWeakSkin(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "1"

    :try_start_0
    const-string v1, "string"

    const-string v2, "weakChinaMobile_skin"

    invoke-static {p0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skin_string:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMerId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->b:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->f:Ljava/lang/String;

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orientation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
