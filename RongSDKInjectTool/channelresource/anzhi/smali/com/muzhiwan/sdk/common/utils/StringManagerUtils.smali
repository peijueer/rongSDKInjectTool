.class public Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;
.super Ljava/lang/Object;
.source "StringManagerUtils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final emailerPattern:Ljava/util/regex/Pattern;

.field private static final phonePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->HEX_DIGITS:[C

    .line 12
    const-string v0, "\\w+([-=.]\\w+)*@\\w+([-.])\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->emailerPattern:Ljava/util/regex/Pattern;

    .line 14
    const-string v0, "^((13[0-9])|170|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->phonePattern:Ljava/util/regex/Pattern;

    .line 14
    return-void

    .line 10
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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatStr2Bundle(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "regularExpressions"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 150
    .local v2, "channels":[Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    aget-object v4, p1, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_0
    if-eqz v2, :cond_1

    .line 154
    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v2, v4

    .line 155
    .local v3, "currentStr":Ljava/lang/String;
    aget-object v7, p1, v9

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "channelValues":[Ljava/lang/String;
    aget-object v7, v1, v5

    aget-object v8, v1, v9

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "channelValues":[Ljava/lang/String;
    .end local v3    # "currentStr":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 138
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 139
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    .end local v1    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    const-string v2, ""

    goto :goto_0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "emailAddr"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->emailerPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNull(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 37
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPhone(Ljava/lang/String;)Z
    .locals 1
    .param p0, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->phonePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static toBool(Ljava/lang/String;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/String;

    .prologue
    .line 121
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 107
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 110
    :goto_0
    return-wide v0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 129
    sget-object v2, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    sget-object v2, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 82
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 80
    .restart local p1    # "defValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 96
    :goto_0
    return-wide v0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
