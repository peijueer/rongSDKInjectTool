.class public Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    const-string v0, ""

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static native getConstant(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static v(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 39
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v2

    move v0, v1

    move-object v3, v4

    .line 46
    :goto_0
    if-lt v6, v7, :cond_0

    .line 68
    invoke-static {v8, v0, v3, v5}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v4

    .line 71
    :goto_1
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 48
    const/16 v10, 0x26

    if-ne v9, v10, :cond_2

    .line 49
    invoke-static {v8, v0, v3, v5}, Lcom/ipaynow/wechatpay/plugin/utils/PluginTools;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v1

    .line 46
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 55
    :cond_2
    if-eqz v0, :cond_4

    .line 56
    const/16 v10, 0x3d

    if-ne v9, v10, :cond_3

    .line 57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v3, v0

    move v0, v2

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    move-object v0, v5

    .line 71
    goto :goto_1
.end method

.method private static w(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const-string v0, ""

    .line 119
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
