.class public final Lcom/ipaynow/qqpay/plugin/utils/e;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, ""

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/qqpay/plugin/utils/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

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

.method public static k(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v2

    move v0, v1

    move-object v3, v4

    :goto_0
    if-lt v6, v7, :cond_0

    invoke-static {v8, v0, v3, v5}, Lcom/ipaynow/qqpay/plugin/utils/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_2

    invoke-static {v8, v0, v3, v5}, Lcom/ipaynow/qqpay/plugin/utils/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    const/16 v10, 0x3d

    if-ne v9, v10, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v3, v0

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-object v0, v5

    goto :goto_1
.end method
