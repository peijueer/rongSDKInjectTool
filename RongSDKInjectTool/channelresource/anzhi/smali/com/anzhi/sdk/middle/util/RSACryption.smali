.class public Lcom/anzhi/sdk/middle/util/RSACryption;
.super Ljava/lang/Object;
.source "RSACryption.java"


# static fields
.field private static final CHUNK:I = 0x75

.field private static final CHUNK2:I = 0xf5

.field private static priKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAISJdT9osWKGTeQF1HyNBI2x3ysNF+RjZAikrcqaTAwR03EOfBDAe1lG/NsavbR7A15uKHS2E4SCZIiwYZaNEN+ZBcrOGEksWJbc3uyrw02LsZhR6g4GcIPrWqjTHCwfoAX5ydZxHugBWbujxH4Djpn6YuZ7Po2SyId7XbgXK2DjAgMBAAECgYBc6Vv3erY3on1CJ9AhDF6v0oznSkOAiSicYo2u5WIAaBK5Q/U3bShLmtcx5lotBruC3GiiAO5Hy30c0cFn4DZ97swhlV7Vzcv9IkXn4jtd562MzIalGU4KrLx1NncrjNRK8Nbb1ZD/7o630EYDl4y9prXwQ2uhvDdiLFblWvmnOQJBAO1++IZvImiBAW3qACsdCXOEFkxJZyEDCjaLPktoKx1OR4mrIB7riB7tspBUzSLOI1CIIVxo27KAGQ6tYBkIyP0CQQCO3QDX5fs3IWdRLGvaRSSlJ84R46oUAoHru9//FW6yP7EGb0UqZ8+efoWNNd08BXTYLvhxebhzuefK4S3zp2dfAkEA1xqvQiOaSIi/oKvWZzYvfz7da074Zz/3mhtX2riIhEyIIrqppxew/EJR/sOv4JxQA/qoLKiUhAHdsBt79HCuiQJBAIYX9pSvb07d8aYFde5X+/9xD0FHWfqSJ/RmUeeR7Gcu1TBe/KLC8eOoih5zMocF8BiCbfvE7lbhZinNll4fAS0CQQDr8O+LCfHFzzAImX9pXmwBj8D+nEjBquAFNgV48+179w5rQNCaL6rtxoONq/HPepXITUb2CkwmXZHtGu7EESDo"

    sput-object v0, Lcom/anzhi/sdk/middle/util/RSACryption;->priKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64_decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static base64_encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 151
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaDecrypt([BLjava/lang/String;)[B
    .locals 12
    .param p0, "in"    # [B
    .param p1, "pubKey"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 47
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p1}, Lcom/anzhi/sdk/middle/util/RSACryption;->base64_decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 48
    .local v6, "pkcs8KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v9, "RSA/None/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 49
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v9, 0x2

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    const/4 v7, 0x0

    .line 51
    .local v7, "result":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 52
    .local v0, "chunk":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, p0

    if-lt v3, v9, :cond_1

    .line 63
    array-length v9, p0

    if-ge v3, v9, :cond_0

    .line 64
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 65
    .local v5, "out":[B
    if-nez v7, :cond_3

    .line 66
    move-object v7, v5

    .line 78
    .end local v0    # "chunk":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "i":I
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "out":[B
    .end local v6    # "pkcs8KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v7    # "result":[B
    :cond_0
    :goto_1
    return-object v7

    .line 53
    .restart local v0    # "chunk":I
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v3    # "i":I
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v6    # "pkcs8KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .restart local v7    # "result":[B
    :cond_1
    invoke-virtual {v1, p0, v3, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 54
    .restart local v5    # "out":[B
    if-nez v7, :cond_2

    .line 55
    move-object v7, v5

    .line 52
    :goto_2
    add-int/2addr v3, v0

    goto :goto_0

    .line 57
    :cond_2
    array-length v9, v7

    array-length v10, v5

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 58
    .local v8, "temp":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    const/4 v9, 0x0

    array-length v10, v7

    array-length v11, v5

    invoke-static {v5, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    move-object v7, v8

    goto :goto_2

    .line 68
    .end local v8    # "temp":[B
    :cond_3
    array-length v9, v7

    array-length v10, v5

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 69
    .restart local v8    # "temp":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    const/4 v9, 0x0

    array-length v10, v7

    array-length v11, v5

    invoke-static {v5, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    move-object v7, v8

    goto :goto_1

    .line 75
    .end local v0    # "chunk":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "i":I
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "out":[B
    .end local v6    # "pkcs8KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v7    # "result":[B
    .end local v8    # "temp":[B
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 78
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 133
    sget-object v0, Lcom/anzhi/sdk/middle/util/RSACryption;->priKey:Ljava/lang/String;

    const/16 v1, 0x75

    invoke-static {p0, v0, v1}, Lcom/anzhi/sdk/middle/util/RSACryption;->rsaEncryptInner(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaEncrypt([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 137
    sget-object v0, Lcom/anzhi/sdk/middle/util/RSACryption;->priKey:Ljava/lang/String;

    const/16 v1, 0x75

    invoke-static {p0, v0, v1}, Lcom/anzhi/sdk/middle/util/RSACryption;->rsaEncryptInner([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static rsaEncryptInner(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "chunk"    # I

    .prologue
    .line 83
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/anzhi/sdk/middle/util/RSACryption;->rsaEncryptInner([BLjava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static rsaEncryptInner([BLjava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "chunk"    # I

    .prologue
    .line 90
    const/4 v7, 0x0

    .line 92
    .local v7, "resultBytes":[B
    :try_start_0
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 94
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    const-string v9, "RSA/None/PKCS1Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 96
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/anzhi/sdk/middle/util/RSACryption;->base64_decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 98
    .local v6, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const/4 v9, 0x1

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 99
    array-length v4, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v4, "length":I
    const/4 v5, 0x0

    .line 102
    .local v5, "out":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 123
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "i":I
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v4    # "length":I
    .end local v5    # "out":[B
    .end local v6    # "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :goto_1
    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/RSACryption;->base64_encode([B)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 103
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "i":I
    .restart local v3    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v4    # "length":I
    .restart local v5    # "out":[B
    .restart local v6    # "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :cond_0
    add-int v9, v2, p2

    if-le v4, v9, :cond_1

    .line 104
    :try_start_1
    invoke-virtual {v0, p0, v2, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 105
    add-int/2addr v2, p2

    .line 110
    :goto_2
    if-nez v7, :cond_2

    .line 111
    move-object v7, v5

    .line 112
    goto :goto_0

    .line 107
    :cond_1
    sub-int v9, v4, v2

    invoke-virtual {v0, p0, v2, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 108
    move v2, v4

    goto :goto_2

    .line 113
    :cond_2
    array-length v9, v7

    array-length v10, v5

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 114
    .local v8, "temp":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v7, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    const/4 v9, 0x0

    array-length v10, v7

    array-length v11, v5

    invoke-static {v5, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    move-object v7, v8

    goto :goto_0

    .line 120
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "i":I
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v4    # "length":I
    .end local v5    # "out":[B
    .end local v6    # "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v8    # "temp":[B
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "market"

    invoke-static {v9, v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
