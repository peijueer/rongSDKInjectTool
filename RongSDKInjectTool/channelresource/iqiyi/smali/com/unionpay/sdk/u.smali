.class Lcom/unionpay/sdk/u;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/unionpay/sdk/u;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Ljava/lang/String;

.field private d:Lcom/unionpay/sdk/as;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/u;->a:Lcom/unionpay/sdk/u;

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/ah;->a()Lcom/unionpay/sdk/ah;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/u;->a()Lcom/unionpay/sdk/u;

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

    iput-object v0, p0, Lcom/unionpay/sdk/u;->d:Lcom/unionpay/sdk/as;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/sdk/u;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/sdk/u;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/unionpay/sdk/u;
    .locals 2

    sget-object v0, Lcom/unionpay/sdk/u;->a:Lcom/unionpay/sdk/u;

    if-nez v0, :cond_1

    const-class v1, Lcom/unionpay/sdk/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unionpay/sdk/u;->a:Lcom/unionpay/sdk/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/sdk/u;

    invoke-direct {v0}, Lcom/unionpay/sdk/u;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/u;->a:Lcom/unionpay/sdk/u;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unionpay/sdk/u;->a:Lcom/unionpay/sdk/u;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/sdk/w;->b:Z

    iget-object v0, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageStart being called!, pagename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_0

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v1, "UPpref_shorttime"

    const-string v2, "UPpref.actstart.key"

    invoke-static {v0, v1, v2, p1, p2}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/unionpay/sdk/u;->d:Lcom/unionpay/sdk/as;

    invoke-static {}, Lcom/unionpay/sdk/az;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, p3

    move-wide v3, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/unionpay/sdk/as;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/unionpay/sdk/ab;->k:J

    iget-object v0, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    sget-wide v2, Lcom/unionpay/sdk/ab;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageStart being called!, pagename: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unionpay/sdk/az;->d()J

    move-result-wide v0

    invoke-static {}, Lcom/unionpay/sdk/az;->f()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, -0x3e8

    :cond_0
    iget-object v2, p0, Lcom/unionpay/sdk/u;->d:Lcom/unionpay/sdk/as;

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, p1, v0}, Lcom/unionpay/sdk/as;->a(Ljava/lang/String;I)J

    :cond_1
    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-wide v0, Lcom/unionpay/sdk/ab;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unionpay/sdk/u;->d:Lcom/unionpay/sdk/as;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/unionpay/sdk/as;->a(JJ)J

    :cond_1
    iget-boolean v0, p0, Lcom/unionpay/sdk/u;->e:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/unionpay/sdk/az;->a(Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/unionpay/sdk/u;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/unionpay/sdk/u;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public final onTDEBEventSession(Lcom/unionpay/sdk/w$a;)V
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

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

    if-eq v0, v6, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v1, "controller"

    invoke-static {}, Lcom/unionpay/sdk/u;->a()Lcom/unionpay/sdk/u;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    const-string v1, "occurTime"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v7, p1, Lcom/unionpay/sdk/w$a;->a:Ljava/util/HashMap;

    :try_start_0
    const-string v0, "apiType"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/unionpay/sdk/c;->a()Lcom/unionpay/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/c;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    const-string v0, "isPageOrSession"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "occurTime"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "pageName"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/unionpay/sdk/u;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/unionpay/sdk/az;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/unionpay/sdk/u;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/unionpay/sdk/u;->c:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/unionpay/sdk/az;->d()J

    move-result-wide v2

    invoke-static {}, Lcom/unionpay/sdk/az;->f()J

    move-result-wide v0

    cmp-long v8, v0, v2

    if-lez v8, :cond_7

    :goto_2
    const-string v2, "occurTime"

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v0, v2, v0

    sget-wide v8, Lcom/unionpay/sdk/ab;->l:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_a

    const-string v0, "[Session] - New session!"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/sdk/az;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/sdk/u;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/unionpay/sdk/az;->f()J

    move-result-wide v10

    sub-long v8, v2, v10

    cmp-long v0, v4, v10

    if-nez v0, :cond_8

    :goto_3
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/sdk/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_4
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v7, "UPpref_longtime"

    const-string v8, "UPpref.session.key"

    invoke-static {v0, v7, v8, v1}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    const-string v7, "UPpref_longtime"

    const-string v8, "UPpref.start.key"

    invoke-static {v0, v7, v8, v2, v3}, Lcom/unionpay/sdk/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_6
    iget-object v0, p0, Lcom/unionpay/sdk/u;->d:Lcom/unionpay/sdk/as;

    invoke-virtual/range {v0 .. v6}, Lcom/unionpay/sdk/as;->a(Ljava/lang/String;JJI)J

    move-result-wide v2

    const-string v0, "sessionId: %s, status: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/unionpay/sdk/az;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/sdk/u;->e:Z

    :goto_5
    invoke-static {}, Lcom/unionpay/sdk/c;->a()Lcom/unionpay/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/c;->a(Z)V

    goto/16 :goto_0

    :cond_7
    move-wide v0, v2

    goto/16 :goto_2

    :cond_8
    move-wide v4, v8

    goto :goto_3

    :cond_9
    const/4 v6, -0x1

    goto :goto_4

    :cond_a
    const-string v0, "[Session] - Same session as before!"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    const-string v0, "isPageOrSession"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "pageName"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/sdk/u;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "pageName"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sessionEnd"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/unionpay/sdk/az;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/sdk/u;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/unionpay/sdk/c;->a()Lcom/unionpay/sdk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/c;->a(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "occurTime"

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unionpay/sdk/az;->a(J)V

    invoke-static {v0}, Lcom/unionpay/sdk/az;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/sdk/u;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/sdk/u;->c:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "occurTime"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "pageName"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/unionpay/sdk/u;->c:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {}, Lcom/unionpay/sdk/az;->c()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/unionpay/sdk/u;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/unionpay/sdk/u;->c:Ljava/lang/String;

    goto :goto_6

    :pswitch_5
    const-string v0, "pageName"

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/sdk/u;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
