.class public Lcom/iqiyigame/plugin/utils/PingBackController;
.super Ljava/lang/Object;
.source "PingBackController.java"


# static fields
.field public static final PB_FAIL_TYPE_NETWORK:Ljava/lang/String; = "2"

.field public static final PB_FAIL_TYPE_UPDATE_NON_NETWORK:Ljava/lang/String; = "6"

.field private static final PINGBACK_URL:Ljava/lang/String; = "http://msg.71.am/v5/yx/yxfc"

.field public static pingBackController:Lcom/iqiyigame/plugin/utils/PingBackController;


# instance fields
.field private PB_FORCE_UPDATE:Ljava/lang/String;

.field private PB_NON_FORCE_UPDATE:Ljava/lang/String;

.field private PB_YX_FUNC_INIT:Ljava/lang/String;

.field private PB_YX_FUNC_UPDATE:Ljava/lang/String;

.field private PB_YX_FUNC_UPDATE_FAILED:Ljava/lang/String;

.field private PB_YX_FUNC_UPDATE_SUCCESS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "2"

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_INIT:Ljava/lang/String;

    .line 33
    const-string v0, "29"

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_UPDATE:Ljava/lang/String;

    .line 34
    const-string v0, "30"

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_UPDATE_SUCCESS:Ljava/lang/String;

    .line 35
    const-string v0, "31"

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_UPDATE_FAILED:Ljava/lang/String;

    .line 37
    const-string v0, "1"

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_FORCE_UPDATE:Ljava/lang/String;

    .line 38
    const-string v0, "2"

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_NON_FORCE_UPDATE:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iqiyigame/plugin/utils/PingBackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iqiyigame/plugin/utils/PingBackController;->initGameConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/iqiyigame/plugin/utils/PingBackController;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iqiyigame/plugin/utils/PingBackController;->putGameInfoParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iqiyigame/plugin/utils/PingBackController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iqiyigame/plugin/utils/PingBackController;->urlConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBasicParams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "yx_func"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getQiYiID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "qiyi_id":Ljava/lang/String;
    sget-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    .line 88
    .local v0, "game_id2":Ljava/lang/String;
    invoke-direct {p0}, Lcom/iqiyigame/plugin/utils/PingBackController;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "sdk_ver":Ljava/lang/String;
    const-string v4, "devicetype"

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameUtils;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iqiyigame/plugin/utils/GameUtils;->stringToEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "sdk_ver"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v4, "sdk_mver"

    const-string v5, "5.9.0"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v4, "qd_source"

    invoke-static {p1}, Lcom/iqiyigame/plugin/utils/GameUtils;->getSourceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v4, "device_ver"

    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameUtils;->getOSVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v4, "terminal"

    const-string v5, "1"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v4, "area"

    const-string v5, "1"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v4, "yx_func"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v4, "game_id2"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v4, "qiyi_id"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v4, "qy_gid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object v1
.end method

.method public static getInstance()Lcom/iqiyigame/plugin/utils/PingBackController;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/iqiyigame/plugin/utils/PingBackController;->pingBackController:Lcom/iqiyigame/plugin/utils/PingBackController;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/iqiyigame/plugin/utils/PingBackController;

    invoke-direct {v0}, Lcom/iqiyigame/plugin/utils/PingBackController;-><init>()V

    sput-object v0, Lcom/iqiyigame/plugin/utils/PingBackController;->pingBackController:Lcom/iqiyigame/plugin/utils/PingBackController;

    .line 44
    :cond_0
    sget-object v0, Lcom/iqiyigame/plugin/utils/PingBackController;->pingBackController:Lcom/iqiyigame/plugin/utils/PingBackController;

    return-object v0
.end method

.method private getSDKVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    .line 191
    .local v0, "sdk_ver":Ljava/lang/String;
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .end local v0    # "sdk_ver":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private httpRequest(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://gameapi.game.iqiyi.com/production/game.info?type=1&id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "qipuUrl":Ljava/lang/String;
    const-string v2, "http://msg.71.am/v5/yx/yxfc"

    .line 106
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/iqiyigame/plugin/utils/PingBackController$1;

    invoke-direct {v0, p0, p1}, Lcom/iqiyigame/plugin/utils/PingBackController$1;-><init>(Lcom/iqiyigame/plugin/utils/PingBackController;Ljava/util/Map;)V

    .line 121
    .local v0, "pingBackTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method private initGameConfig(Ljava/lang/String;)V
    .locals 6
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_NAME:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->QIPU_ID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_TYPE:Ljava/lang/String;

    .line 165
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->OP_MODEL:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0, p1}, Lcom/iqiyigame/plugin/utils/PingBackController;->urlConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "ret"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "ret":Ljava/lang/String;
    const-string v5, "200"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 178
    const-string v5, "game_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_NAME:Ljava/lang/String;

    .line 179
    const-string v5, "qipu_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->QIPU_ID:Ljava/lang/String;

    .line 180
    const-string v5, "game_type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_TYPE:Ljava/lang/String;

    .line 181
    const-string v5, "op_mode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/iqiyigame/plugin/utils/GameConfigs;->OP_MODEL:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private inputStreamToJSONObject(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 148
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 149
    .local v4, "len":I
    const-string v3, ""

    .line 151
    .local v3, "jsonString":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 152
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v3

    .line 154
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 156
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private putGameInfoParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "game_name"

    sget-object v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_NAME:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "game_type"

    sget-object v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_TYPE:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "op_way"

    sget-object v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->OP_MODEL:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "game_id"

    sget-object v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->QIPU_ID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object p1
.end method

.method private urlConnection(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 128
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 129
    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 130
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 132
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 133
    .local v0, "code":I
    const/16 v5, 0xc8

    if-ne v5, v0, :cond_0

    .line 134
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 135
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/iqiyigame/plugin/utils/PingBackController;->inputStreamToJSONObject(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 142
    .end local v0    # "code":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    return-object v5

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 142
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public beginInitPB(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_INIT:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/iqiyigame/plugin/utils/PingBackController;->getBasicParams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 49
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/iqiyigame/plugin/utils/PingBackController;->httpRequest(Ljava/util/Map;)V

    .line 50
    return-void
.end method

.method public updateFailedPB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "update_type"    # Ljava/lang/String;
    .param p3, "fail_type"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_FORCE_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object p2, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_NON_FORCE_UPDATE:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_UPDATE_FAILED:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/iqiyigame/plugin/utils/PingBackController;->getBasicParams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 78
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "update_cont"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "update_type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "fail_type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0, v0}, Lcom/iqiyigame/plugin/utils/PingBackController;->httpRequest(Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public updatePB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "update_type"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_FORCE_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object p2, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_NON_FORCE_UPDATE:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_UPDATE:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/iqiyigame/plugin/utils/PingBackController;->getBasicParams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 57
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "update_cont"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "update_type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-direct {p0, v0}, Lcom/iqiyigame/plugin/utils/PingBackController;->httpRequest(Ljava/util/Map;)V

    .line 60
    return-void
.end method

.method public updateSuccessPB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "update_type"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_FORCE_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object p2, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_NON_FORCE_UPDATE:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/PingBackController;->PB_YX_FUNC_UPDATE_SUCCESS:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/iqiyigame/plugin/utils/PingBackController;->getBasicParams(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 67
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "update_cont"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "update_type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0, v0}, Lcom/iqiyigame/plugin/utils/PingBackController;->httpRequest(Ljava/util/Map;)V

    .line 70
    return-void
.end method
