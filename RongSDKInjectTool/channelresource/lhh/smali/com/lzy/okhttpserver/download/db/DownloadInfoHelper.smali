.class public Lcom/lzy/okhttpserver/download/db/DownloadInfoHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadInfoHelper.java"


# static fields
.field private static final DB_CACHE_NAME:Ljava/lang/String; = "okhttputils_server.db"

.field public static final DB_CACHE_VERSION:I = 0x2

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE download_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, taskKey VARCHAR, url VARCHAR, targetFolder VARCHAR, targetPath VARCHAR, fileName VARCHAR, progress REAL, totalLength INTEGER, downloadLength INTEGER, networkSpeed INTEGER, state INTEGER, downloadRequest BLOB)"

.field private static final SQL_CREATE_UNIQUE_INDEX:Ljava/lang/String; = "CREATE UNIQUE INDEX cache_unique_index ON download_table(\"taskKey\")"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE download_table"

.field private static final SQL_DELETE_UNIQUE_INDEX:Ljava/lang/String; = "DROP INDEX cache_unique_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "download_table"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "okhttputils_server.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 51
    :try_start_0
    const-string v0, "CREATE TABLE download_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, taskKey VARCHAR, url VARCHAR, targetFolder VARCHAR, targetPath VARCHAR, fileName VARCHAR, progress REAL, totalLength INTEGER, downloadLength INTEGER, networkSpeed INTEGER, state INTEGER, downloadRequest BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON download_table(\"taskKey\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 64
    if-eq p3, p2, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    const/4 v0, 0x2

    if-le p3, v0, :cond_0

    .line 68
    :try_start_0
    const-string v0, "DROP INDEX cache_unique_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "DROP TABLE download_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string v0, "CREATE TABLE download_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, taskKey VARCHAR, url VARCHAR, targetFolder VARCHAR, targetPath VARCHAR, fileName VARCHAR, progress REAL, totalLength INTEGER, downloadLength INTEGER, networkSpeed INTEGER, state INTEGER, downloadRequest BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON download_table(\"taskKey\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
