.class public abstract Lcom/lzy/okhttputils/callback/FileCallback;
.super Lcom/lzy/okhttputils/callback/AbsCallback;
.source "FileCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okhttputils/callback/AbsCallback",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final DM_TARGET_FOLDER:Ljava/lang/String;


# instance fields
.field private destFileDir:Ljava/lang/String;

.field private destFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/callback/FileCallback;->DM_TARGET_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lzy/okhttputils/callback/FileCallback;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lzy/okhttputils/callback/FileCallback;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lzy/okhttputils/callback/FileCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lzy/okhttputils/callback/AbsCallback;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileDir:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private saveFile(Lokhttp3/Response;)Ljava/io/File;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lzy/okhttputils/callback/FileCallback;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileDir:Ljava/lang/String;

    .line 53
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/lzy/okhttputils/utils/HttpUtils;->getNetFileName(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileName:Ljava/lang/String;

    .line 55
    :cond_1
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_2
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzy/okhttputils/callback/FileCallback;->destFileName:Ljava/lang/String;

    invoke-direct {v14, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 60
    :cond_3
    const-wide/16 v12, 0x0

    .line 61
    const-wide/16 v8, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    const/16 v2, 0x800

    new-array v15, v2, [B

    .line 65
    const/4 v3, 0x0

    .line 67
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 68
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 69
    const-wide/16 v4, 0x0

    .line 71
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v2, v8

    move-wide v8, v12

    .line 72
    :cond_4
    :goto_0
    :try_start_2
    invoke-virtual {v11, v15}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    .line 73
    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 74
    const/4 v13, 0x0

    invoke-virtual {v10, v15, v13, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 79
    sub-long v16, v12, v8

    const-wide/16 v18, 0xc8

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    cmp-long v16, v4, v6

    if-nez v16, :cond_4

    .line 81
    :cond_5
    sub-long v8, v12, v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    .line 82
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_6

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    .line 83
    :cond_6
    sub-long v2, v4, v2

    .line 84
    div-long v8, v2, v8

    .line 85
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzy/okhttputils/OkHttpUtils;->getDelivery()Landroid/os/Handler;

    move-result-object v12

    new-instance v2, Lcom/lzy/okhttputils/callback/FileCallback$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/lzy/okhttputils/callback/FileCallback$1;-><init>(Lcom/lzy/okhttputils/callback/FileCallback;JJJ)V

    invoke-virtual {v12, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v8, v2

    move-wide v2, v4

    .line 93
    goto :goto_0

    .line 96
    :cond_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    if-eqz v11, :cond_8

    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 105
    :cond_8
    :goto_1
    if-eqz v10, :cond_9

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 108
    :cond_9
    :goto_2
    return-object v14

    .line 101
    :catch_0
    move-exception v2

    .line 102
    invoke-static {v2}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 106
    :catch_1
    move-exception v2

    .line 107
    invoke-static {v2}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 99
    :catchall_0
    move-exception v2

    .line 100
    :goto_3
    if-eqz v4, :cond_a

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 105
    :cond_a
    :goto_4
    if-eqz v3, :cond_b

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 108
    :cond_b
    :goto_5
    throw v2

    .line 101
    :catch_2
    move-exception v4

    .line 102
    invoke-static {v4}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 106
    :catch_3
    move-exception v3

    .line 107
    invoke-static {v3}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 99
    :catchall_1
    move-exception v2

    move-object v4, v11

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v10

    move-object v4, v11

    goto :goto_3
.end method


# virtual methods
.method public parseNetworkResponse(Lokhttp3/Response;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/lzy/okhttputils/callback/FileCallback;->saveFile(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/lzy/okhttputils/callback/FileCallback;->parseNetworkResponse(Lokhttp3/Response;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
