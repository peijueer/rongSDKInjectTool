.class public final Lcom/zqhy/sdk/utils/c;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static a:C

.field private static b:[B

.field private static c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3e

    const/16 v7, 0x3d

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 12
    sput-char v7, Lcom/zqhy/sdk/utils/c;->a:C

    .line 13
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lcom/zqhy/sdk/utils/c;->b:[B

    .line 14
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lcom/zqhy/sdk/utils/c;->c:[C

    move v1, v0

    .line 17
    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    .line 18
    sget-object v2, Lcom/zqhy/sdk/utils/c;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    .line 21
    sget-object v2, Lcom/zqhy/sdk/utils/c;->b:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 23
    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    .line 24
    sget-object v2, Lcom/zqhy/sdk/utils/c;->b:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 23
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 27
    :cond_2
    const/16 v1, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    .line 28
    sget-object v2, Lcom/zqhy/sdk/utils/c;->b:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 27
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 31
    :cond_3
    sget-object v1, Lcom/zqhy/sdk/utils/c;->b:[B

    aput-byte v8, v1, v5

    .line 32
    sget-object v1, Lcom/zqhy/sdk/utils/c;->b:[B

    const/16 v2, 0x3f

    aput-byte v2, v1, v6

    move v1, v0

    .line 34
    :goto_4
    const/16 v2, 0x19

    if-gt v1, v2, :cond_4

    .line 35
    sget-object v2, Lcom/zqhy/sdk/utils/c;->c:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 38
    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    if-gt v2, v3, :cond_5

    .line 39
    sget-object v3, Lcom/zqhy/sdk/utils/c;->c:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 42
    :cond_5
    const/16 v1, 0x34

    :goto_6
    if-gt v1, v7, :cond_6

    .line 43
    sget-object v2, Lcom/zqhy/sdk/utils/c;->c:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 45
    :cond_6
    sget-object v0, Lcom/zqhy/sdk/utils/c;->c:[C

    aput-char v5, v0, v8

    .line 46
    sget-object v0, Lcom/zqhy/sdk/utils/c;->c:[C

    const/16 v1, 0x3f

    aput-char v6, v0, v1

    .line 48
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 75
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 76
    if-nez v0, :cond_1

    .line 77
    const-string v0, ""

    goto :goto_0

    .line 80
    :cond_1
    rem-int/lit8 v7, v0, 0x18

    .line 81
    div-int/lit8 v1, v0, 0x18

    .line 82
    if-eqz v7, :cond_2

    add-int/lit8 v0, v1, 0x1

    .line 86
    :goto_1
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 93
    :goto_2
    if-ge v4, v1, :cond_6

    .line 94
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 95
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 96
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 98
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 99
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 101
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_3

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 103
    :goto_3
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_4

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 105
    :goto_4
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_5

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 108
    :goto_5
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lcom/zqhy/sdk/utils/c;->c:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 109
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lcom/zqhy/sdk/utils/c;->c:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 110
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lcom/zqhy/sdk/utils/c;->c:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 111
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lcom/zqhy/sdk/utils/c;->c:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 93
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto :goto_2

    :cond_2
    move v0, v1

    .line 82
    goto :goto_1

    .line 101
    :cond_3
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_3

    .line 103
    :cond_4
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_4

    .line 105
    :cond_5
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_5

    .line 115
    :cond_6
    const/16 v0, 0x8

    if-ne v7, v0, :cond_9

    .line 116
    aget-byte v0, p0, v2

    .line 117
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 119
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 121
    :goto_6
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lcom/zqhy/sdk/utils/c;->c:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 122
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/zqhy/sdk/utils/c;->c:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 123
    add-int/lit8 v1, v0, 0x1

    sget-char v2, Lcom/zqhy/sdk/utils/c;->a:C

    aput-char v2, v8, v0

    .line 124
    add-int/lit8 v0, v1, 0x1

    sget-char v0, Lcom/zqhy/sdk/utils/c;->a:C

    aput-char v0, v8, v1

    .line 142
    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0

    .line 119
    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_6

    .line 125
    :cond_9
    const/16 v0, 0x10

    if-ne v7, v0, :cond_7

    .line 126
    aget-byte v0, p0, v2

    .line 127
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 128
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 129
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 131
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 133
    :goto_8
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 136
    :goto_9
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lcom/zqhy/sdk/utils/c;->c:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 137
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lcom/zqhy/sdk/utils/c;->c:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 138
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/zqhy/sdk/utils/c;->c:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 139
    add-int/lit8 v1, v0, 0x1

    sget-char v1, Lcom/zqhy/sdk/utils/c;->a:C

    aput-char v1, v8, v0

    goto :goto_7

    .line 131
    :cond_a
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_8

    .line 133
    :cond_b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_9
.end method
