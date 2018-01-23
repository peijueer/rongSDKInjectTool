.class public Lcom/arcsoft/hpay100/utils/l;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/l;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/l;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)[B
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x400

    :try_start_1
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v1

    move-object v2, v0

    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_2

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    :cond_2
    :goto_6
    throw v0

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static b([B)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3}, Ljava/math/BigInteger;->byteValue()B

    move-result v3

    aput-byte v3, v2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
