.class Lcom/unionpay/sdk/s;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/unionpay/sdk/s;


# instance fields
.field private b:Lcom/unionpay/sdk/as;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/s;->a:Lcom/unionpay/sdk/s;

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/ah;->a()Lcom/unionpay/sdk/ah;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/s;->a()Lcom/unionpay/sdk/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/ah;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/unionpay/sdk/bc;->d()Lcom/unionpay/sdk/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/sdk/s;->b:Lcom/unionpay/sdk/as;

    return-void
.end method

.method public static a()Lcom/unionpay/sdk/s;
    .locals 2

    sget-object v0, Lcom/unionpay/sdk/s;->a:Lcom/unionpay/sdk/s;

    if-nez v0, :cond_1

    const-class v1, Lcom/unionpay/sdk/s;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unionpay/sdk/s;->a:Lcom/unionpay/sdk/s;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/sdk/s;

    invoke-direct {v0}, Lcom/unionpay/sdk/s;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/s;->a:Lcom/unionpay/sdk/s;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unionpay/sdk/s;->a:Lcom/unionpay/sdk/s;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7

    invoke-static {}, Lcom/unionpay/sdk/az;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unionpay/sdk/az;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/sdk/s;->b:Lcom/unionpay/sdk/as;

    invoke-static {}, Lcom/unionpay/sdk/az;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/unionpay/sdk/as;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)J

    goto :goto_0
.end method


# virtual methods
.method public final onTDEBEventAppEvent(Lcom/unionpay/sdk/w$a;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/unionpay/sdk/w;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v1, "context"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v4, v4}, Lcom/unionpay/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "eventId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/unionpay/sdk/ab;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v0, :cond_3

    const-string v2, "__"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/unionpay/sdk/ab;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "map"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "controller"

    invoke-static {}, Lcom/unionpay/sdk/s;->a()Lcom/unionpay/sdk/s;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v2, "map"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_5

    const-string v1, "eventId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventLabel"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "occurTime"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "map"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/unionpay/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "eventId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eventLabel"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "occurTime"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0, v4}, Lcom/unionpay/sdk/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
