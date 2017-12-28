.class public Lcom/iqiyigame/plugin/utils/GameConfigs;
.super Ljava/lang/Object;
.source "GameConfigs.java"


# static fields
.field public static GAMEID:Ljava/lang/String; = null

.field public static GAME_NAME:Ljava/lang/String; = null

.field public static GAME_TYPE:Ljava/lang/String; = null

.field public static final LOG:Z = false

.field public static OP_MODEL:Ljava/lang/String; = null

.field public static PLUGIN_FILE_NAME:Ljava/lang/String; = null

.field public static QIPU_ID:Ljava/lang/String; = null

.field public static SINGLE:Z = false

.field public static SINGLE_TYPE:I = 0x0

.field public static final VERSION:Ljava/lang/String; = "5.9.0"

.field public static sPluginClassloader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAMEID:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->QIPU_ID:Ljava/lang/String;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_NAME:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->GAME_TYPE:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->OP_MODEL:Ljava/lang/String;

    .line 52
    sput-boolean v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE:Z

    .line 53
    sput v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE_TYPE:I

    .line 57
    const-class v0, Lcom/iqiyigame/plugin/utils/GameConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sget-object v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    if-ne v0, v1, :cond_0

    .line 75
    const-string v0, "\u521d\u59cb\u5316\u5931\u6557"

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25"

    goto :goto_0
.end method

.method public static getLoadingString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sget-object v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    if-ne v0, v1, :cond_0

    .line 82
    const-string v0, "\u6b63\u5728\u52a0\u8f09\u8cc7\u6e90"

    .line 84
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u8d44\u6e90"

    goto :goto_0
.end method

.method public static getMD5MacAdress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 170
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 171
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "macAddress":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    invoke-static {v0}, Lcom/iqiyigame/plugin/utils/GameConfigs;->stringToMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 172
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getPhoneImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 164
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "imei":Ljava/lang/String;
    return-object v0
.end method

.method public static getPluginApkPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GamePluginDownload;->getPluginPath()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/iqiyigame/plugin/utils/GameConfigs;->PLUGIN_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "5.9.0"

    return-object v0
.end method

.method public static getQiYiID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {p0}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getPhoneImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {p0}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getPhoneImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getMD5MacAdress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-static {p0}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getMD5MacAdress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "5.9.0"

    .line 134
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "soName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 68
    const-string v1, "dynamic_load_configs"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getSpaceErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sget-object v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    if-ne v0, v1, :cond_0

    .line 89
    const-string v0, "SD\u5361\u5b58\u5132\u7a7a\u9593\u4e0d\u8db3"

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SD\u5361\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    goto :goto_0
.end method

.method public static getUnPermissionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sget-object v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->Taiwan:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    if-ne v0, v1, :cond_0

    .line 96
    const-string v0, "\u53d6\u6d88\u4e86\u6388\u6b0a"

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u53d6\u6d88\u4e86\u6388\u6743"

    goto :goto_0
.end method

.method public static getUpdateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "gameId"    # Ljava/lang/String;
    .param p1, "sdkVersion"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # Ljava/lang/String;

    .prologue
    .line 102
    sget-boolean v0, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE:Z

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://mobile.game.iqiyi.com/api_sidebar_sdk/getSinglePlugin?game_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdk_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/iqiyigame/plugin/utils/GameConfigs;->SINGLE_TYPE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 107
    :cond_0
    sget-boolean v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://qc.mobile.game.iqiyi.com/api_sidebar_sdk/getPlugin?game_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://mobile.game.iqiyi.com/api_sidebar_sdk/getPlugin?game_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdk_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUrlWithParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 202
    const-string v2, "UTF-8"

    .line 203
    .local v2, "paramsEncoding":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "encodedParams":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 206
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 207
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 217
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoding not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 221
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 231
    :cond_2
    :goto_1
    return-object p0

    .line 226
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "soName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 61
    const-string v1, "dynamic_load_configs"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method public static stringToMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 179
    :try_start_0
    const-string v7, "MD5"

    .line 180
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 181
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 182
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 183
    .local v3, "messageDigest":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 185
    .local v5, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_1

    .line 186
    aget-byte v7, v3, v2

    and-int/lit16 v6, v7, 0xff

    .line 187
    .local v6, "temp":I
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "s":Ljava/lang/String;
    const/16 v7, 0xf

    if-gt v6, v7, :cond_0

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 191
    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v4    # "s":Ljava/lang/String;
    .end local v6    # "temp":I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 198
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "i":I
    .end local v3    # "messageDigest":[B
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    return-object v7

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 198
    const-string v7, ""

    goto :goto_1
.end method
