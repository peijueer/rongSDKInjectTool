.class public Lcom/muzhiwan/plugin/NativeLibUnpacker;
.super Ljava/lang/Object;
.source "NativeLibUnpacker.java"


# static fields
.field public static ARCH:Ljava/lang/String; = null

.field public static final DEF_ARCH_1:Ljava/lang/String; = "armeabi"

.field public static final DEF_ARCH_2:Ljava/lang/String; = "armeabi-v7a"

.field public static final DEF_ARCH_3:Ljava/lang/String; = "arm64-v8a"

.field public static final DEF_ARCH_4:Ljava/lang/String; = "mips"

.field public static final DEF_ARCH_5:Ljava/lang/String; = "mips64"

.field public static final DEF_ARCH_6:Ljava/lang/String; = "x86"

.field public static final DEF_ARCH_7:Ljava/lang/String; = "x86_64"

.field public static final TAG:Ljava/lang/String;

.field private static zip4jSonames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/muzhiwan/plugin/NativeLibUnpacker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/muzhiwan/plugin/NativeLibUnpacker;->zip4jSonames:Ljava/util/List;

    .line 48
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/plugin/NativeLibUnpacker;->ARCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/zip/ZipFile;Ljava/io/File;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/zip/ZipFile;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->extractLibFile(Ljava/util/zip/ZipFile;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static addUnZipFileName(Ljava/io/File;)V
    .locals 5
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 268
    if-eqz p0, :cond_1

    .line 269
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 271
    .local v0, "fileArray":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 274
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->addUnZipFileName(Ljava/io/File;)V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "fileArray":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    sget-object v2, Lcom/muzhiwan/plugin/NativeLibUnpacker;->zip4jSonames:Ljava/util/List;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/muzhiwan/sdk/core/InnerController;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getZipRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_1
    return-void
.end method

.method private static copySoCondition()Z
    .locals 6

    .prologue
    .line 174
    invoke-static {}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->getAllsoName()Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "libsonames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 176
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " game has no .so file!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " game has .so file!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "has64so":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "str":Ljava/lang/String;
    const-string v4, "arm64-v8a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "mips64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "x86_64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    :cond_3
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " game support 64 phone!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x1

    .line 185
    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 248
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "childFiles":[Ljava/io/File;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    .line 256
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 260
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 261
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->delete(Ljava/io/File;)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static extractLibFile(Ljava/util/zip/ZipFile;Ljava/io/File;)Z
    .locals 17
    .param p0, "zip"    # Ljava/util/zip/ZipFile;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v1, "archLibEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/zip/ZipEntry;>;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 80
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 81
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "name":Ljava/lang/String;
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " found file :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v14, "/"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 84
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 86
    :cond_1
    const-string v14, "lib/"

    invoke-virtual {v8, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 87
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_0

    .line 90
    const/16 v14, 0x2f

    const/4 v15, 0x4

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 92
    .local v11, "sp":I
    if-lez v11, :cond_3

    .line 93
    const/4 v14, 0x4

    invoke-virtual {v8, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "osArch":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 98
    .end local v9    # "osArch":Ljava/lang/String;
    .local v3, "en2add":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 99
    .local v13, "zipEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    if-nez v13, :cond_2

    .line 100
    new-instance v13, Ljava/util/LinkedList;

    .end local v13    # "zipEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 101
    .restart local v13    # "zipEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v3    # "en2add":Ljava/lang/String;
    .end local v13    # "zipEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_3
    const-string v3, "armeabi"

    .restart local v3    # "en2add":Ljava/lang/String;
    goto :goto_1

    .line 106
    .end local v3    # "en2add":Ljava/lang/String;
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "name":Ljava/lang/String;
    .end local v11    # "sp":I
    :cond_4
    const/4 v6, 0x0

    .line 109
    .local v6, "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    sget-object v14, Lcom/muzhiwan/plugin/NativeLibUnpacker;->ARCH:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "64"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-static {}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->copySoCondition()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 110
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 64Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "arm64-v8a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "arm64-v8a"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v14, "arm64-v8a"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 112
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    if-nez v6, :cond_5

    .line 113
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 64Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mips64"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mips64"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v14, "mips64"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 116
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_5
    if-nez v6, :cond_6

    .line 117
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 64Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x86_64"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x86_64"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v14, "x86_64"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 120
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_6
    if-nez v6, :cond_7

    .line 121
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 64Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi-v7a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi-v7a"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v14, "armeabi-v7a"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 124
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_7
    if-nez v6, :cond_8

    .line 125
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 64Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v14, "armeabi"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 128
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_8
    if-nez v6, :cond_9

    .line 129
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 64Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mips"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mips"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v14, "mips"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 132
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_9
    if-nez v6, :cond_a

    .line 133
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 64Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x86"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x86"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v14, "x86"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 157
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_a
    :goto_2
    const/4 v5, 0x0

    .line 158
    .local v5, "hasLib":Z
    if-eqz v6, :cond_f

    .line 159
    const/4 v5, 0x1

    .line 160
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_b

    .line 161
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->mkdirs()Z

    .line 163
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 164
    .local v7, "libEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 165
    .restart local v8    # "name":Ljava/lang/String;
    const/16 v15, 0x2f

    invoke-virtual {v8, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "pureName":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v12, "target":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v15

    invoke-static {v15, v12}, Lcom/muzhiwan/plugin/api/LFileTools;->writeToFile(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_3

    .line 138
    .end local v5    # "hasLib":Z
    .end local v7    # "libEntry":Ljava/util/zip/ZipEntry;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "pureName":Ljava/lang/String;
    .end local v12    # "target":Ljava/io/File;
    :cond_c
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 32Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi-v7a"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi-v7a"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v14, "armeabi-v7a"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 140
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    if-nez v6, :cond_d

    .line 142
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 32Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "armeabi"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v14, "armeabi"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 145
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_d
    if-nez v6, :cond_e

    .line 147
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 32Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mips"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mips"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v14, "mips"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .line 150
    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_e
    if-nez v6, :cond_a

    .line 152
    const-string v14, "MZW_LOG_TAG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " 32Bit-get("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x86"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x86"

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v14, "x86"

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    check-cast v6, Ljava/util/List;

    .restart local v6    # "libEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    goto/16 :goto_2

    .line 170
    .restart local v5    # "hasLib":Z
    :cond_f
    return v5
.end method

.method private static getAllSoNameByZip4j(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAllSoNameByZip4j()-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/muzhiwan/plugin/NativeLibUnpacker;->zip4jSonames:Ljava/util/List;

    .line 223
    :try_start_0
    new-instance v2, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v2, p0}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    invoke-virtual {v2}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "123456"

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muzhiwan/sdk/core/InnerController;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getZipRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 229
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAllSoNameByZip4j \u89e3\u538b\u64cd\u4f5c\u7ed3\u675f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muzhiwan/sdk/core/InnerController;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getZipRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->addUnZipFileName(Ljava/io/File;)V

    .line 232
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAllSoNameByZip4j \u83b7\u53d6\u76ee\u5f55\u7ed3\u675f, \u51c6\u5907\u5220\u9664\u89e3\u538b\u76ee\u5f55"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {v1}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->delete(Ljava/io/File;)V

    .line 235
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAllSoNameByZip4j \u5220\u9664\u89e3\u538b\u76ee\u5f55\u64cd\u4f5c\u7ed3\u675f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAllSoNameByZip4j \u89e3\u538b\u76ee\u5f55\u5220\u9664\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :goto_0
    sget-object v3, Lcom/muzhiwan/plugin/NativeLibUnpacker;->zip4jSonames:Ljava/util/List;

    return-object v3

    .line 239
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :cond_1
    :try_start_1
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAllSoNameByZip4j \u89e3\u538b\u76ee\u5f55\u5220\u9664\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 241
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MZW_LOG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getAllSoNameByZip4j \u62a5\u9519\u4e86"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getAllsoName()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, "sofilenamelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->getSourceApkPath()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "apkSourcePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 196
    .local v5, "zipInputStream":Ljava/util/zip/ZipInputStream;
    if-eqz v0, :cond_1

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "sofilenamelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v2    # "sofilenamelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v5    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v6, "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    .local v3, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "zeName":Ljava/lang/String;
    const-string v7, "lib/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ".so"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "libentryex.so"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "libonlywechat_plugin.so"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 205
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 208
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v4    # "zeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v5, v6

    .line 209
    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v5    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :goto_1
    :try_start_2
    const-string v7, "MZW_LOG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u7a0b\u5e8f\u5f02\u5e38\u4e86\uff0c\u51c6\u5907\u901a\u8fc7getAllSoNameByZip4j\u65b9\u6cd5\u89e3\u538b"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {v0}, Lcom/muzhiwan/plugin/NativeLibUnpacker;->getAllSoNameByZip4j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 211
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    invoke-static {v5}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-object v2

    .line 213
    .end local v5    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v3    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_2
    invoke-static {v6}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    move-object v5, v6

    .line 214
    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 213
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v5}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->closeCloseable(Ljava/io/Closeable;)V

    throw v7

    .end local v5    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .line 208
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static getSourceApkPath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/muzhiwan/sdk/core/InnerController;->getGameMainActivity()Landroid/app/Activity;

    move-result-object v2

    .line 290
    .local v2, "gameActivity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    :goto_0
    return-object v3

    .line 293
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 294
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unPackSOFromApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "toPath"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/plugin/NativeLibUnpacker;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CPU is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muzhiwan/plugin/NativeLibUnpacker;->ARCH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/muzhiwan/plugin/NativeLibUnpacker$1;

    invoke-direct {v0, p0, p1}, Lcom/muzhiwan/plugin/NativeLibUnpacker$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/muzhiwan/plugin/NativeLibUnpacker$1;->start()V

    .line 74
    return-void
.end method
