.class public Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;
.super Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;
.source "CheckValidProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final GAME_PKGNAME:Ljava/lang/String;

.field private final KEY:Ljava/lang/String;

.field private final SDK_JAR_VERSION:Ljava/lang/String;

.field private final SDK_MD5:Ljava/lang/String;

.field private final SDK_PLUGIN_VERSION:Ljava/lang/String;

.field private final SIGN_VALUE:Ljava/lang/String;

.field private final VALID:Ljava/lang/String;

.field private mJarVer:I

.field private mPluginMD5:Ljava/lang/String;

.field private mPluginVer:I

.field private mSign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jarVer"    # I
    .param p3, "pluginVer"    # I
    .param p4, "pluginMd5"    # Ljava/lang/String;
    .param p5, "sign"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, "CHECK_PLUGIN_VALID"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->KEY:Ljava/lang/String;

    .line 23
    const-string v0, "SDK_JAR_VERSION"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->SDK_JAR_VERSION:Ljava/lang/String;

    .line 25
    const-string v0, "SDK_PLUGIN_VERSION"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->SDK_PLUGIN_VERSION:Ljava/lang/String;

    .line 27
    const-string v0, "GAME_PKGNAME"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->GAME_PKGNAME:Ljava/lang/String;

    .line 29
    const-string v0, "SDK_MD5"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->SDK_MD5:Ljava/lang/String;

    .line 31
    const-string v0, "VALID"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->VALID:Ljava/lang/String;

    .line 33
    const-string v0, "SIGN_VALUE"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->SIGN_VALUE:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mPluginVer:I

    .line 48
    iput-object p4, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mPluginMD5:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mJarVer:I

    .line 50
    iput-object p5, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mSign:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public createJsonData(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "SDK_JAR_VERSION"

    iget v1, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mJarVer:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string v0, "SDK_PLUGIN_VERSION"

    iget v1, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mPluginVer:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    const-string v0, "SDK_MD5"

    iget-object v1, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mPluginMD5:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v0, "GAME_PKGNAME"

    iget-object v1, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v0, "SIGN_VALUE"

    iget-object v1, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mSign:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    return-void
.end method

.method protected getkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "CHECK_PLUGIN_VALID"

    return-object v0
.end method

.method public onResponse(ILorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "code"    # I
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 81
    :try_start_0
    const-string v9, "DATA"

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "encryStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v9

    const-string v10, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDb/RJMGYKVMMvL3VaCtxFY9rRndo8K4/gu08mDj7+9vBjBXOO1T7D4CLtOgfuV+ubSUwYJIwRVmIHHq3YIOnPlDSTUyOttQ0XCQ6u2CBKzhZD1mx7EbHkXF/kFzn1vbeLgmpR1sMLZNKkPcblDKckIUvzqAbwgqdn/xPvBwMjqlQIDAQAB"

    invoke-static {v9, v10}, Lcom/anzhi/sdk/middle/util/RSACryption;->rsaDecrypt([BLjava/lang/String;)[B

    move-result-object v1

    .line 83
    .local v1, "decryByte":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 84
    .local v2, "decryStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "check plugin valid response: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "dataJson":Lorg/json/JSONObject;
    const-string v9, "SIGN_VALUE"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "sign":Ljava/lang/String;
    iget-object v9, p0, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->mSign:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 88
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 98
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "decryByte":[B
    .end local v2    # "decryStr":Ljava/lang/String;
    .end local v4    # "encryStr":Ljava/lang/String;
    .end local v5    # "sign":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 90
    .restart local v0    # "dataJson":Lorg/json/JSONObject;
    .restart local v1    # "decryByte":[B
    .restart local v2    # "decryStr":Ljava/lang/String;
    .restart local v4    # "encryStr":Ljava/lang/String;
    .restart local v5    # "sign":Ljava/lang/String;
    :cond_0
    const-string v9, "VALID"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    move v6, v7

    .line 91
    .local v6, "valid":Z
    :goto_1
    if-nez v6, :cond_2

    .line 92
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .end local v6    # "valid":Z
    :cond_1
    move v6, v8

    .line 90
    goto :goto_1

    .line 94
    .end local v0    # "dataJson":Lorg/json/JSONObject;
    .end local v1    # "decryByte":[B
    .end local v2    # "decryStr":Ljava/lang/String;
    .end local v4    # "encryStr":Ljava/lang/String;
    .end local v5    # "sign":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 96
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataJson":Lorg/json/JSONObject;
    .restart local v1    # "decryByte":[B
    .restart local v2    # "decryStr":Ljava/lang/String;
    .restart local v4    # "encryStr":Ljava/lang/String;
    .restart local v5    # "sign":Ljava/lang/String;
    .restart local v6    # "valid":Z
    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/anzhi/sdk/middle/protocol/CheckValidProtocol;->onResponse(ILorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
