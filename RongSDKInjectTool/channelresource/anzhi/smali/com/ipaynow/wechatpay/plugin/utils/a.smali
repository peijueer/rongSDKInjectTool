.class public final Lcom/ipaynow/wechatpay/plugin/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 12
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 15
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 16
    array-length v6, v5

    move v2, v3

    :goto_0
    if-lt v2, v6, :cond_0

    .line 27
    invoke-static {v4}, Lcom/ipaynow/wechatpay/plugin/utils/a;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :goto_1
    return-object v0

    .line 16
    :cond_0
    aget-object v7, v5, v2

    .line 17
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    if-eqz v0, :cond_1

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    :cond_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_4

    move-object v0, v1

    .line 21
    goto :goto_1

    :cond_2
    move v0, v3

    .line 20
    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 31
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static b(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 44
    const-string v3, "="

    .line 45
    const-string v4, "&"

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_1

    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
