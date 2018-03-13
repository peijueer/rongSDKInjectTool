.class public Lcom/muzhiwan/sdk/dynamic/utils/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFF_SIZE:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntriesEnumeration(Ljava/io/File;)Ljava/util/Enumeration;
    .locals 2
    .param p0, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Enumeration",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 213
    .local v0, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public static getEntriesNames(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v2, "entryNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/muzhiwan/sdk/dynamic/utils/ZipUtils;->getEntriesEnumeration(Ljava/io/File;)Ljava/util/Enumeration;

    move-result-object v0

    .line 191
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 193
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    new-instance v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/muzhiwan/sdk/dynamic/utils/ZipUtils;->getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GB2312"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "8859_1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    return-object v2
.end method

.method public static getEntryComment(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getEntryName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 3
    .param p0, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GB2312"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "8859_1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static upZipFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 16
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "folderPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "desDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_0
    new-instance v12, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 83
    .local v12, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 84
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 85
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v12, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 86
    .local v7, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 87
    .local v10, "str":Ljava/lang/String;
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 88
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 93
    :goto_1
    new-instance v11, Ljava/lang/String;

    const-string v13, "8859_1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    const-string v14, "utf-8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 94
    .end local v10    # "str":Ljava/lang/String;
    .local v11, "str":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, "desFile":Ljava/io/File;
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 98
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 90
    .end local v3    # "desFile":Ljava/io/File;
    .end local v11    # "str":Ljava/lang/String;
    .restart local v10    # "str":Ljava/lang/String;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 101
    .end local v10    # "str":Ljava/lang/String;
    .restart local v3    # "desFile":Ljava/io/File;
    .restart local v11    # "str":Ljava/lang/String;
    :cond_2
    const-string v13, "TAG"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "str is   ===> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 104
    .local v6, "fileParentDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 105
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 107
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 109
    .end local v6    # "fileParentDir":Ljava/io/File;
    :cond_4
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v8, "out":Ljava/io/OutputStream;
    const/high16 v13, 0x100000

    new-array v1, v13, [B

    .line 112
    .local v1, "buffer":[B
    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "realLength":I
    if-lez v9, :cond_5

    .line 113
    const/4 v13, 0x0

    invoke-virtual {v8, v1, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 116
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 117
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0

    .line 119
    .end local v1    # "buffer":[B
    .end local v3    # "desFile":Ljava/io/File;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v9    # "realLength":I
    .end local v11    # "str":Ljava/lang/String;
    :cond_6
    return-void
.end method

.method public static upZipSelectedFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "folderPath"    # Ljava/lang/String;
    .param p2, "nameContains"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v6, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "desDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 142
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 145
    :cond_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 146
    .local v13, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 147
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 148
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 149
    invoke-virtual {v13, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 150
    .local v8, "in":Ljava/io/InputStream;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 151
    .local v11, "str":Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    const-string v14, "8859_1"

    invoke-virtual {v11, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    const-string v15, "GB2312"

    invoke-direct {v12, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 154
    .end local v11    # "str":Ljava/lang/String;
    .local v12, "str":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "desFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 156
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 157
    .local v7, "fileParentDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 158
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 162
    .end local v7    # "fileParentDir":Ljava/io/File;
    :cond_3
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 163
    .local v9, "out":Ljava/io/OutputStream;
    const/high16 v14, 0x100000

    new-array v1, v14, [B

    .line 165
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "realLength":I
    if-lez v10, :cond_4

    .line 166
    const/4 v14, 0x0

    invoke-virtual {v9, v1, v14, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 169
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 170
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v1    # "buffer":[B
    .end local v3    # "desFile":Ljava/io/File;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "out":Ljava/io/OutputStream;
    .end local v10    # "realLength":I
    .end local v12    # "str":Ljava/lang/String;
    :cond_5
    return-object v6
.end method

.method private static zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 10
    .param p0, "resFile"    # Ljava/io/File;
    .param p1, "zipout"    # Ljava/util/zip/ZipOutputStream;
    .param p2, "rootpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x100000

    const/4 v7, 0x0

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 260
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 261
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 262
    new-instance v5, Ljava/lang/String;

    const-string v6, "8859_1"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v8, "GB2312"

    invoke-direct {v5, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 263
    .end local p2    # "rootpath":Ljava/lang/String;
    .local v5, "rootpath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 265
    .local v2, "fileList":[Ljava/io/File;
    array-length v8, v2

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v1, v2, v6

    .line 266
    .local v1, "file":Ljava/io/File;
    invoke-static {v1, p1, v5}, Lcom/muzhiwan/sdk/dynamic/utils/ZipUtils;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 265
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 260
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v5    # "rootpath":Ljava/lang/String;
    .restart local p2    # "rootpath":Ljava/lang/String;
    :cond_0
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    .line 269
    .end local p2    # "rootpath":Ljava/lang/String;
    .restart local v5    # "rootpath":Ljava/lang/String;
    :cond_1
    new-array v0, v9, [B

    .line 270
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 272
    .local v3, "in":Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 274
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    .local v4, "realLength":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 275
    invoke-virtual {p1, v0, v7, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_2

    .line 277
    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 278
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 279
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 281
    .end local v0    # "buffer":[B
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v4    # "realLength":I
    :cond_3
    return-void
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;)V
    .locals 5
    .param p1, "zipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "resFileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x100000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    .local v1, "zipout":Ljava/util/zip/ZipOutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 37
    .local v0, "resFile":Ljava/io/File;
    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/muzhiwan/sdk/dynamic/utils/ZipUtils;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    .end local v0    # "resFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 40
    return-void
.end method

.method public static zipFiles(Ljava/util/Collection;Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "resFileList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x100000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    .local v1, "zipout":Ljava/util/zip/ZipOutputStream;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 59
    .local v0, "resFile":Ljava/io/File;
    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/muzhiwan/sdk/dynamic/utils/ZipUtils;->zipFile(Ljava/io/File;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "resFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/zip/ZipOutputStream;->setComment(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 63
    return-void
.end method
