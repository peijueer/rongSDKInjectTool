.class public Lcom/rongmzw/frame/sdk/utils/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field protected static hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 47
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->HEX_DIGITS:[C

    .line 83
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->hexDigits:[C

    return-void

    .line 47
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 83
    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 129
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 130
    .local v0, "c0":C
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 131
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 116
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 120
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 121
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 122
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 123
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static decodeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/Base;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    .local v0, "data":[B
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->decrypt([B)[B

    move-result-object v2

    .line 77
    .local v2, "resultData":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 78
    .end local v0    # "data":[B
    .end local v2    # "resultData":[B
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    throw v1
.end method

.method public static decrypt([B)[B
    .locals 7
    .param p0, "cSrc"    # [B

    .prologue
    .line 14
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 16
    aget-byte v6, p0, v1

    add-int/lit8 v0, v6, -0x78

    .line 17
    .local v0, "h":I
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v2, v6, -0x7a

    .line 18
    .local v2, "l":I
    shl-int/lit8 v3, v0, 0x4

    .line 19
    .local v3, "m":I
    and-int/lit8 v4, v2, 0xf

    .line 20
    .local v4, "n":I
    add-int v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 15
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 22
    .end local v0    # "h":I
    .end local v2    # "l":I
    .end local v3    # "m":I
    .end local v4    # "n":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method public static encrypt([B)[B
    .locals 6
    .param p0, "cSrc"    # [B

    .prologue
    .line 61
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_0

    .line 63
    aget-byte v0, p0, v2

    .line 64
    .local v0, "c":B
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v1, v5, 0xf

    .line 65
    .local v1, "h":I
    and-int/lit8 v3, v0, 0xf

    .line 66
    .local v3, "l":I
    add-int/lit8 v5, v1, 0x78

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 67
    add-int/lit8 v5, v3, 0x7a

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "c":B
    .end local v1    # "h":I
    .end local v3    # "l":I
    :cond_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 92
    const/4 v8, 0x0

    .line 94
    .local v8, "in":Ljava/io/FileInputStream;
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 95
    .local v10, "instance":Ljava/security/MessageDigest;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 97
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 98
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v10, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 99
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->bufferToHex([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 103
    if-eqz v9, :cond_0

    .line 105
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v8, v9

    .line 112
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v10    # "instance":Ljava/security/MessageDigest;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :goto_1
    return-object v1

    .line 106
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "ch":Ljava/nio/channels/FileChannel;
    .restart local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "instance":Ljava/security/MessageDigest;
    :catch_0
    move-exception v7

    .line 107
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .end local v10    # "instance":Ljava/security/MessageDigest;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    .line 101
    .local v7, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    if-eqz v8, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 112
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 106
    .restart local v7    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v7

    .line 107
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 103
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v8, :cond_2

    .line 105
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 108
    :cond_2
    :goto_5
    throw v1

    .line 106
    :catch_3
    move-exception v7

    .line 107
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 103
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "instance":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v1

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 100
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    move-object v8, v9

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 28
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 29
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 33
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    const-string v2, ""

    goto :goto_0
.end method

.method public static getMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 39
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 40
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    const-string v2, ""

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 52
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
