.class public Lcom/arcsoft/hpay100/net/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "gzip"

.field public static final b:Ljava/lang/String; = "utf-8"

.field public static final c:I = 0x4e20

.field public static final d:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;
    .locals 5

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->b(Ljava/util/Map;)V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    :cond_1
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "utf-8"

    invoke-direct {v2, p3, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V

    const-string v3, "application/json"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/net/f;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/arcsoft/hpay100/net/e;
    .locals 6

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->b(Ljava/util/Map;)V

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    :cond_2
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf-8"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {v2, v0}, Lcom/arcsoft/hpay100/net/f;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/arcsoft/hpay100/net/e;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/arcsoft/hpay100/net/e;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Z)Lcom/arcsoft/hpay100/net/e;
    .locals 5

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p6, :cond_1

    invoke-static {p0, p3}, Lcom/arcsoft/hpay100/utils/s;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->b(Ljava/util/Map;)V

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    :cond_3
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v2, p4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {p5, v0}, Lcom/arcsoft/hpay100/net/f;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;
    .locals 6

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p0, p3}, Lcom/arcsoft/hpay100/utils/s;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->b(Ljava/util/Map;)V

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeaders([Lorg/apache/http/Header;)V

    :cond_3
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v3, p4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {v2, v0}, Lcom/arcsoft/hpay100/net/f;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/arcsoft/hpay100/net/e;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x12e

    const/16 v5, 0x12d

    new-instance v1, Lcom/arcsoft/hpay100/net/g;

    invoke-direct {v1}, Lcom/arcsoft/hpay100/net/g;-><init>()V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    new-instance v1, Lcom/arcsoft/hpay100/net/e;

    invoke-direct {v1}, Lcom/arcsoft/hpay100/net/e;-><init>()V

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v4, v3, :cond_2

    if-eq v5, v3, :cond_2

    if-ne v6, v3, :cond_0

    :cond_2
    invoke-virtual {v1, v3}, Lcom/arcsoft/hpay100/net/e;->a(I)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/net/e;->a([Lorg/apache/http/Header;)V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/net/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/net/f;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/net/e;->a(Ljava/util/Map;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/net/e;->a(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v1, p1}, Lcom/arcsoft/hpay100/net/e;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    if-eq v5, v3, :cond_3

    if-ne v6, v3, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/arcsoft/hpay100/net/e;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/net/e;->c(Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    const-string v0, "?"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v0, "&"

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)[Lorg/apache/http/Header;
    .locals 6

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [Lorg/apache/http/message/BasicHeader;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/arcsoft/hpay100/net/e;
    .locals 6

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/net/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/arcsoft/hpay100/net/e;
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/net/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Z)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;Z)Lcom/arcsoft/hpay100/net/e;
    .locals 2

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p6, :cond_1

    invoke-static {p0, p3}, Lcom/arcsoft/hpay100/utils/s;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_4

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->b(Ljava/util/Map;)V

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    :cond_3
    invoke-static {p5, v1}, Lcom/arcsoft/hpay100/net/f;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {p1, p3}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)Lcom/arcsoft/hpay100/net/e;
    .locals 3

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p0, p3}, Lcom/arcsoft/hpay100/utils/s;->a(Landroid/content/Context;Ljava/util/Map;)V

    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_4

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->b(Ljava/util/Map;)V

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/util/Map;)[Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    :cond_3
    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/net/f;->a(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/arcsoft/hpay100/net/e;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {p1, p3}, Lcom/arcsoft/hpay100/net/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)V
    .locals 2

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
