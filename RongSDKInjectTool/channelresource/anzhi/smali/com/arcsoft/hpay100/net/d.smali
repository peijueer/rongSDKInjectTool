.class public Lcom/arcsoft/hpay100/net/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0, p2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, p4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz p5, :cond_0

    invoke-static {p1}, Lcom/arcsoft/hpay100/utils/m;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, "10.0.0.172"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/arcsoft/hpay100/net/d;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/arcsoft/hpay100/net/d;

    const/16 v2, 0x4e20

    const/16 v3, 0x7530

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/d;-><init>(Landroid/content/Context;IIZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lcom/arcsoft/hpay100/net/d;
    .locals 6

    const/4 v4, 0x0

    new-instance v0, Lcom/arcsoft/hpay100/net/d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/d;-><init>(Landroid/content/Context;IIZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIZ)Lcom/arcsoft/hpay100/net/d;
    .locals 6

    new-instance v0, Lcom/arcsoft/hpay100/net/d;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/d;-><init>(Landroid/content/Context;IIZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/arcsoft/hpay100/net/d;
    .locals 6

    new-instance v0, Lcom/arcsoft/hpay100/net/d;

    const/16 v2, 0x4e20

    const/16 v3, 0x7530

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/d;-><init>(Landroid/content/Context;IIZZ)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/arcsoft/hpay100/net/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/arcsoft/hpay100/net/e;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Lcom/arcsoft/hpay100/net/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;
    .locals 6

    iget-object v5, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;
    .locals 7

    iget-object v5, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;
    .locals 6

    iget-object v5, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;
    .locals 7

    iget-object v5, p0, Lcom/arcsoft/hpay100/net/d;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method
