.class public final Lcom/ipaynow/qqpay/plugin/c/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field private F:Ljava/util/ArrayList;

.field private G:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->F:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->G:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->F:Ljava/util/ArrayList;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->F:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->F:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->F:Ljava/util/ArrayList;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->G:Ljava/util/ArrayList;

    const-string v1, "25"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static f()Lcom/ipaynow/qqpay/plugin/c/a/b/a;
    .locals 1

    invoke-static {}, Lcom/ipaynow/qqpay/plugin/c/a/b/b;->g()Lcom/ipaynow/qqpay/plugin/c/a/b/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_3

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    array-length v6, v4

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_0

    aget-object v7, v4, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/c/a/b/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
