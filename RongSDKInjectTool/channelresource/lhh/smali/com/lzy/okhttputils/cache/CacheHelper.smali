.class Lcom/lzy/okhttputils/cache/CacheHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CacheHelper.java"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DB_CACHE_NAME:Ljava/lang/String; = "okhttputils_cache.db"

.field public static final DB_CACHE_VERSION:I = 0x2

.field public static final HEAD:Ljava/lang/String; = "head"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LOCAL_EXPIRE:Ljava/lang/String; = "localExpire"

.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

.field private static final SQL_CREATE_UNIQUE_INDEX:Ljava/lang/String; = "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

.field private static final SQL_DELETE_TABLE:Ljava/lang/String; = "DROP TABLE cache_table"

.field private static final SQL_DELETE_UNIQUE_INDEX:Ljava/lang/String; = "DROP INDEX cache_unique_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "cache_table"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "okhttputils_cache.db"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 41
    :try_start_0
    const-string v0, "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 50
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/lzy/okhttputils/cache/CacheHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 73
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 54
    if-eq p3, p2, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 57
    :try_start_0
    const-string v0, "DROP INDEX cache_unique_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "DROP TABLE cache_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string v0, "CREATE TABLE cache_table(_id INTEGER PRIMARY KEY AUTOINCREMENT, key VARCHAR, localExpire INTEGER, head BLOB, data BLOB)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "CREATE UNIQUE INDEX cache_unique_index ON cache_table(\"key\")"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
