.class public final Lcom/ipaynow/wechatpay/plugin/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 13
    :try_start_0
    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 24
    return-void

    .line 13
    :cond_0
    aget-object v5, v3, v1

    .line 15
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/PluginConfig;->optional_params:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 19
    :cond_1
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 18
    goto :goto_1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
