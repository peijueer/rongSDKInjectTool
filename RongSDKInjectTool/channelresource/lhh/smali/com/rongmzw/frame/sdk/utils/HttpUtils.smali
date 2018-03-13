.class public Lcom/rongmzw/frame/sdk/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEMAX:I = 0x5

.field private static gson:Lcom/google/gson/Gson;

.field private static httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

.field private static initRequestTimes:I

.field private static loginRequestTimes:I

.field private static payRequestTimes:I

.field private static secretkey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->gson:Lcom/google/gson/Gson;

    .line 34
    sput v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequestTimes:I

    .line 35
    sput v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequestTimes:I

    .line 36
    sput v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequestTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequestTimes:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequestTimes:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequestTimes:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequestTimes:I

    return p0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 29
    sget v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequestTimes:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 29
    sput p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequestTimes:I

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->secretkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 29
    sput-object p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->secretkey:Ljava/lang/String;

    return-object p0
.end method

.method public static addKey(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p1, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "key"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v0, "key"

    invoke-static {p0, p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initGeneralKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    return-void
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
    .line 188
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 191
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
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

    .line 193
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v2, "null"

    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
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

    .line 199
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 202
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 197
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

.method public static covertParams4Sign(Ljava/util/Map;)Ljava/lang/String;
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
    .line 206
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 209
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "key"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v2, "null"

    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
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

    .line 219
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 222
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 217
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getInitParamsString(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)Ljava/lang/String;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "initHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    .line 133
    :cond_0
    const-string v0, "type"

    const-string v1, "init"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "params"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->getMzwIds(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-direct {v0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;-><init>()V

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    .line 139
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0, p0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setActivity(Landroid/app/Activity;)V

    .line 140
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    const-string v1, "http://multi.sdk.muzhiwan.com/index.php"

    invoke-virtual {v0, v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setUrl(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0, p1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setParamsMap(Ljava/util/Map;)V

    .line 142
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0, p2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setCallback(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 143
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setRequestType(I)V

    .line 144
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->secretkey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->addKey(Ljava/util/Map;Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginParamsString(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)Ljava/lang/String;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "loginHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 150
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    .line 152
    :cond_0
    const-string v0, "type"

    const-string v1, "login"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-direct {v0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;-><init>()V

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    .line 157
    :cond_1
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0, p0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setActivity(Landroid/app/Activity;)V

    .line 158
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    const-string v1, "http://multi.sdk.muzhiwan.com/index.php"

    invoke-virtual {v0, v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setUrl(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0, p1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setParamsMap(Ljava/util/Map;)V

    .line 160
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0, p2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setCallback(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 161
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setRequestType(I)V

    .line 162
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->secretkey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->addKey(Ljava/util/Map;Ljava/lang/String;)V

    .line 163
    invoke-static {p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPayParamsString(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "payHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 168
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p1

    .line 170
    :cond_0
    const-string v1, "type"

    const-string v2, "pay"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v1, "mzw_spf"

    const-string v2, "mzwid"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "mzwid":Ljava/lang/String;
    const-string v1, "uid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-direct {v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;-><init>()V

    sput-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    .line 177
    :cond_1
    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v1, p0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setActivity(Landroid/app/Activity;)V

    .line 178
    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    const-string v2, "http://multi.sdk.muzhiwan.com/index.php"

    invoke-virtual {v1, v2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setUrl(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v1, p1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setParamsMap(Ljava/util/Map;)V

    .line 180
    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v1, p2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setCallback(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    .line 181
    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->setRequestType(I)V

    .line 183
    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->secretkey:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->addKey(Ljava/util/Map;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string v2, ""

    .line 305
    :goto_0
    return-object v2

    .line 288
    :cond_0
    const-string v2, ""

    .line 289
    .local v2, "res":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 290
    .local v0, "bt":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 291
    aget-byte v4, v0, v1

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    .line 292
    const/16 v4, 0x39

    aput-byte v4, v0, v1

    .line 290
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 295
    :cond_1
    aget-byte v4, v0, v1

    const/16 v5, 0x61

    if-ne v4, v5, :cond_2

    .line 296
    const/16 v4, 0x66

    aput-byte v4, v0, v1

    goto :goto_2

    .line 299
    :cond_2
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_2

    .line 302
    :cond_3
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "res":Ljava/lang/String;
    .local v3, "res":Ljava/lang/String;
    move-object v2, v3

    .line 304
    .end local v3    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .line 303
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getSecretKey(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;Z)V
    .locals 2
    .param p0, "getSecretKeyCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .param p1, "isResend"    # Z

    .prologue
    .line 226
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    const-string v1, "http://multi.sdk.muzhiwan.com/init.html"

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/zhy/http/okhttp/builder/GetBuilder;

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/builder/GetBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    new-instance v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;

    invoke-direct {v1, p1, p0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;-><init>(ZLcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    .line 243
    return-void
.end method

.method public static getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "paramsStrings"    # Ljava/lang/String;

    .prologue
    .line 126
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

.method public static initGeneralKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "secret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, ""

    .line 272
    .local v3, "sign":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->covertParams4Sign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "paramString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    new-instance v4, Ljava/net/URI;

    const-string v5, "http://multi.sdk.muzhiwan.com/index.php"

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 276
    .local v4, "uri":Ljava/net/URI;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->getMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->getMd5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 281
    .end local v1    # "paramString":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URI;
    :goto_0
    return-object v3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static initRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "initHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getInitParamsString(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->url(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/zhy/http/okhttp/builder/GetBuilder;

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/builder/GetBuilder;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    new-instance v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;

    invoke-direct {v1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;-><init>(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/request/RequestCall;->execute(Lcom/zhy/http/okhttp/callback/Callback;)V

    .line 65
    return-void
.end method

.method public static loginRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "loginHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getLoginParamsString(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)Ljava/lang/String;

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

    .line 94
    return-void
.end method

.method public static payRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "payHttpCallback"    # Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->get()Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getPayParamsString(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)Ljava/lang/String;

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

    .line 123
    return-void
.end method

.method public static reSendHttp()V
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getRequestType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 249
    :pswitch_0
    sget v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequestTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequestTimes:I

    .line 250
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getParamsMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getCallback()Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto :goto_0

    .line 253
    :pswitch_1
    sget v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequestTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequestTimes:I

    .line 254
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getParamsMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getCallback()Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto :goto_0

    .line 257
    :pswitch_2
    sget v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequestTimes:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequestTimes:I

    .line 258
    sget-object v0, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v1}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getParamsMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->httpRequestCache:Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;

    invoke-virtual {v2}, Lcom/rongmzw/frame/sdk/domain/http/HttpRequestCache;->getCallback()Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->payRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
