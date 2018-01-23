.class public Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;
.super Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;
.source "PluginUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol",
        "<",
        "Lcom/anzhi/sdk/middle/update/UpdateInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final PUB_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDb/RJMGYKVMMvL3VaCtxFY9rRndo8K4/gu08mDj7+9vBjBXOO1T7D4CLtOgfuV+ubSUwYJIwRVmIHHq3YIOnPlDSTUyOttQ0XCQ6u2CBKzhZD1mx7EbHkXF/kFzn1vbeLgmpR1sMLZNKkPcblDKckIUvzqAbwgqdn/xPvBwMjqlQIDAQAB"


# instance fields
.field private final ALLOW_DELTA_UPDATE:Ljava/lang/String;

.field private final SDK_JAR_VERSION:Ljava/lang/String;

.field private final SDK_MD5:Ljava/lang/String;

.field private final SDK_PLUGIN_VERSION:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private allowDeltaUpdate:Z

.field private mJarVersionCode:I

.field private mTimestamp:J

.field private md5:Ljava/lang/String;

.field private pluginVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;ZJ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jarVc"    # I
    .param p3, "pluginVersion"    # I
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "allowDelta"    # Z
    .param p6, "timestamp"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "SDK_JAR_VERSION"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->SDK_JAR_VERSION:Ljava/lang/String;

    .line 27
    const-string v0, "SDK_PLUGIN_VERSION"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->SDK_PLUGIN_VERSION:Ljava/lang/String;

    .line 29
    const-string v0, "SDK_MD5"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->SDK_MD5:Ljava/lang/String;

    .line 31
    const-string v0, "ALLOW_DELTA_UPDATE"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->ALLOW_DELTA_UPDATE:Ljava/lang/String;

    .line 34
    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->TIMESTAMP:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->pluginVersion:I

    .line 45
    iput-object p4, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->md5:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->mJarVersionCode:I

    .line 47
    iput-boolean p5, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->allowDeltaUpdate:Z

    .line 48
    iput-wide p6, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->mTimestamp:J

    .line 49
    return-void
.end method


# virtual methods
.method public createJsonData(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 54
    :try_start_0
    const-string v1, "SDK_JAR_VERSION"

    iget v2, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->mJarVersionCode:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v1, "SDK_PLUGIN_VERSION"

    iget v2, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->pluginVersion:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v1, "SDK_MD5"

    iget-object v2, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->md5:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v1, "ALLOW_DELTA_UPDATE"

    iget-boolean v2, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->allowDeltaUpdate:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 58
    const-string v1, "TIMESTAMP"

    iget-wide v2, p0, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->mTimestamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "SDK_PLUGIN_UPDATE"

    return-object v0
.end method

.method public onResponse(ILorg/json/JSONObject;)Lcom/anzhi/sdk/middle/update/UpdateInfo;
    .locals 12
    .param p1, "code"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 73
    const/16 v10, 0xc8

    if-eq p1, v10, :cond_1

    move-object v5, v7

    .line 105
    :cond_0
    :goto_0
    return-object v5

    .line 77
    :cond_1
    :try_start_0
    const-string v10, "DATA"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "encryStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v10

    const-string v11, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDb/RJMGYKVMMvL3VaCtxFY9rRndo8K4/gu08mDj7+9vBjBXOO1T7D4CLtOgfuV+ubSUwYJIwRVmIHHq3YIOnPlDSTUyOttQ0XCQ6u2CBKzhZD1mx7EbHkXF/kFzn1vbeLgmpR1sMLZNKkPcblDKckIUvzqAbwgqdn/xPvBwMjqlQIDAQAB"

    invoke-static {v10, v11}, Lcom/anzhi/sdk/middle/util/RSACryption;->rsaDecrypt([BLjava/lang/String;)[B

    move-result-object v1

    .line 79
    .local v1, "decryByte":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 80
    .local v2, "decryStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "plugin update: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 81
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v5, Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-direct {v5}, Lcom/anzhi/sdk/middle/update/UpdateInfo;-><init>()V

    .line 83
    .local v5, "info":Lcom/anzhi/sdk/middle/update/UpdateInfo;
    const-string v10, "com.anzhi.usercenter.plugin"

    invoke-virtual {v5, v10}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setPkgName(Ljava/lang/String;)V

    .line 84
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setVersionName(Ljava/lang/String;)V

    .line 85
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setVersionCode(I)V

    .line 86
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 87
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    if-ne v10, v9, :cond_3

    move v10, v9

    :goto_1
    invoke-virtual {v5, v10}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setIsDeltaUpdate(Z)V

    .line 88
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setDeltaUrl(Ljava/lang/String;)V

    .line 89
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setDeltaSize(J)V

    .line 90
    const/4 v10, 0x6

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setSize(J)V

    .line 91
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setMD5(Ljava/lang/String;)V

    .line 92
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    if-ne v10, v9, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {v5, v8}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setForceUpdate(Z)V

    .line 93
    const/16 v8, 0xa

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->setClientTimestamp(J)V

    .line 94
    const/16 v8, 0xb

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONArray;->optInt(II)I

    move-result v6

    .line 95
    .local v6, "supportVer":I
    if-eq v9, v6, :cond_0

    .line 96
    const-string v8, "------------------------------"

    invoke-static {v8}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 97
    const-string v8, "\u63d2\u4ef6\u7684\u66f4\u65b0\u5305\u4e0e\u5f53\u524djar\u4f7f\u7528\u7684\u517c\u5bb9\u7248\u672c\u53f7\u4e0d\u4e00\u81f4\uff01\uff01\uff01"

    invoke-static {v8}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 98
    const-string v8, "------------------------------"

    invoke-static {v8}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 99
    goto/16 :goto_0

    .end local v6    # "supportVer":I
    :cond_3
    move v10, v8

    .line 87
    goto :goto_1

    .line 102
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "decryByte":[B
    .end local v2    # "decryStr":Ljava/lang/String;
    .end local v4    # "encryStr":Ljava/lang/String;
    .end local v5    # "info":Lcom/anzhi/sdk/middle/update/UpdateInfo;
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    move-object v5, v7

    .line 105
    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(ILorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/anzhi/sdk/middle/protocol/PluginUpdateProtocol;->onResponse(ILorg/json/JSONObject;)Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-result-object v0

    return-object v0
.end method
