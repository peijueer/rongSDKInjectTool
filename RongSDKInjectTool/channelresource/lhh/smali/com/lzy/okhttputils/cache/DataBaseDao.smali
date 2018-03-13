.class public abstract Lcom/lzy/okhttputils/cache/DataBaseDao;
.super Ljava/lang/Object;
.source "DataBaseDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 19
    return-void
.end method


# virtual methods
.method protected final closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 30
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    :cond_1
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 39
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->countColumn(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public countColumn(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(?) FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openReader()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 46
    const/4 v2, 0x0

    .line 48
    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 51
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 54
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    invoke-virtual {p0, v3, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 62
    :goto_1
    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    invoke-virtual {p0, v3, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    move v0, v1

    .line 62
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 60
    invoke-virtual {p0, v3, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public create(Ljava/lang/Object;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 147
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 148
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 149
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v2, v4}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 157
    :goto_0
    return-wide v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v2, v4}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 157
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 155
    invoke-virtual {p0, v2, v4}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v0
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 74
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 84
    :goto_0
    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 84
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    invoke-virtual {p0, v1, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v0
.end method

.method public deleteAll()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okhttputils/cache/DataBaseDao;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openReader()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 101
    const/4 v9, 0x0

    .line 103
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 104
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 105
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {p0, v0, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 115
    :goto_2
    return-object v10

    .line 108
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 112
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {p0, v0, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    goto :goto_2

    .line 112
    :catchall_0
    move-exception v1

    move-object v2, v9

    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 113
    invoke-virtual {p0, v0, v2}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v1

    .line 112
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 109
    :catch_1
    move-exception v1

    move-object v2, v9

    goto :goto_1
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method protected final openReader()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected final openWriter()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/DataBaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public replace(Ljava/lang/Object;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 130
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 131
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 132
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v2, v4}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 140
    :goto_0
    return-wide v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v2, v4}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 140
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {p0, v2, v4}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 164
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/cache/DataBaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v1, v3}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 174
    :goto_0
    return v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v1, v3}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 172
    invoke-virtual {p0, v1, v3}, Lcom/lzy/okhttputils/cache/DataBaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v0
.end method
