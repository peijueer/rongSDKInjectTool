.class public abstract Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field private static final BASE_TABLE:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p0, :cond_0

    .line 151
    :goto_0
    return-object v2

    .line 147
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 148
    .local v0, "b":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 149
    .end local v0    # "b":[B
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "N"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private toByte(C)B
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 33
    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    int-to-byte v0, v1

    .line 34
    .local v0, "b":B
    return v0
.end method


# virtual methods
.method public final bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "bArray"    # [B

    .prologue
    .line 44
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 46
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 47
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "sTemp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "sTemp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected abstract decrypt([B[B)[B
.end method

.method public final decryptFromBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p2}, Lcom/anzhi/sdk/middle/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final decryptFromBase64DefaultEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p2}, Lcom/anzhi/sdk/middle/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final decryptFromBase64UTF8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->decryptFromBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final decryptFromHex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->hexStringToByte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final decryptFromHexDefaultEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->hexStringToByte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final decryptFromHexUTF8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->decryptFromHex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract encrypt([B[B)[B
.end method

.method public final encryptToBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->encrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/Base64;->encodeToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final encryptToBase64DefaultEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->encrypt([B[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/Base64;->encodeToString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final encryptToBase64UTF8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->encryptToBase64(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encryptToHex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->encrypt([B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final encryptToHexDefaultEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->encrypt([B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final encryptToHexUTF8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->encryptToHex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hexStringToByte(Ljava/lang/String;)[B
    .locals 7
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 23
    .local v2, "len":I
    new-array v4, v2, [B

    .line 24
    .local v4, "result":[B
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 25
    .local v0, "achar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 26
    mul-int/lit8 v3, v1, 0x2

    .line 27
    .local v3, "pos":I
    aget-char v5, v0, v3

    invoke-direct {p0, v5}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->toByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v0, v6

    invoke-direct {p0, v6}, Lcom/rongmzw/frame/sdk/core/util/SecurityUtil;->toByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v3    # "pos":I
    :cond_0
    return-object v4
.end method
