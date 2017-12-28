.class public Lcom/anzhi/plugin/loader/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# static fields
.field private static a:Lcom/anzhi/plugin/loader/PluginManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;

.field private d:Ljava/util/Map;

.field private e:Ljava/lang/Object;

.field private f:Landroid/os/Handler;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->c:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->d:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->e:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->h:Ljava/util/Map;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;-><init>(Lcom/anzhi/plugin/loader/PluginManager;B)V

    invoke-virtual {v0}, Lcom/anzhi/plugin/loader/PluginManager$MyThreadHandler;->start()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/anzhi/plugin/loader/PluginManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/anzhi/plugin/loader/PluginManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginManager;->f:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v0, :cond_0

    .line 162
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 163
    const-string v0, "unlock"

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 279
    if-eqz p2, :cond_0

    .line 280
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x0

    .line 283
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 284
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-interface {p2}, Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;->getPluginDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 286
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 287
    const/16 v2, 0x4e20

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 288
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 290
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 291
    const/16 v0, 0x1000

    new-array v5, v0, [B

    .line 294
    const-string v0, "download plugin start"

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->v(Ljava/lang/String;)V

    move v0, v3

    .line 295
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 300
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download plugin end totalByte="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->v(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;->checkPluginDownloadFileValid(Ljava/lang/String;)Z

    move-result v0

    .line 304
    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 307
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 308
    const-string v0, "\u901a\u8fc7\u7f51\u7edc\u83b7\u53d6\u63d2\u4ef6\u6210\u529f"

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_1
    return-void

    .line 296
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 297
    add-int/2addr v0, v3

    .line 298
    int-to-long v6, v0

    invoke-interface {p2, v6, v7}, Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;->onPluginDownloadProgress(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    :goto_2
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    .line 314
    const-string v0, "\u901a\u8fc7\u7f51\u7edc\u83b7\u53d6\u63d2\u4ef6\u5931\u8d25"

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 316
    invoke-interface {p2}, Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;->onPluginDownloadFailed()V

    .line 317
    if-eqz v1, :cond_0

    .line 319
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 310
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 312
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private a(Ljava/lang/String;ZLcom/anzhi/plugin/loader/OnPluginLoadCallback;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {p3}, Lcom/anzhi/plugin/loader/OnPluginLoadCallback;->getLocalPluginFileName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "raw"

    .line 359
    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 357
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 363
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".raw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 365
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 366
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 369
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 371
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".raw"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 373
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 375
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 376
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 378
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 379
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 381
    :goto_2
    if-nez p2, :cond_0

    if-le v4, v1, :cond_2

    invoke-interface {p3, v3}, Lcom/anzhi/plugin/loader/OnPluginLoadCallback;->checkLocalPluginSupportVer(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 383
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " plugin in app_plugin ver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plugin in assets ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", replace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->d(Ljava/lang/String;)V

    .line 389
    :goto_3
    const/4 v0, 0x1

    .line 393
    :goto_4
    return v0

    .line 361
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-interface {p3}, Lcom/anzhi/plugin/loader/OnPluginLoadCallback;->getLocalPluginFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_0

    .line 367
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 390
    :catch_1
    move-exception v1

    .line 391
    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 386
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " plugin in app_plugin ver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plugin in assets ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no replace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/anzhi/plugin/loader/PluginManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->f:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/anzhi/plugin/loader/PluginManager;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/anzhi/plugin/loader/PluginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/anzhi/plugin/loader/PluginManager;->a:Lcom/anzhi/plugin/loader/PluginManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/anzhi/plugin/loader/PluginManager;

    invoke-direct {v0, p0}, Lcom/anzhi/plugin/loader/PluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anzhi/plugin/loader/PluginManager;->a:Lcom/anzhi/plugin/loader/PluginManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/anzhi/plugin/loader/PluginManager;->a:Lcom/anzhi/plugin/loader/PluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public delPluginFile(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginDexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 414
    if-nez p1, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-object v0

    .line 417
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 422
    :try_start_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 424
    :catch_1
    move-exception v1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/anzhi/plugin/loader/PluginManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public getPluginDexPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    const-string v2, "dex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPluginLoaderClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public getPluginPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    const-string v2, "plugin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p2, p3}, Lcom/anzhi/plugin/loader/PluginManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_0

    .line 403
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 404
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invoke plugin method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isContainer(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 174
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public loadPlugin(Ljava/lang/String;Lcom/anzhi/plugin/loader/OnPluginLoadCallback;Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;)Z
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    if-nez p1, :cond_2

    .line 197
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\u63d2\u4ef6\u5305\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    :try_start_1
    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V

    .line 264
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 267
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginDexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    :cond_1
    invoke-direct {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->a(Ljava/lang/String;)V

    move v0, v3

    .line 274
    :goto_0
    return v0

    .line 199
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anzhi/plugin/loader/PluginManager$OnLoaderListener;

    .line 200
    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v6, p0, Lcom/anzhi/plugin/loader/PluginManager;->g:Ljava/util/Map;

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v6, "lock"

    invoke-static {v6}, Lcom/anzhi/plugin/util/LogPluginUtils;->v(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :try_start_4
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    :try_start_5
    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->c:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 203
    const-string v4, "is exists loaded dex!"

    invoke-static {v4}, Lcom/anzhi/plugin/util/LogPluginUtils;->w(Ljava/lang/String;)V

    .line 204
    if-eqz v0, :cond_4

    .line 205
    invoke-interface {v0, p1}, Lcom/anzhi/plugin/loader/PluginManager$OnLoaderListener;->onLoaderCompleted(Ljava/lang/String;)V

    .line 207
    :cond_4
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 272
    invoke-direct {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->a(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v5

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 271
    :catchall_1
    move-exception v0

    .line 272
    invoke-direct {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->a(Ljava/lang/String;)V

    .line 273
    throw v0

    .line 201
    :cond_5
    :try_start_7
    monitor-exit v1

    .line 210
    if-eqz p2, :cond_6

    .line 211
    invoke-interface {p2}, Lcom/anzhi/plugin/loader/OnPluginLoadCallback;->getLocalPluginFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 212
    invoke-interface {p2}, Lcom/anzhi/plugin/loader/OnPluginLoadCallback;->isDebugMode()Z

    move-result v1

    invoke-direct {p0, p1, v1, p2}, Lcom/anzhi/plugin/loader/PluginManager;->a(Ljava/lang/String;ZLcom/anzhi/plugin/loader/OnPluginLoadCallback;)Z

    move-result v5

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "\u8c03\u8bd5\u6a21\u5f0f\uff1a"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/anzhi/plugin/loader/OnPluginLoadCallback;->isDebugMode()Z

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\uff0c\u672c\u5730\u63d2\u4ef6\u83b7\u53d6 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v5, :cond_7

    const-string v1, "\u6210\u529f"

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/String;)V

    .line 214
    invoke-interface {p2}, Lcom/anzhi/plugin/loader/OnPluginLoadCallback;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "\u8c03\u8bd5\u6a21\u5f0f\uff0c\u672c\u5730\u63d2\u4ef6\u83b7\u53d6 "

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_8

    const-string v1, "\u6210\u529f"

    :goto_2
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->f:Landroid/os/Handler;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->f:Landroid/os/Handler;

    new-instance v6, Lcom/anzhi/plugin/loader/PluginManager$2;

    invoke-direct {v6, p0, v1}, Lcom/anzhi/plugin/loader/PluginManager$2;-><init>(Lcom/anzhi/plugin/loader/PluginManager;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    :cond_6
    :goto_3
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_a

    .line 221
    invoke-direct {p0, p1, p3}, Lcom/anzhi/plugin/loader/PluginManager;->a(Ljava/lang/String;Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;)V

    .line 222
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 223
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u65e0\u6cd5\u627e\u5230\u63d2\u4ef6"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 272
    invoke-direct {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->a(Ljava/lang/String;)V

    move v0, v3

    .line 224
    goto/16 :goto_0

    .line 201
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1

    throw v0

    .line 213
    :cond_7
    const-string v1, "\u5931\u8d25!!"

    goto :goto_1

    .line 215
    :cond_8
    const-string v1, "\u5931\u8d25!!"

    goto :goto_2

    :cond_9
    new-instance v5, Lcom/anzhi/plugin/loader/PluginManager$3;

    invoke-direct {v5, p0, v1}, Lcom/anzhi/plugin/loader/PluginManager$3;-><init>(Lcom/anzhi/plugin/loader/PluginManager;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/anzhi/plugin/loader/PluginManager$3;->start()V

    goto :goto_3

    .line 227
    :cond_a
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 228
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    const-string v8, "dex"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 229
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 228
    invoke-direct {v5, v6, v7, v8, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 230
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 231
    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 230
    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 233
    if-eqz v6, :cond_c

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_c

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 234
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 238
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "load plguin class: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "\u63d2\u4ef6\u52a0\u8f7d\u6210\u529f\uff0c\u8def\u5f84\uff1a"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anzhi/plugin/util/LogPluginUtils;->i(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/anzhi/plugin/loader/PluginManager;->e:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 241
    :try_start_9
    invoke-virtual {v5, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 242
    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->c:Ljava/util/Map;

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 244
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->d:Ljava/util/Map;

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    const-string v7, "android.content.res.AssetManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const-string v10, "addAssetPath"

    invoke-virtual {v7, v10, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v5, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v5, v7

    const-class v7, Landroid/content/res/Resources;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 247
    const-string v5, "setApplicationContext"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/anzhi/plugin/loader/PluginManager;->b:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {p0, p1, v5, v7, v8}, Lcom/anzhi/plugin/loader/PluginManager;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v5, "setResources"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/res/Resources;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {p0, p1, v5, v7, v8}, Lcom/anzhi/plugin/loader/PluginManager;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v1, Lcom/anzhi/plugin/loader/PluginManager$1;

    invoke-direct {v1, p0, p3, v6, p1}, Lcom/anzhi/plugin/loader/PluginManager$1;-><init>(Lcom/anzhi/plugin/loader/PluginManager;Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Lcom/anzhi/plugin/loader/PluginManager$1;->start()V

    .line 240
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 259
    if-eqz v0, :cond_b

    .line 260
    :try_start_a
    invoke-interface {v0, p1}, Lcom/anzhi/plugin/loader/PluginManager$OnLoaderListener;->onLoaderCompleted(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 272
    :cond_b
    invoke-direct {p0, p1}, Lcom/anzhi/plugin/loader/PluginManager;->a(Ljava/lang/String;)V

    move v0, v2

    .line 274
    goto/16 :goto_0

    .line 236
    :cond_c
    :try_start_b
    const-string v1, "\u63d2\u4ef6\u5165\u53e3\u627e\u4e0d\u5230"

    invoke-static {v1}, Lcom/anzhi/plugin/util/LogPluginUtils;->e(Ljava/lang/String;)V

    move-object v1, v4

    goto/16 :goto_4

    .line 240
    :catchall_3
    move-exception v0

    monitor-exit v4

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method protected removeLoaderListener(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->h:Ljava/util/Map;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected setLoaderListener(Ljava/lang/String;Lcom/anzhi/plugin/loader/PluginManager$OnLoaderListener;)V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->h:Ljava/util/Map;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setReloadPlugin(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
