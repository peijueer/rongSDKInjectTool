.class public Lcom/rongmzw/frame/sdk/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static convertParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 101
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v2, "null"

    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2    # "value":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 112
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 107
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getInitParamsString(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 76
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "init"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "params"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->getMzwIds(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLoginParamsString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "userInfo"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 83
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    const-string v2, "login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "userinfo"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPayParamsString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orderInfo"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 90
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    const-string v3, "pay"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "orderinfo"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v2, "mzw_spf"

    const-string v3, "mzwid"

    const-string v4, ""

    invoke-static {p0, v2, v3, v4}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "mzwid":Ljava/lang/String;
    const-string v2, "uid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "paramsStrings"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://multi.sdk.muzhiwan.com/index.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://multi.sdk.muzhiwan.com/index.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initRequest(Landroid/app/Activity;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "initHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .prologue
    .line 25
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getInitParamsString(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/zhy/http/okhttp/builder/GetBuilder;

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/builder/GetBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    new-instance v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;

    invoke-direct {v1, p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;-><init>(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    .line 37
    return-void
.end method

.method public static loginRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "userinfo"    # Ljava/lang/String;
    .param p2, "loginHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .prologue
    .line 40
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getLoginParamsString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/zhy/http/okhttp/builder/GetBuilder;

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/builder/GetBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    new-instance v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;

    invoke-direct {v1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;-><init>(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    .line 52
    return-void
.end method

.method public static payRequest(Landroid/app/Activity;Ljava/lang/String;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orderInfo"    # Ljava/lang/String;
    .param p2, "payHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    .prologue
    .line 55
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getPayParamsString(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/zhy/http/okhttp/builder/GetBuilder;

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/builder/GetBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    new-instance v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils$3;

    invoke-direct {v1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$3;-><init>(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    .line 67
    return-void
.end method
