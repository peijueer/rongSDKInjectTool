.class public Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static CORE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "olsdk_core"

    sput-object v0, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->CORE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    .line 113
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copyCore(Landroid/app/Activity;)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    const/4 v5, 0x0

    .line 66
    .local v5, "ins":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 70
    .local v6, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    sget-object v9, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->CORE_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 76
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->getDestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "dest":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 79
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 82
    :cond_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .local v7, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v5, v7}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->in2out(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v7

    .line 88
    .end local v0    # "dest":Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->CORE_NAME:Ljava/lang/String;

    const-string v10, "raw"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 73
    .local v4, "id":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_0

    .line 84
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "id":I
    :catch_1
    move-exception v2

    .line 85
    .restart local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "dest":Ljava/lang/String;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v6, v7

    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static getDestPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mzwres/updates/temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "fakeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mzwres/updates/mzw.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTempPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mzwres/updates/temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "fakeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mzwres/updates/temp.patch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static in2out(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "ins"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 22
    const/16 v3, 0x400

    :try_start_0
    new-array v0, v3, [B

    .line 23
    .local v0, "buff":[B
    const/4 v2, 0x0

    .line 24
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 25
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    .end local v0    # "buff":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-eqz p1, :cond_0

    .line 32
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 37
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    .line 39
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 45
    :cond_1
    :goto_2
    return-void

    .line 30
    .restart local v0    # "buff":[B
    .restart local v2    # "len":I
    :cond_2
    if-eqz p1, :cond_3

    .line 32
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 37
    :cond_3
    :goto_3
    if-eqz p0, :cond_1

    .line 39
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 40
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 33
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 34
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 33
    .end local v0    # "buff":[B
    .end local v2    # "len":I
    .local v1, "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 40
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 41
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 30
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz p1, :cond_4

    .line 32
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 37
    :cond_4
    :goto_4
    if-eqz p0, :cond_5

    .line 39
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 42
    :cond_5
    :goto_5
    throw v3

    .line 33
    :catch_5
    move-exception v1

    .line 34
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 40
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 41
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "ins":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 51
    .local v4, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2    # "ins":Ljava/io/InputStream;
    .local v3, "ins":Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v6, "outFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .local v5, "os":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {v3, v5}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->in2out(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    return-void

    .line 59
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .end local v6    # "outFile":Ljava/io/File;
    .restart local v2    # "ins":Ljava/io/InputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    throw v1

    .line 59
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    goto :goto_0

    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v3    # "ins":Ljava/io/InputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "outFile":Ljava/io/File;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    goto :goto_0
.end method
