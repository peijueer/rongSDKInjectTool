.class public Lcom/muzhiwan/plugin/api/LFileTools;
.super Ljava/lang/Object;
.source "LFileTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;

    .prologue
    .line 77
    const/4 v7, 0x0

    .line 78
    .local v7, "fi":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 80
    .local v9, "fo":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 82
    .local v1, "in":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 85
    .local v6, "out":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .local v8, "fi":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .local v10, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 91
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 93
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 99
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 101
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 103
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 105
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 111
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 107
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 110
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_0

    .line 95
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 96
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 101
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 103
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 105
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 99
    :goto_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 101
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 103
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 105
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 109
    :goto_3
    throw v2

    .line 107
    :catch_3
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 98
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

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
    goto :goto_2

    .line 95
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_1

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
    goto :goto_1
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 7
    .param p0, "dataIns"    # Ljava/io/InputStream;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x0

    .line 28
    const/16 v0, 0x400

    .line 29
    .local v0, "BUFFER":I
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-array v3, v6, [B

    .line 33
    .local v3, "data":[B
    :goto_0
    invoke-virtual {p0, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 34
    invoke-virtual {v1, v3, v5, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 37
    return-void
.end method

.method public static writeToFile([BLjava/io/File;)V
    .locals 8
    .param p0, "data"    # [B
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, "fo":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 50
    .local v1, "src":Ljava/nio/channels/ReadableByteChannel;
    const/4 v0, 0x0

    .line 52
    .local v0, "out":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    .line 53
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v6    # "fo":Ljava/io/FileOutputStream;
    .local v7, "fo":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 55
    const-wide/16 v2, 0x0

    array-length v4, p0

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    if-eqz v7, :cond_0

    .line 58
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 60
    :cond_0
    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 63
    :cond_1
    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 67
    :cond_2
    return-void

    .line 57
    .end local v7    # "fo":Ljava/io/FileOutputStream;
    .restart local v6    # "fo":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v6, :cond_3

    .line 58
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 60
    :cond_3
    if-eqz v1, :cond_4

    .line 61
    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 63
    :cond_4
    if-eqz v0, :cond_5

    .line 64
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    throw v2

    .line 57
    .end local v6    # "fo":Ljava/io/FileOutputStream;
    .restart local v7    # "fo":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "fo":Ljava/io/FileOutputStream;
    .restart local v6    # "fo":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
