.class public final Lcom/ipaynow/wechatpay/plugin/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic aM:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "%s%s.%s%s"

    .line 175
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/d/b;->aL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 178
    :goto_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    return-object v0

    .line 177
    :cond_0
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/d/b;->aL:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 80
    sget-boolean v0, Lcom/ipaynow/wechatpay/plugin/d/b;->aK:Z

    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 83
    :cond_0
    if-eqz p2, :cond_b

    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 85
    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 86
    invoke-static {p1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    check-cast p2, Ljava/lang/Exception;

    .line 89
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/d/c;->p()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-static {v0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {v0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 103
    :pswitch_4
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    :pswitch_5
    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 112
    check-cast p2, Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    const-string v3, "Temporarily not support more than two dimensional Array!"

    move v0, v1

    move v2, v1

    .line 115
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 116
    :cond_3
    packed-switch v2, :pswitch_data_1

    move-object v0, v3

    .line 127
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :pswitch_6
    invoke-static {p2}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->f(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 119
    const-string v2, "[]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] {\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 123
    :pswitch_7
    invoke-static {p2}, Lcom/ipaynow/wechatpay/plugin/d/a/a;->e(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 124
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 125
    const-string v3, "[][]"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] {\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 132
    :cond_5
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 133
    check-cast p2, Ljava/util/Collection;

    .line 134
    const-string v0, "%s size = %d [\n"

    .line 135
    new-array v2, v9, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 137
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    move v0, v1

    .line 139
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 146
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 140
    :cond_6
    const-string v4, "[%d]:%s%s"

    .line 141
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/b;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    .line 143
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_7

    const-string v0, ",\n"

    :goto_5
    aput-object v0, v7, v9

    .line 142
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v10, v2

    move-object v2, v0

    move v0, v10

    goto :goto_3

    .line 143
    :cond_7
    const-string v0, "\n"

    goto :goto_5

    .line 147
    :cond_8
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " {\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    check-cast p2, Ljava/util/Map;

    .line 150
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 151
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 152
    const-string v4, "[%s -> %s]\n"

    .line 153
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/ipaynow/wechatpay/plugin/d/a/b;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 155
    invoke-static {v5}, Lcom/ipaynow/wechatpay/plugin/d/a/b;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 154
    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 159
    :cond_a
    invoke-static {p2}, Lcom/ipaynow/wechatpay/plugin/d/a/b;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 162
    :cond_b
    invoke-static {p2}, Lcom/ipaynow/wechatpay/plugin/d/a/b;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0, v1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move-object v2, v0

    goto/16 :goto_4

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 116
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static varargs a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 37
    sget-boolean v0, Lcom/ipaynow/wechatpay/plugin/d/b;->aK:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 41
    array-length v1, p3

    if-lez v1, :cond_1

    .line 43
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 48
    :cond_1
    :goto_1
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/d/c;->p()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :pswitch_1
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    :pswitch_3
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :pswitch_4
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :pswitch_5
    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/d/a;->aD:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-static {v0, p0, p1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public static b(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/d/a;->aG:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-static {v0, p0, p1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public static c(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/d/a;->aF:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-static {v0, p0, p1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public static d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/d/a;->aE:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-static {v0, p0, p1}, Lcom/ipaynow/wechatpay/plugin/d/c;->a(Lcom/ipaynow/wechatpay/plugin/d/a;Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method private static synthetic p()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/d/c;->aM:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/d/a;->values()[Lcom/ipaynow/wechatpay/plugin/d/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/d/a;->aD:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/d/a;->aG:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/d/a;->aE:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/d/a;->aC:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/d/a;->aF:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ipaynow/wechatpay/plugin/d/a;->aH:Lcom/ipaynow/wechatpay/plugin/d/a;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/d/a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/ipaynow/wechatpay/plugin/d/c;->aM:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method
