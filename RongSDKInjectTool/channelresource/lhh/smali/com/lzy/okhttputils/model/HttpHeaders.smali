.class public Lcom/lzy/okhttputils/model/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FORMAT_HTTP_DATA:Ljava/lang/String; = "EEE, dd MMM y HH:mm:ss \'GMT\'"

.field public static final GMT_TIME_ZONE:Ljava/util/TimeZone;

.field public static final HEAD_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEAD_KEY_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEAD_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field public static final HEAD_KEY_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEAD_KEY_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEAD_KEY_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEAD_KEY_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEAD_KEY_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEAD_KEY_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEAD_KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEAD_KEY_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEAD_KEY_COOKIE2:Ljava/lang/String; = "Cookie2"

.field public static final HEAD_KEY_DATE:Ljava/lang/String; = "Date"

.field public static final HEAD_KEY_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEAD_KEY_E_TAG:Ljava/lang/String; = "ETag"

.field public static final HEAD_KEY_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final HEAD_KEY_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEAD_KEY_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEAD_KEY_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEAD_KEY_PRAGMA:Ljava/lang/String; = "Pragma"

.field public static final HEAD_KEY_RESPONSE_CODE:Ljava/lang/String; = "ResponseCode"

.field public static final HEAD_KEY_RESPONSE_MESSAGE:Ljava/lang/String; = "ResponseMessage"

.field public static final HEAD_KEY_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEAD_KEY_SET_COOKIE2:Ljava/lang/String; = "Set-Cookie2"

.field public static final HEAD_KEY_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEAD_VALUE_ACCEPT_ENCODING:Ljava/lang/String; = "gzip, deflate"

.field public static final HEAD_VALUE_CONNECTION_CLOSE:Ljava/lang/String; = "close"

.field public static final HEAD_VALUE_CONNECTION_KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static acceptLanguage:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x7563275169b7b161L

.field private static userAgent:Ljava/lang/String;


# instance fields
.field public headersMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->init()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->init()V

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okhttputils/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static formatMillisToGMT(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 254
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 255
    sget-object v2, Lcom/lzy/okhttputils/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 256
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    sget-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";q=0.8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 175
    sget-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 177
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCacheControl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 155
    if-eqz p0, :cond_0

    .line 157
    :goto_0
    return-object p0

    .line 156
    :cond_0
    if-eqz p1, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 157
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getDate(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 129
    :goto_0
    return-wide v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    invoke-static {p0, p1}, Lcom/lzy/okhttputils/model/HttpHeaders;->formatMillisToGMT(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpiration(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 141
    :goto_0
    return-wide v0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getLastModified(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 147
    :try_start_0
    invoke-static {p0}, Lcom/lzy/okhttputils/model/HttpHeaders;->parseGMTToMillis(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 149
    :goto_0
    return-wide v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 188
    sget-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    :try_start_0
    const-string v0, "com.android.internal.R$string"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 192
    const-string v2, "web_user_agent"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 194
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v0, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/5.0 %sSafari/533.1"

    .line 202
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 203
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 205
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 206
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :goto_1
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_5

    .line 215
    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_1
    :goto_2
    const-string v1, "REL"

    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 229
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :cond_2
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 235
    const-string v3, " Build/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "Mobile "

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 239
    sget-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 241
    :goto_3
    return-object v0

    .line 195
    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    .line 210
    :cond_4
    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 223
    :cond_5
    const-string v1, "en"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 241
    :cond_6
    sget-object v0, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    goto :goto_3
.end method

.method private init()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    .line 74
    return-void
.end method

.method public static parseGMTToMillis(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 249
    :goto_0
    return-wide v0

    .line 246
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 247
    sget-object v1, Lcom/lzy/okhttputils/model/HttpHeaders;->GMT_TIME_ZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 248
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static setAcceptLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    sput-object p0, Lcom/lzy/okhttputils/model/HttpHeaders;->acceptLanguage:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    sput-object p0, Lcom/lzy/okhttputils/model/HttpHeaders;->userAgent:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 107
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/lzy/okhttputils/model/HttpHeaders;)V
    .locals 2

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 95
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final toJSONString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/Throwable;)V

    .line 122
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpHeaders{headersMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okhttputils/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
