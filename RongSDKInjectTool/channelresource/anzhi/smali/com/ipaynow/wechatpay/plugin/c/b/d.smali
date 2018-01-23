.class public final Lcom/ipaynow/wechatpay/plugin/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private K:Ljava/util/ArrayList;

.field private L:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->K:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->L:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->K:Ljava/util/ArrayList;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->K:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->K:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->K:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->L:Ljava/util/ArrayList;

    const-string v1, "13"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/ipaynow/wechatpay/plugin/c/b/d;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 176
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 181
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h()Lcom/ipaynow/wechatpay/plugin/c/b/d;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/c/b/e;->i()Lcom/ipaynow/wechatpay/plugin/c/b/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 135
    const/16 v3, 0x1000

    .line 134
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 136
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/c/b/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_3

    move v0, v1

    .line 151
    :goto_1
    return v0

    .line 138
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    array-length v6, v4

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_0

    aget-object v7, v4, v2

    .line 140
    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 141
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 142
    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 149
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method
