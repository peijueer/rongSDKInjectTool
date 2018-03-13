.class public Lcom/rongmzw/frame/sdk/utils/TaskManagerUtils;
.super Ljava/lang/Object;
.source "TaskManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPermission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 11
    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 12
    array-length v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 13
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 14
    const/4 v3, 0x1

    .line 21
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 12
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v2    # "string":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "string":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 19
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
