.class public Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;
.super Lcom/lzy/okhttputils/cache/DataBaseDao;
.source "DownloadInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/cache/DataBaseDao",
        "<",
        "Lcom/lzy/okhttpserver/download/DownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/lzy/okhttpserver/download/db/DownloadInfoHelper;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/db/DownloadInfoHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/cache/DataBaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 24
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v0, "taskKey=?"

    .line 29
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttpserver/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    const-string v6, "_id ASC"

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->get([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues(Lcom/lzy/okhttpserver/download/DownloadInfo;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 54
    invoke-static {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->buildContentValues(Lcom/lzy/okhttpserver/download/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->getContentValues(Lcom/lzy/okhttpserver/download/DownloadInfo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "download_table"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/lzy/okhttpserver/download/DownloadInfo;)I
    .locals 4

    .prologue
    .line 39
    const-string v0, "taskKey=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
