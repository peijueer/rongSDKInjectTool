.class public Lcom/iqiyigame/plugin/utils/GamePluginDownload;
.super Ljava/lang/Object;
.source "GamePluginDownload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;,
        Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;
    }
.end annotation


# static fields
.field public static final FREE_MB:I = 0x14

.field private static final PLUGIN_PATH:Ljava/lang/String;

.field public static final SDK_PLUGIN_NAME:Ljava/lang/String; = "PPSGameSDK"

.field public static final SDK_PLUGIN_NAME_TW:Ljava/lang/String; = "PPSGameSDK_tw"

.field public static final SINGLE_AD_SDK_PLUGIN:Ljava/lang/String; = "PPSGameSingleAdSDK"

.field public static final SINGLE_SDK_PLUGIN:Ljava/lang/String; = "PPSGameSingleSDK"

.field private static checkTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static downloadTask:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/iqiyigame/.plugin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->PLUGIN_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkPluginVersion(Landroid/content/Context;Ljava/lang/String;ILcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameid"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "callListener"    # Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;

    .prologue
    .line 133
    const-string v0, "checkPluginVersion"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;

    invoke-direct {v0, p0, p3}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$1;-><init>(Landroid/content/Context;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginUpdateListener;)V

    sput-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkTask:Landroid/os/AsyncTask;

    .line 201
    sget-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->checkTask:Landroid/os/AsyncTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string v3, "5.9.0"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static downloadPlugin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "pluginUrl"    # Ljava/lang/String;
    .param p3, "pluginVersion"    # Ljava/lang/String;
    .param p4, "force_update"    # Ljava/lang/String;
    .param p5, "callListener"    # Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;

    .prologue
    .line 210
    const-string v0, "downloadPlugin"

    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/iqiyigame/plugin/utils/PingBackController;->getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;

    move-result-object v0

    invoke-virtual {v0, p0, p4}, Lcom/iqiyigame/plugin/utils/PingBackController;->updatePB(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;

    invoke-direct {v0, p0, p4, p5}, Lcom/iqiyigame/plugin/utils/GamePluginDownload$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/iqiyigame/plugin/utils/GamePluginDownload$PPSPluginDownloadListener;)V

    sput-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadTask:Landroid/os/AsyncTask;

    .line 326
    sget-object v0, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->downloadTask:Landroid/os/AsyncTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 11
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, "fi":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 417
    .local v9, "fo":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 418
    .local v1, "in":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 420
    .local v6, "out":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .local v8, "fi":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 422
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .local v10, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 423
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 424
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 425
    const/4 v2, 0x1

    .line 430
    if-eqz v8, :cond_0

    .line 431
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 433
    :cond_0
    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 436
    :cond_1
    if-eqz v10, :cond_2

    .line 437
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 439
    :cond_2
    if-eqz v6, :cond_3

    .line 440
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_0
    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 446
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    :goto_1
    return v2

    .line 442
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 426
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 427
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 430
    if-eqz v7, :cond_4

    .line 431
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 433
    :cond_4
    if-eqz v1, :cond_5

    .line 434
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 436
    :cond_5
    if-eqz v9, :cond_6

    .line 437
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 439
    :cond_6
    if-eqz v6, :cond_7

    .line 440
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 446
    :cond_7
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 442
    :catch_2
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 430
    :goto_4
    if-eqz v7, :cond_8

    .line 431
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 433
    :cond_8
    if-eqz v1, :cond_9

    .line 434
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 436
    :cond_9
    if-eqz v9, :cond_a

    .line 437
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 439
    :cond_a
    if-eqz v6, :cond_b

    .line 440
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 444
    :cond_b
    :goto_5
    throw v2

    .line 442
    :catch_3
    move-exception v0

    .line 443
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_4

    .line 426
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, 0x0

    const/16 v13, 0x400

    .line 375
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_0

    .line 405
    :goto_0
    return-object v11

    .line 378
    :cond_0
    const/4 v1, 0x0

    .line 379
    .local v1, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 380
    .local v4, "in":Ljava/io/FileInputStream;
    new-array v0, v13, [B

    .line 383
    .local v0, "buffer":[B
    :try_start_0
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 384
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v12, 0x0

    const/16 v13, 0x400

    :try_start_1
    invoke-virtual {v5, v0, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_1

    .line 386
    const/4 v12, 0x0

    invoke-virtual {v1, v0, v12, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 389
    .end local v6    # "len":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 390
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 394
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 395
    .local v7, "messageDigest":[B
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v11, v7

    if-ge v3, v11, :cond_3

    .line 397
    aget-byte v11, v7, v3

    and-int/lit16 v10, v11, 0xff

    .line 398
    .local v10, "temp":I
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 399
    .local v8, "s":Ljava/lang/String;
    const/16 v11, 0xf

    if-gt v10, v11, :cond_2

    .line 400
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 402
    :cond_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 405
    .end local v8    # "s":Ljava/lang/String;
    .end local v10    # "temp":I
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 389
    .end local v3    # "i":I
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .end local v7    # "messageDigest":[B
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static getPluginMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-string v2, "game_plugin"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "md5"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "md5":Ljava/lang/String;
    return-object v0
.end method

.method public static getPluginPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->PLUGIN_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "5.9.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "path":Ljava/lang/String;
    sget-boolean v2, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/iqiyigame/.plugin/test"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 112
    :cond_1
    return-object v1
.end method

.method public static getPluginSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v2, "game_plugin"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "sdkVersion"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "sdkVersion":Ljava/lang/String;
    return-object v0
.end method

.method public static isAvaiableSpace()Z
    .locals 14

    .prologue
    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, "ishasSpace":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 77
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, "sdcard":Ljava/lang/String;
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, "statFs":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 80
    .local v2, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v4, v9

    .line 81
    .local v4, "blocks":J
    mul-long v10, v4, v2

    const-wide/32 v12, 0x100000

    div-long v0, v10, v12

    .line 83
    .local v0, "availableSpare":J
    const-wide/16 v10, 0x14

    cmp-long v9, v0, v10

    if-lez v9, :cond_0

    .line 84
    const/4 v6, 0x1

    .line 87
    .end local v0    # "availableSpare":J
    .end local v2    # "blockSize":J
    .end local v4    # "blocks":J
    .end local v7    # "sdcard":Ljava/lang/String;
    .end local v8    # "statFs":Landroid/os/StatFs;
    :cond_0
    return v6
.end method

.method public static isInstallSDCard()Z
    .locals 2

    .prologue
    .line 362
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static savePluginMd5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v2, "game_plugin"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "md5"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v2, "sdkVersion"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static sendLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "pluginVersion"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://msg.71.am/v5/yx/e_cdn?c_ip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sdk_ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "5.9.0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&plugin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 340
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const/16 v5, 0x7530

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 341
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 342
    .local v0, "defaultHttpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 344
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 348
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 350
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
