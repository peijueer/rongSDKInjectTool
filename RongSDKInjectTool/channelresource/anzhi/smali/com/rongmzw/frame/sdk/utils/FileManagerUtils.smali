.class public Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;
.super Ljava/lang/Object;
.source "FileManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static existSDCard(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/rongmzw/frame/sdk/utils/TaskManagerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "childPath"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->getRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddressSavePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "data/.systemmac"

    invoke-static {p0, v0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 86
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 93
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 94
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static getRootDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->existSDCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
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

    .line 19
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 35
    const-string v0, "data/.systemid"

    invoke-static {p0, v0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->getChildPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v1, ""

    .line 56
    .local v1, "contentStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 57
    .local v5, "ins":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v5    # "ins":Ljava/io/FileInputStream;
    .local v6, "ins":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 61
    .local v0, "buff":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 62
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

    .line 64
    .end local v0    # "buff":[B
    .end local v2    # "contentStr":Ljava/lang/String;
    .restart local v1    # "contentStr":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 66
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v1

    .line 67
    .restart local v4    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 68
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 71
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 72
    .local v3, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 71
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

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->getOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 43
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 44
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    const/4 v3, 0x1

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method
