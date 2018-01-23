.class public final Lcom/ipaynow/wechatpay/plugin/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static C:Ljava/lang/String;

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "RSA/ECB/PKCS1Padding"

    sput-object v0, Lcom/ipaynow/wechatpay/plugin/c/a/b;->C:Ljava/lang/String;

    .line 17
    const/16 v0, 0x800

    sput v0, Lcom/ipaynow/wechatpay/plugin/c/a/b;->D:I

    .line 18
    const/16 v0, 0xb

    sput v0, Lcom/ipaynow/wechatpay/plugin/c/a/b;->E:I

    .line 19
    sget v0, Lcom/ipaynow/wechatpay/plugin/c/a/b;->D:I

    div-int/lit8 v0, v0, 0x8

    .line 20
    sput v0, Lcom/ipaynow/wechatpay/plugin/c/a/b;->F:I

    sget v1, Lcom/ipaynow/wechatpay/plugin/c/a/b;->E:I

    sub-int/2addr v0, v1

    sput v0, Lcom/ipaynow/wechatpay/plugin/c/a/b;->G:I

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 72
    array-length v0, p1

    sget v2, Lcom/ipaynow/wechatpay/plugin/c/a/b;->G:I

    div-int/2addr v0, v2

    .line 73
    array-length v2, p1

    sget v3, Lcom/ipaynow/wechatpay/plugin/c/a/b;->G:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 77
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    sget v3, Lcom/ipaynow/wechatpay/plugin/c/a/b;->F:I

    mul-int/2addr v0, v3

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 79
    :try_start_0
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/c/a/b;->C:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 81
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    move v0, v1

    .line 82
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 93
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 99
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :goto_1
    return-object v0

    .line 84
    :cond_1
    :try_start_2
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 85
    sget v4, Lcom/ipaynow/wechatpay/plugin/c/a/b;->G:I

    if-le v1, v4, :cond_2

    .line 86
    sget v1, Lcom/ipaynow/wechatpay/plugin/c/a/b;->G:I

    .line 89
    :cond_2
    invoke-virtual {v3, p1, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 91
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 82
    sget v1, Lcom/ipaynow/wechatpay/plugin/c/a/b;->G:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v0, v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 96
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 97
    :catchall_0
    move-exception v0

    .line 99
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 103
    :goto_3
    throw v0

    .line 101
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
