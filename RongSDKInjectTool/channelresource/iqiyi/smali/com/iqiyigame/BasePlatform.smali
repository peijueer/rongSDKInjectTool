.class public Lcom/iqiyigame/BasePlatform;
.super Ljava/lang/Object;
.source "BasePlatform.java"


# static fields
.field protected static listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;


# instance fields
.field protected handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/iqiyigame/BasePlatform$1;

    invoke-direct {v0, p0}, Lcom/iqiyigame/BasePlatform$1;-><init>(Lcom/iqiyigame/BasePlatform;)V

    iput-object v0, p0, Lcom/iqiyigame/BasePlatform;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected copyPluginToSDCard(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "toFile"    # Ljava/io/File;

    .prologue
    .line 214
    const-string v8, "copyPluginToSDCard"

    invoke-static {v8}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 216
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 219
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 223
    :cond_1
    const/4 v5, 0x0

    .line 224
    .local v5, "myInput":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 226
    .local v6, "myOutput":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .local v7, "myOutput":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".zip"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 228
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 229
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 230
    .local v2, "length":I
    :goto_0
    if-lez v2, :cond_2

    .line 232
    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 238
    invoke-static {p3}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "md5":Ljava/lang/String;
    const-string v8, "5.9.0"

    invoke-static {p1, v3, v8}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->savePluginMd5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v8, "copyPluginToSDCard success"

    invoke-static {v8}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 241
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 242
    .local v4, "msg":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 243
    iget-object v8, p0, Lcom/iqiyigame/BasePlatform;->handler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 256
    if-eqz v5, :cond_3

    .line 257
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 260
    :cond_3
    if-eqz v7, :cond_4

    .line 261
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v6, v7

    .line 269
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    :cond_5
    :goto_1
    return-void

    .line 263
    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "length":I
    .restart local v3    # "md5":Ljava/lang/String;
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 267
    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    goto :goto_1

    .line 244
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "length":I
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 247
    sget-object v8, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    invoke-virtual {p0, p1, p2, v8, p3}, Lcom/iqiyigame/BasePlatform;->downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;Ljava/io/File;)V

    .line 248
    const-string v8, "copyPluginToSDCard FileNotFoundException"

    invoke-static {v8}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    if-eqz v5, :cond_6

    .line 257
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 260
    :cond_6
    if-eqz v6, :cond_5

    .line 261
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 263
    :catch_2
    move-exception v1

    .line 265
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 251
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 252
    sget-object v8, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    invoke-virtual {p0, p1, p2, v8, p3}, Lcom/iqiyigame/BasePlatform;->downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;Ljava/io/File;)V

    .line 253
    const-string v8, "copyPluginToSDCard IOException"

    invoke-static {v8}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 256
    if-eqz v5, :cond_7

    .line 257
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 260
    :cond_7
    if-eqz v6, :cond_5

    .line 261
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 263
    :catch_4
    move-exception v1

    .line 265
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 256
    :goto_4
    if-eqz v5, :cond_8

    .line 257
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 260
    :cond_8
    if-eqz v6, :cond_9

    .line 261
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 266
    :cond_9
    :goto_5
    throw v8

    .line 263
    :catch_5
    move-exception v1

    .line 265
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 255
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    goto :goto_4

    .line 249
    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    :catch_6
    move-exception v1

    move-object v6, v7

    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    goto :goto_3

    .line 244
    .end local v6    # "myOutput":Ljava/io/OutputStream;
    .restart local v7    # "myOutput":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7    # "myOutput":Ljava/io/OutputStream;
    .restart local v6    # "myOutput":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method protected downloadPlugin(Landroid/app/Activity;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;Ljava/io/File;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "listenr"    # Lcom/iqiyi/sdk/platform/GamePlatformInitListener;
    .param p4, "pluginFile"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 59
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_0
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 63
    .local v3, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getLoadingString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 65
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 66
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 67
    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 69
    new-instance v0, Lcom/iqiyigame/BasePlatform$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iqiyigame/BasePlatform$2;-><init>(Lcom/iqiyigame/BasePlatform;Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;Lcom/iqiyi/sdk/platform/GamePlatformInitListener;)V

    invoke-static {p1, p2, v6, v0}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkPluginVersion(Landroid/content/Context;Ljava/lang/String;ILcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;)V

    .line 127
    return-void
.end method

.method protected handleDownload(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v7, 0x0

    .line 172
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "pluginFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    sget-boolean v5, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->DEBUG:Z

    if-nez v5, :cond_3

    .line 175
    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "pluginMd5":Ljava/lang/String;
    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "pluginFileMd5":Ljava/lang/String;
    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginSdkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "plugin_sdk_version":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "5.9.0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 181
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    iget-object v5, p0, Lcom/iqiyigame/BasePlatform;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 211
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "pluginFileMd5":Ljava/lang/String;
    .end local v3    # "pluginMd5":Ljava/lang/String;
    .end local v4    # "plugin_sdk_version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v2    # "pluginFileMd5":Ljava/lang/String;
    .restart local v3    # "pluginMd5":Ljava/lang/String;
    .restart local v4    # "plugin_sdk_version":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->isAvaiableSpace()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    invoke-virtual {p0, p1, p2, v1}, Lcom/iqiyigame/BasePlatform;->copyPluginToSDCard(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 189
    sget-object v5, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v5, :cond_0

    .line 190
    sget-object v5, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v2    # "pluginFileMd5":Ljava/lang/String;
    .end local v3    # "pluginMd5":Ljava/lang/String;
    .end local v4    # "plugin_sdk_version":Ljava/lang/String;
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 196
    .restart local v0    # "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    iget-object v5, p0, Lcom/iqiyigame/BasePlatform;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 200
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->isAvaiableSpace()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    invoke-virtual {p0, p1, p2, v1}, Lcom/iqiyigame/BasePlatform;->copyPluginToSDCard(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 204
    :cond_5
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 205
    sget-object v5, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    if-eqz v5, :cond_0

    .line 206
    sget-object v5, Lcom/iqiyigame/BasePlatform;->listener:Lcom/iqiyi/sdk/platform/GamePlatformInitListener;

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSpaceErrorString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/iqiyi/sdk/platform/GamePlatformInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected loadPlugin(Landroid/app/Activity;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "gameid"    # Ljava/lang/String;
    .param p3, "pluginFile"    # Ljava/io/File;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method protected startPermissionsActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    const-string v2, "startPermissionsActivity"

    invoke-static {v2}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/iqiyigame/BasePlatform$3;

    invoke-direct {v1, p0, p1}, Lcom/iqiyigame/BasePlatform$3;-><init>(Lcom/iqiyigame/BasePlatform;Landroid/app/Activity;)V

    .line 160
    .local v1, "permissionListener":Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;
    invoke-static {v1}, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;->setPermissionListener(Lcom/iqiyi/sdk/platform/GamePlatformCheckPermissionListener;)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/iqiyi/sdk/platform/PermissionCheckActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method
