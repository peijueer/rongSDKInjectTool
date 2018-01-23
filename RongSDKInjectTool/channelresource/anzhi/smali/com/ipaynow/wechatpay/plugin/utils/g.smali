.class public final Lcom/ipaynow/wechatpay/plugin/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    const-string v0, ""

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/utils/h;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 79
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static z(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 213
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v2

    move v0, v1

    move-object v3, v4

    .line 220
    :goto_0
    if-lt v6, v7, :cond_0

    .line 242
    invoke-static {v8, v0, v3, v5}, Lcom/ipaynow/wechatpay/plugin/utils/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v4

    .line 245
    :goto_1
    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 222
    const/16 v10, 0x26

    if-ne v9, v10, :cond_2

    .line 223
    invoke-static {v8, v0, v3, v5}, Lcom/ipaynow/wechatpay/plugin/utils/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    .line 224
    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 220
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 229
    :cond_2
    if-eqz v0, :cond_4

    .line 230
    const/16 v10, 0x3d

    if-ne v9, v10, :cond_3

    .line 231
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v3, v0

    move v0, v2

    .line 234
    goto :goto_2

    .line 235
    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 238
    :cond_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-object v0, v5

    .line 245
    goto :goto_1
.end method
