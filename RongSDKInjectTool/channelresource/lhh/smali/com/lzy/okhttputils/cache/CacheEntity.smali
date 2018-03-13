.class public Lcom/lzy/okhttputils/cache/CacheEntity;
.super Ljava/lang/Object;
.source "CacheEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CACHE_NEVER_EXPIRE:J = -0x1L

.field private static final serialVersionUID:J = -0x3c32a52e6586e8daL


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private id:J

.field private isExpire:Z

.field private key:Ljava/lang/String;

.field private localExpire:J

.field private responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValues(Lcom/lzy/okhttputils/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 93
    const-string v0, "key"

    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "localExpire"

    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_b

    .line 101
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 103
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 105
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 106
    const-string v5, "head"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 112
    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 113
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 119
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_a

    .line 124
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 126
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 128
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 129
    const-string v2, "data"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 135
    :goto_2
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 136
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 141
    :cond_3
    :goto_3
    return-object v4

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 109
    :goto_4
    :try_start_8
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 112
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 113
    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 114
    :catch_2
    move-exception v0

    .line 115
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 112
    :goto_5
    if-eqz v1, :cond_5

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 113
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 116
    :cond_6
    :goto_6
    throw v0

    .line 114
    :catch_3
    move-exception v1

    .line 115
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 137
    :catch_4
    move-exception v0

    .line 138
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 131
    :catch_5
    move-exception v0

    move-object v1, v2

    .line 132
    :goto_7
    :try_start_b
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 135
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 136
    :cond_7
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 137
    :catch_6
    move-exception v0

    .line 138
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 134
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 135
    :goto_8
    if-eqz v1, :cond_8

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 136
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 139
    :cond_9
    :goto_9
    throw v0

    .line 137
    :catch_7
    move-exception v1

    .line 138
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 134
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_8

    .line 131
    :catch_8
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_7

    .line 111
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_6
    move-exception v0

    goto :goto_5

    .line 108
    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_b
    move-exception v0

    goto :goto_4

    :cond_a
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_2

    :cond_b
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_0
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okhttputils/cache/CacheEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okhttputils/cache/CacheEntity",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    new-instance v4, Lcom/lzy/okhttputils/cache/CacheEntity;

    invoke-direct {v4}, Lcom/lzy/okhttputils/cache/CacheEntity;-><init>()V

    .line 146
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Lcom/lzy/okhttputils/cache/CacheEntity;->setId(J)V

    .line 147
    const-string v0, "key"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 148
    const-string v0, "localExpire"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/lzy/okhttputils/cache/CacheEntity;->setLocalExpire(J)V

    .line 150
    const-string v0, "head"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 154
    if-eqz v0, :cond_b

    .line 155
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 158
    check-cast v0, Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v4, v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->setResponseHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 164
    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 165
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    :cond_1
    :goto_1
    const-string v0, "data"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 175
    if-eqz v0, :cond_a

    .line 176
    :try_start_4
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    :try_start_5
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 178
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-virtual {v4, v0}, Lcom/lzy/okhttputils/cache/CacheEntity;->setData(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 185
    :goto_2
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 186
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 192
    :cond_3
    :goto_3
    return-object v4

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 161
    :goto_4
    :try_start_8
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 164
    if-eqz v1, :cond_4

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 165
    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 166
    :catch_2
    move-exception v0

    .line 167
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 164
    :goto_5
    if-eqz v1, :cond_5

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 165
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 168
    :cond_6
    :goto_6
    throw v0

    .line 166
    :catch_3
    move-exception v1

    .line 167
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 187
    :catch_4
    move-exception v0

    .line 188
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 181
    :catch_5
    move-exception v0

    move-object v1, v2

    .line 182
    :goto_7
    :try_start_b
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 185
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 186
    :cond_7
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 187
    :catch_6
    move-exception v0

    .line 188
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 184
    :catchall_1
    move-exception v0

    move-object v3, v2

    .line 185
    :goto_8
    if-eqz v2, :cond_8

    :try_start_d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 186
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 189
    :cond_9
    :goto_9
    throw v0

    .line 187
    :catch_7
    move-exception v1

    .line 188
    invoke-static {v1}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 184
    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v3, v1

    goto :goto_8

    .line 181
    :catch_8
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_7

    .line 163
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_6
    move-exception v0

    goto :goto_5

    .line 160
    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_b
    move-exception v0

    goto :goto_4

    :cond_a
    move-object v1, v2

    move-object v3, v2

    goto :goto_2

    :cond_b
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public checkExpire(Lcom/lzy/okhttputils/cache/CacheMode;JJ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    sget-object v2, Lcom/lzy/okhttputils/cache/CacheMode;->DEFAULT:Lcom/lzy/okhttputils/cache/CacheMode;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v2

    cmp-long v2, v2, p4

    if-gez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/lzy/okhttputils/cache/CacheEntity;->getLocalExpire()J

    move-result-wide v2

    add-long/2addr v2, p2

    cmp-long v2, v2, p4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalExpire()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->localExpire:J

    return-wide v0
.end method

.method public getResponseHeaders()Lcom/lzy/okhttputils/model/HttpHeaders;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    return-object v0
.end method

.method public isExpire()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire:Z

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->data:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public setExpire(Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->isExpire:Z

    .line 77
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->id:J

    .line 37
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->key:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setLocalExpire(J)V
    .locals 1

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->localExpire:J

    .line 69
    return-void
.end method

.method public setResponseHeaders(Lcom/lzy/okhttputils/model/HttpHeaders;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheEntity{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->responseHeaders:Lcom/lzy/okhttputils/model/HttpHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localExpire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lzy/okhttputils/cache/CacheEntity;->localExpire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
