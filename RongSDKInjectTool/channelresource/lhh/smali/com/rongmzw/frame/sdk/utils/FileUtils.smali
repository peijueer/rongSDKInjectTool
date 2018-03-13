.class public Lcom/rongmzw/frame/sdk/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndMakeDirs(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 194
    :cond_0
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";state-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 108
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 109
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 110
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/rongmzw/frame/sdk/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static read(Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v3, 0x0

    .line 81
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x2800

    new-array v1, v6, [B

    .line 84
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 86
    .local v5, "length":I
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 87
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 91
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 93
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 95
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    :cond_0
    :goto_2
    const/4 v6, 0x0

    :goto_3
    return-object v6

    .line 90
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "length":I
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 93
    if-eqz v4, :cond_2

    .line 95
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_4
    move-object v3, v4

    .line 90
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 96
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 96
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "length":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 93
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_3

    .line 95
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 98
    :cond_3
    :goto_6
    throw v6

    .line 96
    :catch_3
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 93
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 91
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method public static readObject(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    if-eqz v2, :cond_0

    .line 172
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 178
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_1
    return-object v3

    .line 173
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    if-eqz v1, :cond_1

    .line 172
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    const/4 v3, 0x0

    goto :goto_1

    .line 173
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v1, :cond_2

    .line 172
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 175
    :cond_2
    :goto_5
    throw v3

    .line 173
    :catch_3
    move-exception v0

    .line 174
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 166
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method public static write(Ljava/lang/String;[B)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 40
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 42
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 49
    if-eqz v2, :cond_6

    .line 51
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    if-eqz v2, :cond_0

    .line 57
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 66
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 58
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    if-eqz v2, :cond_0

    .line 57
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 57
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 60
    :cond_2
    :goto_2
    throw v3

    .line 58
    :catch_3
    move-exception v0

    .line 59
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 44
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 49
    if-eqz v1, :cond_1

    .line 51
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 55
    if-eqz v1, :cond_1

    .line 57
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 58
    :catch_5
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 52
    :catch_6
    move-exception v0

    .line 53
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 55
    if-eqz v1, :cond_1

    .line 57
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_1

    .line 58
    :catch_7
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 55
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    .line 57
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    .line 60
    :cond_3
    :goto_4
    throw v3

    .line 58
    :catch_8
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v1, :cond_4

    .line 51
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 55
    if-eqz v1, :cond_4

    .line 57
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 60
    :cond_4
    :goto_6
    throw v3

    .line 58
    :catch_9
    move-exception v0

    .line 59
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 52
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 55
    if-eqz v1, :cond_4

    .line 57
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_6

    .line 58
    :catch_b
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_3
    move-exception v3

    if-eqz v1, :cond_5

    .line 57
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    .line 60
    :cond_5
    :goto_7
    throw v3

    .line 58
    :catch_c
    move-exception v0

    .line 59
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 44
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static writeObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    if-eqz v2, :cond_2

    .line 142
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 149
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 143
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v2

    .line 145
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 137
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    if-eqz v1, :cond_0

    .line 142
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 143
    :catch_2
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 142
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 145
    :cond_1
    :goto_3
    throw v3

    .line 143
    :catch_3
    move-exception v0

    .line 144
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 140
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 136
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method
