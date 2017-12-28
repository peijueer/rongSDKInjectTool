.class public Lcom/arcsoft/hpay100/net/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/HashMap;

.field private c:Lorg/apache/http/HttpEntity;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;

.field private f:Lorg/apache/http/client/methods/HttpUriRequest;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/e;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/net/e;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/net/e;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/net/e;->e:Ljava/util/Map;

    return-void
.end method

.method public a(Lorg/apache/http/HttpEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/net/e;->c:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/net/e;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    return-void
.end method

.method public a([Lorg/apache/http/Header;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/hpay100/net/e;->b:Ljava/util/HashMap;

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/arcsoft/hpay100/net/e;->b:Ljava/util/HashMap;

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/net/e;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v0, p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/e;->e:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/net/e;->g:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/net/e;->a:I

    return v0
.end method

.method public e()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/e;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public f()Lorg/apache/http/HttpEntity;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/e;->c:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/net/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/net/e;->g:Ljava/lang/String;

    return-object v0
.end method
