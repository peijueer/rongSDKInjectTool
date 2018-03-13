.class public Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;
.super Ljava/lang/Object;
.source "FileManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppDownloadPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "download/muzhiwan.apk"

    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "childPath"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInitConfigSavePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "data/.systeminit"

    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddressSavePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string v0, "data/.systemmac"

    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 119
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 126
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 127
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static getRootDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/TaskManagerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mzwsdk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUniqueIDSavePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v0, "data/.systemid"

    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZipRootDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zippath/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v1, ""

    .line 89
    .local v1, "contentStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 90
    .local v5, "ins":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 92
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v5    # "ins":Ljava/io/FileInputStream;
    .local v6, "ins":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 94
    .local v0, "buff":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 95
    new-instance v2, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v2, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .end local v1    # "contentStr":Ljava/lang/String;
    .local v2, "contentStr":Ljava/lang/String;
    move-object v5, v6

    .end local v6    # "ins":Ljava/io/FileInputStream;
    .restart local v5    # "ins":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 97
    .end local v0    # "buff":[B
    .end local v2    # "contentStr":Ljava/lang/String;
    .restart local v1    # "contentStr":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 99
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 107
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 100
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 101
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 104
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 105
    .local v3, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 104
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v5    # "ins":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "ins":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "ins":Ljava/io/FileInputStream;
    .restart local v5    # "ins":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "ins"    # Ljava/io/InputStream;

    .prologue
    const/4 v5, 0x0

    .line 70
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 72
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 73
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 74
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 75
    .local v4, "len":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v1

    .line 82
    :goto_1
    return v5

    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 58
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    const/4 v3, 0x1

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method
