.class Lcom/lzy/okhttputils/cache/CacheDao;
.super Lcom/lzy/okhttputils/cache/DataBaseDao;
.source "CacheDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okhttputils/cache/DataBaseDao",
        "<",
        "Lcom/lzy/okhttputils/cache/CacheEntity",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/lzy/okhttputils/cache/CacheHelper;

    invoke-direct {v0}, Lcom/lzy/okhttputils/cache/CacheHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 12
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 16
    const-string v0, "key=?"

    .line 17
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okhttputils/cache/CacheDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttputils/cache/CacheEntity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentValues(Lcom/lzy/okhttputils/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->getContentValues(Lcom/lzy/okhttputils/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/cache/CacheDao;->getContentValues(Lcom/lzy/okhttputils/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "cache_table"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Lcom/lzy/okhttputils/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/cache/CacheDao;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttputils/cache/CacheEntity;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v2, "key=?"

    .line 25
    new-array v3, v0, [Ljava/lang/String;

    aput-object p1, v3, v1

    .line 26
    invoke-virtual {p0, v2, v3}, Lcom/lzy/okhttputils/cache/CacheDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 27
    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
