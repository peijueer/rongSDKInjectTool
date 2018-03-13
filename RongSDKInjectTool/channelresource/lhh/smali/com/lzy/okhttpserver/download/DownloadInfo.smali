.class public Lcom/lzy/okhttpserver/download/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/lzy/okhttpserver/download/DownloadInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOWNLOAD_LENGTH:Ljava/lang/String; = "downloadLength"

.field public static final DOWNLOAD_REQUEST:Ljava/lang/String; = "downloadRequest"

.field public static final FILE_NAME:Ljava/lang/String; = "fileName"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NETWORK_SPEED:Ljava/lang/String; = "networkSpeed"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TARGET_FOLDER:Ljava/lang/String; = "targetFolder"

.field public static final TARGET_PATH:Ljava/lang/String; = "targetPath"

.field public static final TASK_KEY:Ljava/lang/String; = "taskKey"

.field public static final TOTAL_LENGTH:Ljava/lang/String; = "totalLength"

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private downloadLength:J

.field private downloadRequest:Lcom/lzy/okhttpserver/download/db/DownloadRequest;

.field private fileName:Ljava/lang/String;

.field private id:I

.field private listener:Lcom/lzy/okhttpserver/listener/DownloadListener;

.field private networkSpeed:J

.field private progress:F

.field private request:Lcom/lzy/okhttputils/request/BaseRequest;

.field private state:I

.field private targetFolder:Ljava/lang/String;

.field private targetPath:Ljava/lang/String;

.field private task:Lcom/lzy/okhttpserver/download/DownloadTask;

.field private taskKey:Ljava/lang/String;

.field private totalLength:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->state:I

    .line 56
    new-instance v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/db/DownloadRequest;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->downloadRequest:Lcom/lzy/okhttpserver/download/db/DownloadRequest;

    return-void
.end method

.method public static buildContentValues(Lcom/lzy/okhttpserver/download/DownloadInfo;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 62
    const-string v0, "taskKey"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "url"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "targetFolder"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "targetPath"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "fileName"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "progress"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getProgress()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 68
    const-string v0, "totalLength"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTotalLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    const-string v0, "downloadLength"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getDownloadLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v0, "networkSpeed"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getNetworkSpeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v0, "state"

    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getRequest()Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getDownloadRequest()Lcom/lzy/okhttpserver/download/db/DownloadRequest;

    move-result-object v5

    .line 75
    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->cacheKey:Ljava/lang/String;

    .line 76
    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->getCacheTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->cacheTime:J

    .line 77
    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->getCacheMode()Lcom/lzy/okhttputils/cache/CacheMode;

    move-result-object v1

    iput-object v1, v5, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    .line 78
    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->url:Ljava/lang/String;

    .line 79
    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->getParams()Lcom/lzy/okhttputils/model/HttpParams;

    move-result-object v1

    iput-object v1, v5, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    .line 80
    invoke-virtual {v0}, Lcom/lzy/okhttputils/request/BaseRequest;->getHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v1

    iput-object v1, v5, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    .line 81
    invoke-static {v0}, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->getMethod(Lcom/lzy/okhttputils/request/BaseRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    .line 86
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    invoke-virtual {v1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 90
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 91
    const-string v2, "downloadRequest"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 97
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 102
    :cond_1
    :goto_0
    return-object v4

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 93
    :goto_1
    :try_start_4
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 96
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 97
    :cond_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 98
    :catch_2
    move-exception v0

    .line 99
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 96
    :goto_2
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 97
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 100
    :cond_4
    :goto_3
    throw v0

    .line 98
    :catch_3
    move-exception v1

    .line 99
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 95
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 92
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v4, Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-direct {v4}, Lcom/lzy/okhttpserver/download/DownloadInfo;-><init>()V

    .line 107
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setId(I)V

    .line 108
    const-string v0, "taskKey"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTaskKey(Ljava/lang/String;)V

    .line 109
    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 110
    const-string v0, "targetFolder"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTargetFolder(Ljava/lang/String;)V

    .line 111
    const-string v0, "targetPath"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTargetPath(Ljava/lang/String;)V

    .line 112
    const-string v0, "fileName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 113
    const-string v0, "progress"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setProgress(F)V

    .line 114
    const-string v0, "totalLength"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTotalLength(J)V

    .line 115
    const-string v0, "downloadLength"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setDownloadLength(J)V

    .line 116
    const-string v0, "networkSpeed"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 117
    const-string v0, "state"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 119
    const-string v0, "downloadRequest"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;

    .line 127
    invoke-virtual {v4, v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setDownloadRequest(Lcom/lzy/okhttpserver/download/db/DownloadRequest;)V

    .line 128
    iget-object v2, v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->url:Ljava/lang/String;

    iget-object v5, v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->method:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->createRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_0

    .line 130
    iget-object v5, v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->cacheMode:Lcom/lzy/okhttputils/cache/CacheMode;

    invoke-virtual {v2, v5}, Lcom/lzy/okhttputils/request/BaseRequest;->cacheMode(Lcom/lzy/okhttputils/cache/CacheMode;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 131
    iget-wide v6, v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->cacheTime:J

    invoke-virtual {v2, v6, v7}, Lcom/lzy/okhttputils/request/BaseRequest;->cacheTime(J)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 132
    iget-object v5, v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->cacheKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/lzy/okhttputils/request/BaseRequest;->cacheKey(Ljava/lang/String;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 133
    iget-object v5, v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->params:Lcom/lzy/okhttputils/model/HttpParams;

    invoke-virtual {v2, v5}, Lcom/lzy/okhttputils/request/BaseRequest;->params(Lcom/lzy/okhttputils/model/HttpParams;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 134
    iget-object v0, v0, Lcom/lzy/okhttpserver/download/db/DownloadRequest;->headers:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v2, v0}, Lcom/lzy/okhttputils/request/BaseRequest;->headers(Lcom/lzy/okhttputils/model/HttpHeaders;)Lcom/lzy/okhttputils/request/BaseRequest;

    .line 135
    invoke-virtual {v4, v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setRequest(Lcom/lzy/okhttputils/request/BaseRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 143
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 148
    :cond_2
    :goto_1
    return-object v4

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 139
    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 142
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 143
    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 144
    :catch_2
    move-exception v0

    .line 145
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 142
    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 143
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 146
    :cond_5
    :goto_4
    throw v0

    .line 144
    :catch_3
    move-exception v1

    .line 145
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 141
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 138
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :cond_6
    move-object v1, v2

    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/lzy/okhttpserver/download/DownloadInfo;)I
    .locals 2
    .param p1    # Lcom/lzy/okhttpserver/download/DownloadInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    check-cast p1, Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->compareTo(Lcom/lzy/okhttpserver/download/DownloadInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 278
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/lzy/okhttpserver/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 279
    check-cast p1, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 280
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadLength()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->downloadLength:J

    return-wide v0
.end method

.method public getDownloadRequest()Lcom/lzy/okhttpserver/download/db/DownloadRequest;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->downloadRequest:Lcom/lzy/okhttpserver/download/db/DownloadRequest;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->id:I

    return v0
.end method

.method public getListener()Lcom/lzy/okhttpserver/listener/DownloadListener;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->listener:Lcom/lzy/okhttpserver/listener/DownloadListener;

    return-object v0
.end method

.method public getNetworkSpeed()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->networkSpeed:J

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->progress:F

    return v0
.end method

.method public getRequest()Lcom/lzy/okhttputils/request/BaseRequest;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->request:Lcom/lzy/okhttputils/request/BaseRequest;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->state:I

    return v0
.end method

.method public getTargetFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->targetFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->targetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Lcom/lzy/okhttpserver/download/DownloadTask;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->task:Lcom/lzy/okhttpserver/download/DownloadTask;

    return-object v0
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->taskKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->totalLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->listener:Lcom/lzy/okhttpserver/listener/DownloadListener;

    .line 273
    return-void
.end method

.method public setDownloadLength(J)V
    .locals 1

    .prologue
    .line 220
    iput-wide p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->downloadLength:J

    .line 221
    return-void
.end method

.method public setDownloadRequest(Lcom/lzy/okhttpserver/download/db/DownloadRequest;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->downloadRequest:Lcom/lzy/okhttpserver/download/db/DownloadRequest;

    .line 261
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->fileName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 156
    iput p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->id:I

    .line 157
    return-void
.end method

.method public setListener(Lcom/lzy/okhttpserver/listener/DownloadListener;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->listener:Lcom/lzy/okhttpserver/listener/DownloadListener;

    .line 269
    return-void
.end method

.method public setNetworkSpeed(J)V
    .locals 1

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->networkSpeed:J

    .line 229
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->progress:F

    .line 205
    return-void
.end method

.method public setRequest(Lcom/lzy/okhttputils/request/BaseRequest;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->request:Lcom/lzy/okhttputils/request/BaseRequest;

    .line 245
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->state:I

    .line 237
    return-void
.end method

.method public setTargetFolder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->targetFolder:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->targetPath:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setTask(Lcom/lzy/okhttpserver/download/DownloadTask;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->task:Lcom/lzy/okhttpserver/download/DownloadTask;

    .line 253
    return-void
.end method

.method public setTaskKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->taskKey:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setTotalLength(J)V
    .locals 1

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->totalLength:J

    .line 213
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadInfo;->url:Ljava/lang/String;

    .line 173
    return-void
.end method
