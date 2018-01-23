.class public Lcom/rongmzw/frame/sdk/utils/Base;
.super Ljava/lang/Object;
.source "Base.java"


# static fields
.field public static final BASE64DEFAULTLENGTH:I = 0x4c

.field static _base64length:I

.field private static final base64Alphabet:[B

.field static log:Ljava/util/logging/Logger;

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 10
    const-class v2, Lcom/rongmzw/frame/sdk/utils/Base;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->log:Ljava/util/logging/Logger;

    .line 12
    const/16 v2, 0x4c

    sput v2, Lcom/rongmzw/frame/sdk/utils/Base;->_base64length:I

    .line 13
    new-array v2, v8, [B

    sput-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    .line 14
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    .line 382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 383
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 386
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 385
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 388
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 389
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 388
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 392
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 393
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 392
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 396
    :cond_3
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 397
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 399
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 400
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 402
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 403
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 405
    add-int/lit8 v0, v0, 0x1

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 408
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_6

    .line 409
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 411
    add-int/lit8 v0, v0, 0x1

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 413
    :cond_6
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v6

    .line 414
    sget-object v2, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v7

    .line 415
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode([BLjava/io/OutputStream;)V
    .locals 14
    .param p0, "paramArrayOfByte"    # [B
    .param p1, "paramOutputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, -0x1

    .line 296
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/Base;->removeWhiteSpace([B)I

    move-result v2

    .line 298
    .local v2, "i":I
    rem-int/lit8 v11, v2, 0x4

    if-eqz v11, :cond_0

    .line 299
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "error get bytes"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 302
    :cond_0
    div-int/lit8 v7, v2, 0x4

    .line 304
    .local v7, "j":I
    if-nez v7, :cond_1

    .line 359
    :goto_0
    return-void

    .line 308
    :cond_1
    const/4 v8, 0x0

    .local v8, "k":I
    const/4 v9, 0x0

    .local v9, "m":I
    const/4 v10, 0x0

    .local v10, "n":I
    const/4 v3, 0x0

    .line 310
    .local v3, "i1":I
    const/4 v4, 0x0

    .line 312
    .local v4, "i2":I
    const/4 v5, 0x0

    .line 314
    .local v5, "i3":I
    add-int/lit8 v4, v7, -0x1

    move v6, v5

    .end local v5    # "i3":I
    .local v6, "i3":I
    :goto_1
    if-lez v4, :cond_4

    .line 315
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i3":I
    .restart local v5    # "i3":I
    aget-byte v12, p0, v6

    aget-byte v8, v11, v12

    .line 316
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i3":I
    .restart local v6    # "i3":I
    aget-byte v12, p0, v5

    aget-byte v9, v11, v12

    .line 317
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i3":I
    .restart local v5    # "i3":I
    aget-byte v12, p0, v6

    aget-byte v10, v11, v12

    .line 318
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i3":I
    .restart local v6    # "i3":I
    aget-byte v12, p0, v5

    aget-byte v3, v11, v12

    .line 319
    if-eq v8, v13, :cond_2

    if-eq v9, v13, :cond_2

    if-eq v10, v13, :cond_2

    if-ne v3, v13, :cond_3

    .line 321
    :cond_2
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "error get bytes"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 324
    :cond_3
    shl-int/lit8 v11, v8, 0x2

    shr-int/lit8 v12, v9, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 325
    and-int/lit8 v11, v9, 0xf

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v12, v10, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 326
    shl-int/lit8 v11, v10, 0x6

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 314
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 328
    :cond_4
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i3":I
    .restart local v5    # "i3":I
    aget-byte v12, p0, v6

    aget-byte v8, v11, v12

    .line 329
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i3":I
    .restart local v6    # "i3":I
    aget-byte v12, p0, v5

    aget-byte v9, v11, v12

    .line 331
    if-eq v8, v13, :cond_5

    if-ne v9, v13, :cond_6

    .line 333
    :cond_5
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "error get bytes"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 336
    :cond_6
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i3":I
    .restart local v5    # "i3":I
    aget-byte v0, p0, v6

    .local v0, "b1":B
    aget-byte v10, v11, v0

    .line 338
    sget-object v11, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i3":I
    .restart local v6    # "i3":I
    aget-byte v1, p0, v5

    .local v1, "b2":B
    aget-byte v3, v11, v1

    .line 339
    if-eq v10, v13, :cond_7

    if-ne v3, v13, :cond_c

    .line 341
    :cond_7
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 342
    and-int/lit8 v11, v9, 0xf

    if-eqz v11, :cond_8

    .line 343
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "error get bytes"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 344
    :cond_8
    shl-int/lit8 v11, v8, 0x2

    shr-int/lit8 v12, v9, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    .line 345
    :cond_9
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 346
    and-int/lit8 v11, v10, 0x3

    if-eqz v11, :cond_a

    .line 347
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "error get bytes"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 348
    :cond_a
    shl-int/lit8 v11, v8, 0x2

    shr-int/lit8 v12, v9, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 349
    and-int/lit8 v11, v9, 0xf

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v12, v10, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0

    .line 351
    :cond_b
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "error get bytes"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 355
    :cond_c
    shl-int/lit8 v11, v8, 0x2

    shr-int/lit8 v12, v9, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 356
    and-int/lit8 v11, v9, 0xf

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v12, v10, 0x2

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 357
    shl-int/lit8 v11, v10, 0x6

    or-int/2addr v11, v3

    int-to-byte v11, v11

    invoke-virtual {p1, v11}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_0
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "paramString"    # Ljava/lang/String;

    .prologue
    .line 213
    if-nez p0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/Base;->decodeInternal([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 1
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 91
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/Base;->decodeInternal([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected static final decodeInternal([B)[B
    .locals 16
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 220
    invoke-static/range {p0 .. p0}, Lcom/rongmzw/frame/sdk/utils/Base;->removeWhiteSpace([B)I

    move-result v3

    .line 222
    .local v3, "i":I
    rem-int/lit8 v14, v3, 0x4

    if-eqz v14, :cond_0

    .line 223
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "error get bytes"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 226
    :cond_0
    div-int/lit8 v10, v3, 0x4

    .line 228
    .local v10, "j":I
    if-nez v10, :cond_2

    .line 229
    const/4 v14, 0x0

    new-array v0, v14, [B

    .line 290
    :cond_1
    return-object v0

    .line 231
    :cond_2
    const/4 v0, 0x0

    .line 232
    .local v0, "arrayOfByte":[B
    const/4 v11, 0x0

    .local v11, "k":I
    const/4 v12, 0x0

    .local v12, "m":I
    const/4 v13, 0x0

    .local v13, "n":I
    const/4 v4, 0x0

    .line 234
    .local v4, "i1":I
    const/4 v5, 0x0

    .line 235
    .local v5, "i2":I
    const/4 v6, 0x0

    .line 236
    .local v6, "i3":I
    const/4 v8, 0x0

    .line 238
    .local v8, "i4":I
    add-int/lit8 v14, v10, -0x1

    mul-int/lit8 v8, v14, 0x4

    .line 239
    add-int/lit8 v14, v10, -0x1

    mul-int/lit8 v6, v14, 0x3

    .line 241
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i4":I
    .local v9, "i4":I
    aget-byte v15, p0, v8

    aget-byte v11, v14, v15

    .line 242
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i4":I
    .restart local v8    # "i4":I
    aget-byte v15, p0, v9

    aget-byte v12, v14, v15

    .line 243
    const/4 v14, -0x1

    if-eq v11, v14, :cond_3

    const/4 v14, -0x1

    if-ne v12, v14, :cond_4

    .line 244
    :cond_3
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "error get bytes"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 246
    :cond_4
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i4":I
    .restart local v9    # "i4":I
    aget-byte v1, p0, v8

    .local v1, "b1":B
    aget-byte v13, v14, v1

    .line 248
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i4":I
    .restart local v8    # "i4":I
    aget-byte v2, p0, v9

    .local v2, "b2":B
    aget-byte v4, v14, v2

    .line 249
    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    const/4 v14, -0x1

    if-ne v4, v14, :cond_b

    .line 251
    :cond_5
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 252
    and-int/lit8 v14, v12, 0xf

    if-eqz v14, :cond_6

    .line 253
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "error get bytes"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 254
    :cond_6
    add-int/lit8 v14, v6, 0x1

    new-array v0, v14, [B

    .line 255
    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v15, v12, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v0, v6

    .line 272
    :goto_0
    const/4 v6, 0x0

    .line 273
    const/4 v8, 0x0

    .line 275
    add-int/lit8 v5, v10, -0x1

    move v9, v8

    .end local v8    # "i4":I
    .restart local v9    # "i4":I
    move v7, v6

    .end local v6    # "i3":I
    .local v7, "i3":I
    :goto_1
    if-lez v5, :cond_1

    .line 276
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i4":I
    .restart local v8    # "i4":I
    aget-byte v15, p0, v9

    aget-byte v11, v14, v15

    .line 277
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i4":I
    .restart local v9    # "i4":I
    aget-byte v15, p0, v8

    aget-byte v12, v14, v15

    .line 278
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i4":I
    .restart local v8    # "i4":I
    aget-byte v15, p0, v9

    aget-byte v13, v14, v15

    .line 279
    sget-object v14, Lcom/rongmzw/frame/sdk/utils/Base;->base64Alphabet:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i4":I
    .restart local v9    # "i4":I
    aget-byte v15, p0, v8

    aget-byte v4, v14, v15

    .line 281
    const/4 v14, -0x1

    if-eq v11, v14, :cond_7

    const/4 v14, -0x1

    if-eq v12, v14, :cond_7

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7

    const/4 v14, -0x1

    if-ne v4, v14, :cond_c

    .line 283
    :cond_7
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "error get bytes"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 256
    .end local v7    # "i3":I
    .end local v9    # "i4":I
    .restart local v6    # "i3":I
    .restart local v8    # "i4":I
    :cond_8
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/utils/Base;->isPad(B)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 257
    and-int/lit8 v14, v13, 0x3

    if-eqz v14, :cond_9

    .line 258
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "error get bytes"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 259
    :cond_9
    add-int/lit8 v14, v6, 0x2

    new-array v0, v14, [B

    .line 260
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i3":I
    .restart local v7    # "i3":I
    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v15, v12, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v0, v6

    .line 261
    and-int/lit8 v14, v12, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v13, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v0, v7

    move v6, v7

    .end local v7    # "i3":I
    .restart local v6    # "i3":I
    goto :goto_0

    .line 263
    :cond_a
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "error get bytes"

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 267
    :cond_b
    add-int/lit8 v14, v6, 0x3

    new-array v0, v14, [B

    .line 268
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i3":I
    .restart local v7    # "i3":I
    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v15, v12, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v0, v6

    .line 269
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i3":I
    .restart local v6    # "i3":I
    and-int/lit8 v14, v12, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v13, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v0, v7

    .line 270
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i3":I
    .restart local v7    # "i3":I
    shl-int/lit8 v14, v13, 0x6

    or-int/2addr v14, v4

    int-to-byte v14, v14

    aput-byte v14, v0, v6

    move v6, v7

    .end local v7    # "i3":I
    .restart local v6    # "i3":I
    goto/16 :goto_0

    .line 286
    .end local v6    # "i3":I
    .end local v8    # "i4":I
    .restart local v7    # "i3":I
    .restart local v9    # "i4":I
    :cond_c
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i3":I
    .restart local v6    # "i3":I
    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v15, v12, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v0, v7

    .line 287
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i3":I
    .restart local v7    # "i3":I
    and-int/lit8 v14, v12, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v15, v13, 0x2

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v0, v6

    .line 288
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i3":I
    .restart local v6    # "i3":I
    shl-int/lit8 v14, v13, 0x6

    or-int/2addr v14, v4

    int-to-byte v14, v14

    aput-byte v14, v0, v7

    .line 275
    add-int/lit8 v5, v5, -0x1

    move v7, v6

    .end local v6    # "i3":I
    .restart local v7    # "i3":I
    goto/16 :goto_1
.end method

.method public static encode(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1
    .param p0, "paramBigInteger"    # Ljava/math/BigInteger;

    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {p0, v0}, Lcom/rongmzw/frame/sdk/utils/Base;->getBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/Base;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 96
    const/16 v0, 0x4c

    invoke-static {p0, v0}, Lcom/rongmzw/frame/sdk/utils/Base;->encode([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)Ljava/lang/String;
    .locals 26
    .param p0, "paramArrayOfByte"    # [B
    .param p1, "paramInt"    # I

    .prologue
    .line 112
    const/16 v24, 0x4

    move/from16 v0, p1

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 113
    const p1, 0x7fffffff

    .line 116
    :cond_0
    if-nez p0, :cond_1

    .line 117
    const/16 v24, 0x0

    .line 208
    :goto_0
    return-object v24

    .line 119
    :cond_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    mul-int/lit8 v3, v24, 0x8

    .line 120
    .local v3, "i":I
    if-nez v3, :cond_2

    .line 121
    const-string v24, ""

    goto :goto_0

    .line 124
    :cond_2
    rem-int/lit8 v20, v3, 0x18

    .line 125
    .local v20, "j":I
    div-int/lit8 v21, v3, 0x18

    .line 126
    .local v21, "k":I
    if-eqz v20, :cond_3

    add-int/lit8 v22, v21, 0x1

    .line 127
    .local v22, "m":I
    :goto_1
    div-int/lit8 v23, p1, 0x4

    .line 128
    .local v23, "n":I
    add-int/lit8 v24, v22, -0x1

    div-int v4, v24, v23

    .line 129
    .local v4, "i1":I
    const/4 v2, 0x0

    .line 131
    .local v2, "arrayOfChar":[C
    mul-int/lit8 v24, v22, 0x4

    add-int v24, v24, v4

    move/from16 v0, v24

    new-array v2, v0, [C

    .line 133
    const/4 v10, 0x0

    .local v10, "i2":I
    const/4 v11, 0x0

    .local v11, "i3":I
    const/4 v12, 0x0

    .local v12, "i4":I
    const/4 v13, 0x0

    .local v13, "i5":I
    const/4 v14, 0x0

    .line 135
    .local v14, "i6":I
    const/4 v15, 0x0

    .line 136
    .local v15, "i7":I
    const/16 v17, 0x0

    .line 137
    .local v17, "i8":I
    const/16 v19, 0x0

    .line 140
    .local v19, "i9":I
    const/4 v5, 0x0

    .line 141
    .local v5, "i10":I
    :goto_2
    if-ge v5, v4, :cond_11

    .line 142
    const/4 v6, 0x0

    .local v6, "i11":I
    move/from16 v18, v17

    .end local v17    # "i8":I
    .local v18, "i8":I
    move/from16 v16, v15

    .end local v15    # "i7":I
    .local v16, "i7":I
    :goto_3
    const/16 v24, 0x13

    move/from16 v0, v24

    if-ge v6, v0, :cond_7

    .line 143
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "i8":I
    .restart local v17    # "i8":I
    aget-byte v12, p0, v18

    .line 144
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "i8":I
    .restart local v18    # "i8":I
    aget-byte v13, p0, v17

    .line 145
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "i8":I
    .restart local v17    # "i8":I
    aget-byte v14, p0, v18

    .line 147
    and-int/lit8 v24, v13, 0xf

    move/from16 v0, v24

    int-to-byte v11, v0

    .line 148
    and-int/lit8 v24, v12, 0x3

    move/from16 v0, v24

    int-to-byte v10, v0

    .line 150
    and-int/lit8 v24, v12, -0x80

    if-nez v24, :cond_4

    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    int-to-byte v7, v0

    .line 152
    .local v7, "i12":I
    :goto_4
    and-int/lit8 v24, v13, -0x80

    if-nez v24, :cond_5

    shr-int/lit8 v24, v13, 0x4

    move/from16 v0, v24

    int-to-byte v8, v0

    .line 153
    .local v8, "i13":I
    :goto_5
    and-int/lit8 v24, v14, -0x80

    if-nez v24, :cond_6

    shr-int/lit8 v24, v14, 0x6

    move/from16 v0, v24

    int-to-byte v9, v0

    .line 155
    .local v9, "i14":I
    :goto_6
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v7

    aput-char v24, v2, v16

    .line 156
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v10, 0x4

    or-int v25, v25, v8

    aget-char v24, v24, v25

    aput-char v24, v2, v15

    .line 157
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v11, 0x2

    or-int v25, v25, v9

    aget-char v24, v24, v25

    aput-char v24, v2, v16

    .line 158
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    and-int/lit8 v25, v14, 0x3f

    aget-char v24, v24, v25

    aput-char v24, v2, v15

    .line 160
    add-int/lit8 v19, v19, 0x1

    .line 142
    add-int/lit8 v6, v6, 0x1

    move/from16 v18, v17

    .end local v17    # "i8":I
    .restart local v18    # "i8":I
    goto :goto_3

    .end local v2    # "arrayOfChar":[C
    .end local v4    # "i1":I
    .end local v5    # "i10":I
    .end local v6    # "i11":I
    .end local v7    # "i12":I
    .end local v8    # "i13":I
    .end local v9    # "i14":I
    .end local v10    # "i2":I
    .end local v11    # "i3":I
    .end local v12    # "i4":I
    .end local v13    # "i5":I
    .end local v14    # "i6":I
    .end local v16    # "i7":I
    .end local v18    # "i8":I
    .end local v19    # "i9":I
    .end local v22    # "m":I
    .end local v23    # "n":I
    :cond_3
    move/from16 v22, v21

    .line 126
    goto/16 :goto_1

    .line 150
    .restart local v2    # "arrayOfChar":[C
    .restart local v4    # "i1":I
    .restart local v5    # "i10":I
    .restart local v6    # "i11":I
    .restart local v10    # "i2":I
    .restart local v11    # "i3":I
    .restart local v12    # "i4":I
    .restart local v13    # "i5":I
    .restart local v14    # "i6":I
    .restart local v16    # "i7":I
    .restart local v17    # "i8":I
    .restart local v19    # "i9":I
    .restart local v22    # "m":I
    .restart local v23    # "n":I
    :cond_4
    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v7, v0

    goto :goto_4

    .line 152
    .restart local v7    # "i12":I
    :cond_5
    shr-int/lit8 v24, v13, 0x4

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v8, v0

    goto :goto_5

    .line 153
    .restart local v8    # "i13":I
    :cond_6
    shr-int/lit8 v24, v14, 0x6

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v9, v0

    goto :goto_6

    .line 162
    .end local v7    # "i12":I
    .end local v8    # "i13":I
    .end local v17    # "i8":I
    .restart local v18    # "i8":I
    :cond_7
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    const/16 v24, 0xa

    aput-char v24, v2, v16

    .line 141
    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v18

    .end local v18    # "i8":I
    .restart local v17    # "i8":I
    goto/16 :goto_2

    .line 165
    .end local v6    # "i11":I
    .end local v15    # "i7":I
    .end local v17    # "i8":I
    .restart local v16    # "i7":I
    .restart local v18    # "i8":I
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 166
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "i8":I
    .restart local v17    # "i8":I
    aget-byte v12, p0, v18

    .line 167
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "i8":I
    .restart local v18    # "i8":I
    aget-byte v13, p0, v17

    .line 168
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "i8":I
    .restart local v17    # "i8":I
    aget-byte v14, p0, v18

    .line 170
    and-int/lit8 v24, v13, 0xf

    move/from16 v0, v24

    int-to-byte v11, v0

    .line 171
    and-int/lit8 v24, v12, 0x3

    move/from16 v0, v24

    int-to-byte v10, v0

    .line 173
    and-int/lit8 v24, v12, -0x80

    if-nez v24, :cond_8

    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    int-to-byte v5, v0

    .line 175
    :goto_8
    and-int/lit8 v24, v13, -0x80

    if-nez v24, :cond_9

    shr-int/lit8 v24, v13, 0x4

    move/from16 v0, v24

    int-to-byte v6, v0

    .line 176
    .restart local v6    # "i11":I
    :goto_9
    and-int/lit8 v24, v14, -0x80

    if-nez v24, :cond_a

    shr-int/lit8 v24, v14, 0x6

    move/from16 v0, v24

    int-to-byte v7, v0

    .line 178
    .restart local v7    # "i12":I
    :goto_a
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v5

    aput-char v24, v2, v16

    .line 179
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v10, 0x4

    or-int v25, v25, v6

    aget-char v24, v24, v25

    aput-char v24, v2, v15

    .line 180
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v11, 0x2

    or-int v25, v25, v7

    aget-char v24, v24, v25

    aput-char v24, v2, v16

    .line 181
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    and-int/lit8 v25, v14, 0x3f

    aget-char v24, v24, v25

    aput-char v24, v2, v15

    .line 165
    add-int/lit8 v19, v19, 0x1

    move/from16 v18, v17

    .end local v17    # "i8":I
    .restart local v18    # "i8":I
    goto :goto_7

    .line 173
    .end local v6    # "i11":I
    .end local v7    # "i12":I
    .end local v18    # "i8":I
    .restart local v17    # "i8":I
    :cond_8
    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v5, v0

    goto :goto_8

    .line 175
    :cond_9
    shr-int/lit8 v24, v13, 0x4

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v6, v0

    goto :goto_9

    .line 176
    .restart local v6    # "i11":I
    :cond_a
    shr-int/lit8 v24, v14, 0x6

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v7, v0

    goto :goto_a

    .line 184
    .end local v6    # "i11":I
    .end local v17    # "i8":I
    .restart local v18    # "i8":I
    :cond_b
    const/16 v24, 0x8

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 185
    aget-byte v12, p0, v18

    .line 186
    and-int/lit8 v24, v12, 0x3

    move/from16 v0, v24

    int-to-byte v10, v0

    .line 188
    and-int/lit8 v24, v12, -0x80

    if-nez v24, :cond_c

    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    int-to-byte v5, v0

    .line 189
    :goto_b
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v5

    aput-char v24, v2, v16

    .line 190
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v10, 0x4

    aget-char v24, v24, v25

    aput-char v24, v2, v15

    .line 191
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    const/16 v24, 0x3d

    aput-char v24, v2, v16

    .line 192
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    const/16 v24, 0x3d

    aput-char v24, v2, v15

    move/from16 v15, v16

    .line 208
    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    :goto_c
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0

    .line 188
    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    :cond_c
    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v5, v0

    goto :goto_b

    .line 193
    :cond_d
    const/16 v24, 0x10

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 194
    aget-byte v12, p0, v18

    .line 195
    add-int/lit8 v24, v18, 0x1

    aget-byte v13, p0, v24

    .line 196
    and-int/lit8 v24, v13, 0xf

    move/from16 v0, v24

    int-to-byte v11, v0

    .line 197
    and-int/lit8 v24, v12, 0x3

    move/from16 v0, v24

    int-to-byte v10, v0

    .line 199
    and-int/lit8 v24, v12, -0x80

    if-nez v24, :cond_f

    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    int-to-byte v5, v0

    .line 200
    :goto_d
    and-int/lit8 v24, v13, -0x80

    if-nez v24, :cond_10

    shr-int/lit8 v24, v13, 0x4

    move/from16 v0, v24

    int-to-byte v6, v0

    .line 202
    .restart local v6    # "i11":I
    :goto_e
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    aget-char v24, v24, v5

    aput-char v24, v2, v16

    .line 203
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v10, 0x4

    or-int v25, v25, v6

    aget-char v24, v24, v25

    aput-char v24, v2, v15

    .line 204
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    sget-object v24, Lcom/rongmzw/frame/sdk/utils/Base;->lookUpBase64Alphabet:[C

    shl-int/lit8 v25, v11, 0x2

    aget-char v24, v24, v25

    aput-char v24, v2, v16

    .line 205
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    const/16 v24, 0x3d

    aput-char v24, v2, v15

    .end local v6    # "i11":I
    :cond_e
    move/from16 v15, v16

    .end local v16    # "i7":I
    .restart local v15    # "i7":I
    goto :goto_c

    .line 199
    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    :cond_f
    shr-int/lit8 v24, v12, 0x2

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v5, v0

    goto :goto_d

    .line 200
    :cond_10
    shr-int/lit8 v24, v13, 0x4

    move/from16 v0, v24

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-byte v6, v0

    goto :goto_e

    .end local v16    # "i7":I
    .end local v18    # "i8":I
    .restart local v15    # "i7":I
    .restart local v17    # "i8":I
    :cond_11
    move/from16 v18, v17

    .end local v17    # "i8":I
    .restart local v18    # "i8":I
    move/from16 v16, v15

    .end local v15    # "i7":I
    .restart local v16    # "i7":I
    goto/16 :goto_7
.end method

.method public static encode(Ljava/math/BigInteger;I)[B
    .locals 7
    .param p0, "paramBigInteger"    # Ljava/math/BigInteger;
    .param p1, "paramInt"    # I

    .prologue
    .line 55
    add-int/lit8 v5, p1, 0x7

    shr-int/lit8 v5, v5, 0x3

    shl-int/lit8 p1, v5, 0x3

    .line 57
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 58
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "error get bytes"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 61
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 63
    .local v0, "arrayOfByte1":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v6, p1, 0x8

    if-ne v5, v6, :cond_1

    .line 82
    .end local v0    # "arrayOfByte1":[B
    :goto_0
    return-object v0

    .line 68
    .restart local v0    # "arrayOfByte1":[B
    :cond_1
    const/4 v2, 0x0

    .line 69
    .local v2, "i":I
    array-length v3, v0

    .line 71
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_2

    .line 72
    const/4 v2, 0x1

    .line 74
    add-int/lit8 v3, v3, -0x1

    .line 77
    :cond_2
    div-int/lit8 v5, p1, 0x8

    sub-int v4, v5, v3

    .line 78
    .local v4, "k":I
    div-int/lit8 v5, p1, 0x8

    new-array v1, v5, [B

    .line 80
    .local v1, "arrayOfByte2":[B
    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method static getBytes(Ljava/math/BigInteger;I)[B
    .locals 7
    .param p0, "paramBigInteger"    # Ljava/math/BigInteger;
    .param p1, "paramInt"    # I

    .prologue
    .line 18
    add-int/lit8 v5, p1, 0x7

    shr-int/lit8 v5, v5, 0x3

    shl-int/lit8 p1, v5, 0x3

    .line 20
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 21
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "error get bytes"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 26
    .local v0, "arrayOfByte1":[B
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v6, p1, 0x8

    if-ne v5, v6, :cond_1

    .line 45
    .end local v0    # "arrayOfByte1":[B
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "arrayOfByte1":[B
    :cond_1
    const/4 v2, 0x0

    .line 32
    .local v2, "i":I
    array-length v3, v0

    .line 34
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_2

    .line 35
    const/4 v2, 0x1

    .line 37
    add-int/lit8 v3, v3, -0x1

    .line 40
    :cond_2
    div-int/lit8 v5, p1, 0x8

    sub-int v4, v5, v3

    .line 41
    .local v4, "k":I
    div-int/lit8 v5, p1, 0x8

    new-array v1, v5, [B

    .line 43
    .local v1, "arrayOfByte2":[B
    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 45
    goto :goto_0
.end method

.method protected static final isPad(B)Z
    .locals 1
    .param p0, "paramByte"    # B

    .prologue
    .line 107
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static final isWhiteSpace(B)Z
    .locals 1
    .param p0, "paramByte"    # B

    .prologue
    .line 103
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static removeWhiteSpace([B)I
    .locals 6
    .param p0, "paramArrayOfByte"    # [B

    .prologue
    .line 364
    if-nez p0, :cond_1

    .line 365
    const/4 v2, 0x0

    .line 377
    :cond_0
    return v2

    .line 368
    :cond_1
    const/4 v1, 0x0

    .line 369
    .local v1, "i":I
    array-length v3, p0

    .line 370
    .local v3, "j":I
    const/4 v4, 0x0

    .local v4, "k":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 371
    const/16 v5, 0x6c21

    if-eq v2, v5, :cond_2

    const/16 v5, 0x3add

    if-ne v2, v5, :cond_2

    .line 373
    :cond_2
    aget-byte v0, p0, v4

    .line 374
    .local v0, "b":B
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/Base;->isWhiteSpace(B)Z

    move-result v5

    if-nez v5, :cond_3

    .line 375
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-byte v0, p0, v2

    .line 370
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    :cond_3
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method
