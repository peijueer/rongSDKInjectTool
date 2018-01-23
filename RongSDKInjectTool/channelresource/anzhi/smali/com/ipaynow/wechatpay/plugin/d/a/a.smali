.class public final Lcom/ipaynow/wechatpay/plugin/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static e(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    instance-of v0, p0, [[I

    if-eqz v0, :cond_2

    .line 35
    check-cast p0, [[I

    .line 36
    array-length v2, p0

    .line 37
    if-nez v2, :cond_0

    move v0, v1

    .line 38
    :goto_0
    array-length v4, p0

    :goto_1
    if-lt v1, v4, :cond_1

    move v1, v2

    .line 98
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_0

    .line 38
    :cond_1
    aget-object v5, p0, v1

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_2
    instance-of v0, p0, [[B

    if-eqz v0, :cond_5

    .line 42
    check-cast p0, [[B

    .line 43
    array-length v2, p0

    .line 44
    if-nez v2, :cond_3

    move v0, v1

    .line 45
    :goto_3
    array-length v4, p0

    :goto_4
    if-lt v1, v4, :cond_4

    move v1, v2

    .line 48
    goto :goto_2

    .line 44
    :cond_3
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_3

    .line 45
    :cond_4
    aget-object v5, p0, v1

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 48
    :cond_5
    instance-of v0, p0, [[S

    if-eqz v0, :cond_8

    .line 49
    check-cast p0, [[S

    .line 50
    array-length v2, p0

    .line 51
    if-nez v2, :cond_6

    move v0, v1

    .line 52
    :goto_5
    array-length v4, p0

    :goto_6
    if-lt v1, v4, :cond_7

    move v1, v2

    .line 55
    goto :goto_2

    .line 51
    :cond_6
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_5

    .line 52
    :cond_7
    aget-object v5, p0, v1

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 55
    :cond_8
    instance-of v0, p0, [[J

    if-eqz v0, :cond_b

    .line 56
    check-cast p0, [[J

    .line 57
    array-length v2, p0

    .line 58
    if-nez v2, :cond_9

    move v0, v1

    .line 59
    :goto_7
    array-length v4, p0

    :goto_8
    if-lt v1, v4, :cond_a

    move v1, v2

    .line 62
    goto/16 :goto_2

    .line 58
    :cond_9
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_7

    .line 59
    :cond_a
    aget-object v5, p0, v1

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 62
    :cond_b
    instance-of v0, p0, [[F

    if-eqz v0, :cond_e

    .line 63
    check-cast p0, [[F

    .line 64
    array-length v2, p0

    .line 65
    if-nez v2, :cond_c

    move v0, v1

    .line 66
    :goto_9
    array-length v4, p0

    :goto_a
    if-lt v1, v4, :cond_d

    move v1, v2

    .line 69
    goto/16 :goto_2

    .line 65
    :cond_c
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_9

    .line 66
    :cond_d
    aget-object v5, p0, v1

    .line 67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 69
    :cond_e
    instance-of v0, p0, [[D

    if-eqz v0, :cond_11

    .line 70
    check-cast p0, [[D

    .line 71
    array-length v2, p0

    .line 72
    if-nez v2, :cond_f

    move v0, v1

    .line 73
    :goto_b
    array-length v4, p0

    :goto_c
    if-lt v1, v4, :cond_10

    move v1, v2

    .line 76
    goto/16 :goto_2

    .line 72
    :cond_f
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_b

    .line 73
    :cond_10
    aget-object v5, p0, v1

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 76
    :cond_11
    instance-of v0, p0, [[Z

    if-eqz v0, :cond_14

    .line 77
    check-cast p0, [[Z

    .line 78
    array-length v2, p0

    .line 79
    if-nez v2, :cond_12

    move v0, v1

    .line 80
    :goto_d
    array-length v4, p0

    :goto_e
    if-lt v1, v4, :cond_13

    move v1, v2

    .line 83
    goto/16 :goto_2

    .line 79
    :cond_12
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_d

    .line 80
    :cond_13
    aget-object v5, p0, v1

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 83
    :cond_14
    instance-of v0, p0, [[C

    if-eqz v0, :cond_17

    .line 84
    check-cast p0, [[C

    .line 85
    array-length v2, p0

    .line 86
    if-nez v2, :cond_15

    move v0, v1

    .line 87
    :goto_f
    array-length v4, p0

    :goto_10
    if-lt v1, v4, :cond_16

    move v1, v2

    .line 90
    goto/16 :goto_2

    .line 86
    :cond_15
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_f

    .line 87
    :cond_16
    aget-object v5, p0, v1

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 91
    :cond_17
    check-cast p0, [[Ljava/lang/Object;

    .line 92
    array-length v2, p0

    .line 93
    if-nez v2, :cond_18

    move v0, v1

    .line 94
    :goto_11
    array-length v4, p0

    :goto_12
    if-lt v1, v4, :cond_19

    move v1, v2

    goto/16 :goto_2

    .line 93
    :cond_18
    aget-object v0, p0, v1

    array-length v0, v0

    goto :goto_11

    .line 94
    :cond_19
    aget-object v5, p0, v1

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public static f(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    instance-of v0, p0, [I

    if-eqz v0, :cond_2

    .line 111
    check-cast p0, [I

    .line 112
    array-length v0, p0

    .line 113
    array-length v3, p0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 165
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v4, "]"

    invoke-virtual {v2, v1, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    aget v4, p0, v1

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 117
    check-cast p0, [B

    .line 118
    array-length v0, p0

    .line 119
    array-length v3, p0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-byte v4, p0, v1

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_3
    instance-of v0, p0, [S

    if-eqz v0, :cond_4

    .line 123
    check-cast p0, [S

    .line 124
    array-length v0, p0

    .line 125
    array-length v3, p0

    :goto_2
    if-ge v1, v3, :cond_0

    aget-short v4, p0, v1

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 128
    :cond_4
    instance-of v0, p0, [J

    if-eqz v0, :cond_5

    .line 129
    check-cast p0, [J

    .line 130
    array-length v0, p0

    .line 131
    array-length v3, p0

    :goto_3
    if-ge v1, v3, :cond_0

    aget-wide v4, p0, v1

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 134
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    .line 135
    check-cast p0, [F

    .line 136
    array-length v0, p0

    .line 137
    array-length v3, p0

    :goto_4
    if-ge v1, v3, :cond_0

    aget v4, p0, v1

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 140
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    .line 141
    check-cast p0, [D

    .line 142
    array-length v0, p0

    .line 143
    array-length v3, p0

    :goto_5
    if-ge v1, v3, :cond_0

    aget-wide v4, p0, v1

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 146
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_8

    .line 147
    check-cast p0, [Z

    .line 148
    array-length v0, p0

    .line 149
    array-length v3, p0

    :goto_6
    if-ge v1, v3, :cond_0

    aget-boolean v4, p0, v1

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 152
    :cond_8
    instance-of v0, p0, [C

    if-eqz v0, :cond_9

    .line 153
    check-cast p0, [C

    .line 154
    array-length v0, p0

    .line 155
    array-length v3, p0

    :goto_7
    if-ge v1, v3, :cond_0

    aget-char v4, p0, v1

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 159
    :cond_9
    check-cast p0, [Ljava/lang/Object;

    .line 160
    array-length v0, p0

    .line 161
    array-length v3, p0

    :goto_8
    if-ge v1, v3, :cond_0

    aget-object v4, p0, v1

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/ipaynow/wechatpay/plugin/d/a/b;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\t"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method
