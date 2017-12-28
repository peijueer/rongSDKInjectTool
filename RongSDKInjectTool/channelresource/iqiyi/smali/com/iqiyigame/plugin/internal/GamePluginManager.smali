.class public Lcom/iqiyigame/plugin/internal/GamePluginManager;
.super Ljava/lang/Object;
.source "GamePluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;
    }
.end annotation


# static fields
.field public static final START_RESULT_NO_CLASS:I = 0x2

.field public static final START_RESULT_NO_PKG:I = 0x1

.field public static final START_RESULT_SUCCESS:I = 0x0

.field public static final START_RESULT_TYPE_ERROR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DLPluginManager"

.field private static sInstance:Lcom/iqiyigame/plugin/internal/GamePluginManager;


# instance fields
.field private dexOutputPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFrom:I

.field private mNativeLibDir:Ljava/lang/String;

.field private final mPackagesHolder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/iqiyigame/plugin/internal/GamePluginPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mPackagesHolder:Ljava/util/HashMap;

    .line 81
    iput v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mFrom:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mNativeLibDir:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mContext:Landroid/content/Context;

    const-string v1, "pluginlib"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mNativeLibDir:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/iqiyigame/plugin/internal/GamePluginManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/iqiyigame/plugin/internal/GamePluginManager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I

    return p1
.end method

.method private copySoLib(Ljava/lang/String;)V
    .locals 3
    .param p1, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->getSoLoader()Lcom/iqiyigame/plugin/utils/GameSoLibManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->copyPluginSoLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 8
    .param p1, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    const-class v3, Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 174
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    .local v0, "addAssetPath":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "addAssetPath":Ljava/lang/reflect/Method;
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 5
    .param p1, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mContext:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 166
    .local v0, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->dexOutputPath:Ljava/lang/String;

    .line 167
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->dexOutputPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 168
    .local v1, "loader":Ldalvik/system/DexClassLoader;
    return-object v1
.end method

.method private createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 189
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    .local v1, "superRes":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 191
    .local v0, "resources":Landroid/content/res/Resources;
    return-object v0
.end method

.method private fetchProxyServiceClass(Lcom/iqiyigame/plugin/internal/GameIntent;Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;)V
    .locals 7
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "fetchProxyServiceClass"    # Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;

    .prologue
    const/4 v6, 0x0

    .line 365
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "disallow null packageName."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 369
    :cond_0
    iget-object v5, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 370
    .local v3, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-nez v3, :cond_1

    .line 371
    const-string v5, "START_RESULT_NO_PKG"

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 372
    const/4 v5, 0x1

    invoke-interface {p2, v5, v6}, Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    .line 396
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "className":Ljava/lang/String;
    iget-object v5, v3, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v5, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 379
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_2

    .line 380
    const-string v5, "START_RESULT_NO_CLASS"

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 381
    const/4 v5, 0x2

    invoke-interface {p2, v5, v6}, Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    .line 385
    :cond_2
    invoke-direct {p0, v1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 386
    .local v4, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez v4, :cond_3

    .line 387
    const-string v5, "START_RESULT_TYPE_ERROR"

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 388
    const/4 v5, 0x3

    invoke-interface {p2, v5, v6}, Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    .line 391
    :cond_3
    const-string v5, "START_RESULT_SUCCESS"

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 393
    const-string v5, "extra.class"

    invoke-virtual {p1, v5, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const-string v5, "extra.package"

    invoke-virtual {p1, v5, v2}, Lcom/iqiyigame/plugin/internal/GameIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const/4 v5, 0x0

    invoke-interface {p2, v5, v4}, Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iqiyigame/plugin/internal/GamePluginManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->sInstance:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    if-nez v0, :cond_1

    .line 94
    const-class v1, Lcom/iqiyigame/plugin/internal/GamePluginManager;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->sInstance:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/iqiyigame/plugin/internal/GamePluginManager;

    invoke-direct {v0, p0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->sInstance:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    .line 98
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    sget-object v0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->sInstance:Lcom/iqiyigame/plugin/internal/GamePluginManager;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPluginActivityFullPath(Lcom/iqiyigame/plugin/internal/GameIntent;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)Ljava/lang/String;
    .locals 3
    .param p1, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p2, "pluginPackage"    # Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .prologue
    .line 411
    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->defaultActivity:Ljava/lang/String;

    .line 413
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_1
    return-object v0
.end method

.method private getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 429
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v1, Lcom/iqiyigame/plugin/GameBasePluginActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    const-class v0, Lcom/iqiyigame/plugin/GameProxyActivity;

    .line 435
    :cond_0
    :goto_0
    return-object v0

    .line 431
    :cond_1
    const-class v1, Lcom/iqiyigame/plugin/GameBasePluginFragmentActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-class v0, Lcom/iqiyigame/plugin/GameProxyFragmentActivity;

    goto :goto_0
.end method

.method private getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 440
    .local v0, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const-class v1, Lcom/iqiyigame/plugin/GameBasePluginService;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    const-class v0, Lcom/iqiyigame/plugin/GameProxyService;

    .line 445
    :cond_0
    return-object v0
.end method

.method private loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 407
    :goto_0
    return-object v0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private performStartActivityForResult(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p3, "requestCode"    # I

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DLPluginManager launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_d(Ljava/lang/String;)V

    .line 450
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 451
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    :goto_0
    return-void

    .line 453
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v5, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 150
    .local v2, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 159
    .end local v2    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    .local v3, "pluginPackage":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 153
    .end local v3    # "pluginPackage":Ljava/lang/Object;
    .restart local v2    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    :cond_0
    invoke-direct {p0, p2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    .line 154
    .local v1, "dexClassLoader":Ldalvik/system/DexClassLoader;
    invoke-direct {p0, p2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 155
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-direct {p0, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v4

    .line 157
    .local v4, "resources":Landroid/content/res/Resources;
    new-instance v2, Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .end local v2    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    invoke-direct {v2, v1, v4, p1, v0}, Lcom/iqiyigame/plugin/internal/GamePluginPackage;-><init>(Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;Landroid/content/res/AssetManager;)V

    .line 158
    .restart local v2    # "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    iget-object v5, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 159
    .restart local v3    # "pluginPackage":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public bindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;I)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I

    .prologue
    .line 316
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 319
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    .line 322
    :cond_0
    new-instance v0, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iqiyigame/plugin/internal/GamePluginManager$3;-><init>(Lcom/iqiyigame/plugin/internal/GamePluginManager;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    invoke-direct {p0, p2, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->fetchProxyServiceClass(Lcom/iqiyigame/plugin/internal/GameIntent;Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;)V

    .line 335
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I

    goto :goto_0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    return-object v0
.end method

.method public loadApk(Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->loadApk(Ljava/lang/String;Z)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v0

    return-object v0
.end method

.method public loadApk(Ljava/lang/String;Z)Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    .locals 4
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "hasSoLib"    # Z

    .prologue
    .line 124
    const/4 v2, 0x1

    iput v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mFrom:I

    .line 126
    iget-object v2, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 128
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 137
    :cond_0
    :goto_0
    return-object v1

    .line 132
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    move-result-object v1

    .line 133
    .local v1, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-eqz p2, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->copySoLib(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPluginActivity(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;

    .prologue
    .line 216
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p3, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 229
    iget v6, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mFrom:I

    if-nez v6, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Lcom/iqiyigame/plugin/internal/GameIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;I)V

    .line 263
    :goto_0
    return v5

    .line 235
    :cond_0
    invoke-virtual {p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "disallow null packageName."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 240
    :cond_1
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iqiyigame/plugin/internal/GamePluginPackage;

    .line 241
    .local v4, "pluginPackage":Lcom/iqiyigame/plugin/internal/GamePluginPackage;
    if-nez v4, :cond_2

    .line 242
    const/4 v5, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-direct {p0, p2, v4}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getPluginActivityFullPath(Lcom/iqiyigame/plugin/internal/GameIntent;Lcom/iqiyigame/plugin/internal/GamePluginPackage;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "className":Ljava/lang/String;
    iget-object v6, v4, Lcom/iqiyigame/plugin/internal/GamePluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v6, v1}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 247
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_3

    .line 248
    const/4 v5, 0x2

    goto :goto_0

    .line 253
    :cond_3
    invoke-direct {p0, v2}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 254
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez v0, :cond_4

    .line 255
    const/4 v5, 0x3

    goto :goto_0

    .line 259
    :cond_4
    const-string v6, "extra.class"

    invoke-virtual {p2, v6, v1}, Lcom/iqiyigame/plugin/internal/GameIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v6, "extra.package"

    invoke-virtual {p2, v6, v3}, Lcom/iqiyigame/plugin/internal/GameIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v6, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;I)V

    goto :goto_0
.end method

.method public startPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;

    .prologue
    .line 267
    const-string v0, "startPluginService"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 268
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 269
    const-string v0, "startPluginService FROM_INTERNAL"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 275
    :cond_0
    new-instance v0, Lcom/iqiyigame/plugin/internal/GamePluginManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager$1;-><init>(Lcom/iqiyigame/plugin/internal/GamePluginManager;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->fetchProxyServiceClass(Lcom/iqiyigame/plugin/internal/GameIntent;Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;)V

    .line 288
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I

    goto :goto_0
.end method

.method public stopPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;

    .prologue
    .line 292
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p2}, Lcom/iqiyigame/plugin/internal/GameIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/iqiyigame/plugin/internal/GameIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 295
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 298
    :cond_0
    new-instance v0, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/iqiyigame/plugin/internal/GamePluginManager$2;-><init>(Lcom/iqiyigame/plugin/internal/GamePluginManager;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->fetchProxyServiceClass(Lcom/iqiyigame/plugin/internal/GameIntent;Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;)V

    .line 311
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I

    goto :goto_0
.end method

.method public unBindPluginService(Landroid/content/Context;Lcom/iqiyigame/plugin/internal/GameIntent;Landroid/content/ServiceConnection;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/iqiyigame/plugin/internal/GameIntent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 339
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 341
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    .line 344
    :cond_0
    new-instance v0, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/iqiyigame/plugin/internal/GamePluginManager$4;-><init>(Lcom/iqiyigame/plugin/internal/GamePluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-direct {p0, p2, v0}, Lcom/iqiyigame/plugin/internal/GamePluginManager;->fetchProxyServiceClass(Lcom/iqiyigame/plugin/internal/GameIntent;Lcom/iqiyigame/plugin/internal/GamePluginManager$OnFetchProxyServiceClass;)V

    .line 355
    iget v0, p0, Lcom/iqiyigame/plugin/internal/GamePluginManager;->mResult:I

    goto :goto_0
.end method
