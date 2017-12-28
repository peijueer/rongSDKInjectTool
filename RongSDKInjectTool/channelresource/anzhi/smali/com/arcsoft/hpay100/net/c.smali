.class public Lcom/arcsoft/hpay100/net/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http post request url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dalongTest"

    const-string v2, "net error"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, p0, p1, v1, p2}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http request result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/net/d;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http post request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "utf-8"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_4
    move-object v1, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http post request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "utf-8"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_2
    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :cond_4
    move-object v1, v7

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZIIZ)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http get request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0, p4, p5, p6}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;IIZ)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "utf-8"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_2
    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :cond_4
    move-object v1, v7

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http post2 request url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dalongTest"

    const-string v2, "net error"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, p0, p1, v1, p2}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http request2 result:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/net/d;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http postContainRedirect request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "utf-8"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->d()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_6

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->h()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_4
    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :cond_6
    move-object v1, v7

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http get request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "utf-8"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_2
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_4
    move-object v1, v6

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 9

    const/4 v7, 0x0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http get request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    :try_start_1
    const-string v5, "utf-8"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_2
    move-object v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :cond_4
    move-object v1, v7

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http getContainRedirect request url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "net error"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "utf-8"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->d()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->g()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http request result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v3, 0x12d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_6

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->h()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/d;->a()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_6
    move-object v1, v6

    goto :goto_1
.end method
