.class public Lcom/unionpay/sdk/j;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/unionpay/sdk/k;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/unionpay/sdk/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x2c

    invoke-static {p0}, Lcom/unionpay/sdk/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_0
    const-string v1, ""

    goto :goto_1

    :cond_1
    const-string v1, ""

    goto :goto_2

    :cond_2
    const-string v1, ""

    goto :goto_3

    :cond_3
    const-string v1, ""

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 8

    invoke-static {p0}, Lcom/unionpay/sdk/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "lng"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "ts"

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v4, 0x11

    invoke-static {v4}, Lcom/unionpay/sdk/k;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "elapsed"

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "altitude"

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "accurate"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "bearing"

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "speed"

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    const-string v4, "provider"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)[[Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/Long;

    return-object v0
.end method
