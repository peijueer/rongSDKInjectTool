.class public Lcom/anzhi/sdk/middle/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/io/File;)[B
    .locals 8
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 77
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 79
    .local v2, "encoded":[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 81
    .local v5, "md":Ljava/security/MessageDigest;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 82
    .local v0, "buffer":[B
    const/4 v6, 0x0

    .line 83
    .local v6, "numRead":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_1

    .line 86
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 90
    if-eqz v4, :cond_3

    .line 92
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 96
    :goto_1
    const/4 v3, 0x0

    .line 99
    .end local v0    # "buffer":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "numRead":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_2
    return-object v2

    .line 84
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "numRead":I
    :cond_1
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 87
    .end local v0    # "buffer":[B
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "numRead":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 88
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 90
    if-eqz v3, :cond_0

    .line 92
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v3, 0x0

    goto :goto_2

    .line 93
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 90
    :goto_5
    if-eqz v3, :cond_2

    .line 92
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 96
    :goto_6
    const/4 v3, 0x0

    .line 98
    :cond_2
    throw v7

    .line 93
    :catch_2
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 93
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "numRead":I
    :catch_3
    move-exception v1

    .line 94
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 89
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "md":Ljava/security/MessageDigest;
    .end local v6    # "numRead":I
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 87
    :catch_4
    move-exception v1

    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "md":Ljava/security/MessageDigest;
    .restart local v6    # "numRead":I
    :cond_3
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static encode([B)[B
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "encoded":[B
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 45
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    .end local v2    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static encodeToString(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/MD5;->encode(Ljava/io/File;)[B

    move-result-object v0

    .line 104
    .local v0, "encoded":[B
    if-nez v0, :cond_0

    .line 105
    const/4 v4, 0x0

    .line 116
    :goto_0
    return-object v4

    .line 107
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v3, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-lt v2, v4, :cond_1

    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 109
    :cond_1
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 111
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static encodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/MD5;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 58
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/MD5;->encode([B)[B

    move-result-object v0

    .line 59
    .local v0, "encoded":[B
    if-nez v0, :cond_0

    .line 60
    const/4 v4, 0x0

    .line 71
    :goto_0
    return-object v4

    .line 62
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v3, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-lt v2, v4, :cond_1

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 64
    :cond_1
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 66
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
