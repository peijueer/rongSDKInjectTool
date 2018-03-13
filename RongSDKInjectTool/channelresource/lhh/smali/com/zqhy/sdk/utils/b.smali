.class public Lcom/zqhy/sdk/utils/b;
.super Ljava/lang/Object;
.source "AppsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/utils/b$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/zqhy/sdk/utils/b$a;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 219
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Lcom/zqhy/sdk/utils/b;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/zqhy/sdk/utils/b$a;

    move-result-object v0

    :cond_0
    return-object v0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Lcom/zqhy/sdk/utils/b$a;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    .line 234
    iget-object v9, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 235
    invoke-virtual {v9, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v9, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 237
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 238
    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 239
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 240
    iget v6, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 241
    iget v7, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eq v7, v0, :cond_1

    move v7, v0

    .line 242
    :goto_0
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eq v9, v0, :cond_0

    move v8, v0

    .line 243
    :cond_0
    new-instance v0, Lcom/zqhy/sdk/utils/b$a;

    invoke-direct/range {v0 .. v8}, Lcom/zqhy/sdk/utils/b$a;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v0

    :cond_1
    move v7, v8

    .line 241
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 71
    .line 73
    const-string v0, "com.zqhy.btgame.ui.activity.SplashActivity"

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v2, "json"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "SDKPackageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "isFromSDK"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    const/high16 v0, 0x800000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 286
    invoke-static {p0, p1}, Lcom/zqhy/sdk/utils/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
