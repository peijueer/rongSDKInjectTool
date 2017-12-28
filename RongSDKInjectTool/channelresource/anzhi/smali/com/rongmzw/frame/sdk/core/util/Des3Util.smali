.class public final Lcom/rongmzw/frame/sdk/core/util/Des3Util;
.super Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;
.source "Des3Util.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "DESede"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;-><init>()V

    return-void
.end method

.method public static final decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/rongmzw/frame/sdk/core/util/Des3Util;

    invoke-direct {v0}, Lcom/rongmzw/frame/sdk/core/util/Des3Util;-><init>()V

    .line 59
    .local v0, "d3u":Lcom/rongmzw/frame/sdk/core/util/Des3Util;
    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, p0, v2}, Lcom/rongmzw/frame/sdk/core/util/Des3Util;->decryptFromBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .end local v0    # "d3u":Lcom/rongmzw/frame/sdk/core/util/Des3Util;
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "body"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lcom/rongmzw/frame/sdk/core/util/Des3Util;

    invoke-direct {v0}, Lcom/rongmzw/frame/sdk/core/util/Des3Util;-><init>()V

    .line 72
    .local v0, "d3u":Lcom/rongmzw/frame/sdk/core/util/Des3Util;
    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, p0, v2}, Lcom/rongmzw/frame/sdk/core/util/Des3Util;->encryptToBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 76
    .end local v0    # "d3u":Lcom/rongmzw/frame/sdk/core/util/Des3Util;
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 102
    .local v4, "input":[B
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 103
    .local v0, "alga":Ljava/security/MessageDigest;
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 104
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 105
    .local v5, "md5Hash":[B
    if-nez v5, :cond_0

    .line 122
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v4    # "input":[B
    .end local v5    # "md5Hash":[B
    :goto_0
    return-object v7

    .line 108
    .restart local v0    # "alga":Ljava/security/MessageDigest;
    .restart local v4    # "input":[B
    .restart local v5    # "md5Hash":[B
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    .local v6, "md5StrBuff":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v5

    if-ge v3, v8, :cond_2

    .line 110
    aget-byte v8, v5, v3

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "hex":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 112
    const/16 v8, 0x30

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 119
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v2    # "hex":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "input":[B
    .end local v5    # "md5Hash":[B
    .end local v6    # "md5StrBuff":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "alga":Ljava/security/MessageDigest;
    .restart local v3    # "i":I
    .restart local v4    # "input":[B
    .restart local v5    # "md5Hash":[B
    .restart local v6    # "md5StrBuff":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0
.end method

.method public static final getSigned(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 84
    .local v2, "input":[B
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 86
    .local v0, "alga":Ljava/security/MessageDigest;
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 87
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 89
    .local v3, "md5Hash":[B
    if-eqz v3, :cond_0

    .line 90
    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/Base64;->encodeToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 95
    .end local v0    # "alga":Ljava/security/MessageDigest;
    .end local v2    # "input":[B
    .end local v3    # "md5Hash":[B
    :goto_0
    return-object v4

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final decrypt([B[B)[B
    .locals 4
    .param p1, "keybyte"    # [B
    .param p2, "src"    # [B

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DESede"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 43
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 44
    .local v0, "c1":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 45
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 49
    .end local v0    # "c1":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final encrypt([B[B)[B
    .locals 4
    .param p1, "keybyte"    # [B
    .param p2, "src"    # [B

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DESede"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 27
    .local v1, "deskey":Ljavax/crypto/SecretKey;
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 28
    .local v0, "c1":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 29
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 33
    .end local v0    # "c1":Ljavax/crypto/Cipher;
    .end local v1    # "deskey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v3

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v3, 0x0

    goto :goto_0
.end method
