.class final Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;
.super Landroid/os/AsyncTask;
.source "GamePluginDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$force_update:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$force_update:Ljava/lang/String;

    iput-object p3, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/io/File;
    .locals 26
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 221
    const/16 v22, 0x0

    aget-object v21, p1, v22

    .line 222
    .local v21, "url":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v8, p1, v22

    .line 223
    .local v8, "fileName":Ljava/lang/String;
    const/16 v22, 0x2

    aget-object v16, p1, v22

    .line 224
    .local v16, "plugin_version":Ljava/lang/String;
    const/4 v11, 0x0

    .line 225
    .local v11, "in":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 226
    .local v13, "out":Ljava/io/FileOutputStream;
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 227
    .local v9, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 228
    .local v10, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v22, 0x7530

    move/from16 v0, v22

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 229
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 230
    .local v5, "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v17, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;

    invoke-direct/range {v17 .. v17}, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;-><init>()V

    .line 231
    .local v17, "redirectHandler":Lcom/iqiyigame/plugin/utils/GameRedirectHandler;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 233
    :try_start_0
    invoke-virtual {v5, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 234
    .local v18, "response":Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 235
    new-instance v19, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/temp.apk"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v19, "tempFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 237
    new-instance v20, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v20, "to":Ljava/io/File;
    invoke-virtual/range {v19 .. v20}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 239
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 241
    .end local v20    # "to":Ljava/io/File;
    :cond_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    .line 243
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 244
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 246
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .local v14, "out":Ljava/io/FileOutputStream;
    const/16 v22, 0x400

    :try_start_1
    move/from16 v0, v22

    new-array v4, v0, [B

    .line 248
    .local v4, "arrary":[B
    const/4 v12, -0x1

    .line 249
    .local v12, "length":I
    :goto_0
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_3

    .line 250
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v4, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 272
    .end local v4    # "arrary":[B
    .end local v12    # "length":I
    :catch_0
    move-exception v6

    move-object v13, v14

    .line 273
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "tempFile":Ljava/io/File;
    .local v6, "e":Ljava/net/SocketException;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    .line 274
    invoke-static {}, Lcom/iqiyigame/plugin/utils/PingBackController;->getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$force_update:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "2"

    invoke-virtual/range {v22 .. v25}, Lcom/iqiyigame/plugin/utils/PingBackController;->updateFailedPB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    if-eqz v11, :cond_1

    .line 295
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 297
    :cond_1
    if-eqz v13, :cond_2

    .line 298
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 305
    .end local v6    # "e":Ljava/net/SocketException;
    :cond_2
    :goto_2
    const/4 v15, 0x0

    :goto_3
    return-object v15

    .line 253
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "arrary":[B
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "length":I
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "tempFile":Ljava/io/File;
    :cond_3
    :try_start_4
    new-instance v15, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".apk"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v15, "pluginFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 255
    new-instance v20, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v20    # "to":Ljava/io/File;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 257
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 261
    .end local v20    # "to":Ljava/io/File;
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v22

    if-eqz v22, :cond_7

    .line 294
    if-eqz v11, :cond_5

    .line 295
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 297
    :cond_5
    if-eqz v14, :cond_6

    .line 298
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    :goto_4
    move-object v13, v14

    .line 262
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 300
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 302
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    move-object v13, v14

    .line 294
    .end local v4    # "arrary":[B
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v12    # "length":I
    .end local v14    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "pluginFile":Ljava/io/File;
    .end local v19    # "tempFile":Ljava/io/File;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :cond_8
    :goto_5
    if-eqz v11, :cond_9

    .line 295
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 297
    :cond_9
    if-eqz v13, :cond_2

    .line 298
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 300
    :catch_2
    move-exception v6

    .line 302
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 266
    .end local v6    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_7
    invoke-static {}, Lcom/iqiyigame/plugin/utils/PingBackController;->getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$force_update:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "2"

    invoke-virtual/range {v22 .. v25}, Lcom/iqiyigame/plugin/utils/PingBackController;->updateFailedPB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {v17 .. v17}, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->getURI()Ljava/net/URI;

    move-result-object v22

    if-eqz v22, :cond_8

    .line 269
    invoke-virtual/range {v17 .. v17}, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->getURI()Ljava/net/URI;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    # invokes: Lcom/iqiyigame/plugin/utils/GamePluginDownload;->sendLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 272
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v6

    goto/16 :goto_1

    .line 300
    .local v6, "e":Ljava/net/SocketException;
    :catch_4
    move-exception v6

    .line 302
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 276
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 278
    .local v6, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_6
    :try_start_8
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 279
    invoke-static {}, Lcom/iqiyigame/plugin/utils/PingBackController;->getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$force_update:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "6"

    invoke-virtual/range {v22 .. v25}, Lcom/iqiyigame/plugin/utils/PingBackController;->updateFailedPB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {v17 .. v17}, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->getURI()Ljava/net/URI;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 282
    invoke-virtual/range {v17 .. v17}, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->getURI()Ljava/net/URI;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    # invokes: Lcom/iqiyigame/plugin/utils/GamePluginDownload;->sendLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 294
    :cond_b
    if-eqz v11, :cond_c

    .line 295
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 297
    :cond_c
    if-eqz v13, :cond_2

    .line 298
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_2

    .line 300
    :catch_6
    move-exception v6

    .line 302
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 284
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 286
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 287
    invoke-static {}, Lcom/iqiyigame/plugin/utils/PingBackController;->getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$force_update:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "6"

    invoke-virtual/range {v22 .. v25}, Lcom/iqiyigame/plugin/utils/PingBackController;->updateFailedPB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {v17 .. v17}, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->getURI()Ljava/net/URI;

    move-result-object v22

    if-eqz v22, :cond_d

    .line 290
    invoke-virtual/range {v17 .. v17}, Lcom/iqiyigame/plugin/utils/GameRedirectHandler;->getURI()Ljava/net/URI;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    # invokes: Lcom/iqiyigame/plugin/utils/GamePluginDownload;->sendLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 294
    :cond_d
    if-eqz v11, :cond_e

    .line 295
    :try_start_b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 297
    :cond_e
    if-eqz v13, :cond_2

    .line 298
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_2

    .line 300
    :catch_8
    move-exception v6

    .line 302
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 293
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v22

    .line 294
    :goto_8
    if-eqz v11, :cond_f

    .line 295
    :try_start_c
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 297
    :cond_f
    if-eqz v13, :cond_10

    .line 298
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 303
    :cond_10
    :goto_9
    throw v22

    .line 300
    :catch_9
    move-exception v6

    .line 302
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 293
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "tempFile":Ljava/io/File;
    :catchall_1
    move-exception v22

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 284
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v6

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 276
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v6

    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->doInBackground([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 3
    .param p1, "result"    # Ljava/io/File;

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 312
    if-nez p1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;

    invoke-interface {v0}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;->onFail()V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-static {}, Lcom/iqiyigame/plugin/utils/PingBackController;->getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;

    move-result-object v0

    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$force_update:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iqiyigame/plugin/utils/PingBackController;->updateSuccessPB(Landroid/content/Context;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->val$callListener:Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;

    invoke-interface {v0, p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;->onSuccess(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
