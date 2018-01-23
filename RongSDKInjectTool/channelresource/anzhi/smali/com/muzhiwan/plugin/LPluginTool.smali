.class public Lcom/muzhiwan/plugin/LPluginTool;
.super Ljava/lang/Object;
.source "LPluginTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/LPluginTool;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muzhiwan/plugin/LPluginTool;->getActivityInfo(Landroid/content/pm/PackageInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/LPluginTool;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/muzhiwan/plugin/LPluginTool;->getActivityInfo(Landroid/content/pm/PackageInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityInfo(Landroid/content/pm/PackageInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "pkgInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "index"    # I

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/LPluginTool;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 82
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 83
    const/4 v3, 0x0

    .line 90
    :goto_0
    return-object v3

    .line 85
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 86
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 87
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 88
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 90
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public static getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 25
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 26
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 104
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/LPluginTool;->getAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 105
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 106
    const/4 v3, 0x0

    .line 113
    :goto_0
    return-object v3

    .line 108
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 110
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 111
    iput-object p1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 113
    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0
.end method

.method public static isNotEmpt(Ljava/lang/String;)Z
    .locals 1
    .param p0, "empt"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
