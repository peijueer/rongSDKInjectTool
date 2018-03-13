.class public abstract Lcom/zhy/http/okhttp/callback/FileCallBack;
.super Lcom/zhy/http/okhttp/callback/Callback;
.source "FileCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/callback/Callback",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private destFileDir:Ljava/lang/String;

.field private destFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "destFileDir"    # Ljava/lang/String;
    .param p2, "destFileName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/Callback;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/zhy/http/okhttp/callback/FileCallBack;->destFileDir:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/zhy/http/okhttp/callback/FileCallBack;->destFileName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public parseNetworkResponse(Lokhttp3/Response;I)Ljava/io/File;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/callback/FileCallBack;->saveFile(Lokhttp3/Response;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseNetworkResponse(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lokhttp3/Response;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/callback/FileCallBack;->parseNetworkResponse(Lokhttp3/Response;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public saveFile(Lokhttp3/Response;I)Ljava/io/File;
    .locals 19
    .param p1, "response"    # Lokhttp3/Response;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v14, 0x0

    .line 44
    .local v14, "is":Ljava/io/InputStream;
    const/16 v2, 0x800

    new-array v9, v2, [B

    .line 45
    .local v9, "buf":[B
    const/4 v15, 0x0

    .line 46
    .local v15, "len":I
    const/4 v12, 0x0

    .line 49
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v14

    .line 50
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 52
    .local v6, "total":J
    const-wide/16 v16, 0x0

    .line 54
    .local v16, "sum":J
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhy/http/okhttp/callback/FileCallBack;->destFileDir:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v10, "dir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_0
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zhy/http/okhttp/callback/FileCallBack;->destFileName:Ljava/lang/String;

    invoke-direct {v11, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v11, "file":Ljava/io/File;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v2, -0x1

    if-eq v15, v2, :cond_3

    .line 63
    int-to-long v2, v15

    add-long v16, v16, v2

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v13, v9, v2, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 65
    move-wide/from16 v4, v16

    .line 66
    .local v4, "finalSum":J
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhy/http/okhttp/OkHttpUtils;->getDelivery()Ljava/util/concurrent/Executor;

    move-result-object v18

    new-instance v2, Lcom/zhy/http/okhttp/callback/FileCallBack$1;

    move-object/from16 v3, p0

    move/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/zhy/http/okhttp/callback/FileCallBack$1;-><init>(Lcom/zhy/http/okhttp/callback/FileCallBack;JJI)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v4    # "finalSum":J
    :catchall_0
    move-exception v2

    move-object v12, v13

    .line 84
    .end local v6    # "total":J
    .end local v10    # "dir":Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "sum":J
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    .line 85
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    :cond_1
    :goto_2
    if-eqz v12, :cond_2

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 94
    :cond_2
    :goto_3
    throw v2

    .line 76
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "total":J
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "sum":J
    :cond_3
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->close()V

    .line 85
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 91
    :cond_4
    :goto_4
    if-eqz v13, :cond_5

    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 94
    :cond_5
    :goto_5
    return-object v11

    .line 92
    :catch_0
    move-exception v2

    goto :goto_5

    .end local v6    # "total":J
    .end local v10    # "dir":Ljava/io/File;
    .end local v11    # "file":Ljava/io/File;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "sum":J
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    goto :goto_3

    .line 86
    :catch_2
    move-exception v3

    goto :goto_2

    .line 82
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 86
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "total":J
    .restart local v10    # "dir":Ljava/io/File;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "sum":J
    :catch_3
    move-exception v2

    goto :goto_4
.end method
