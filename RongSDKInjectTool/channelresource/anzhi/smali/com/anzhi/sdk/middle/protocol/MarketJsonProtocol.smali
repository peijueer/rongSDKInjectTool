.class public abstract Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;
.super Ljava/lang/Object;
.source "MarketJsonProtocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final APP_PACKAGE:Ljava/lang/String; = "APP_PACKAGE"

.field public static final CODE:Ljava/lang/String; = "CODE"

.field public static final CODE_APP_GONE:I = 0x19a

.field public static final CODE_CANCELED:I = 0x0

.field public static final CODE_EXPECTATION_FAILED:I = 0x1a1

.field public static final CODE_HTTP_DENIED:I = 0x193

.field public static final CODE_HTTP_OK:I = 0xc8

.field public static final CODE_NONE:I = -0x1

.field public static final CODE_NON_AUTHORITATIVE_INFORMATION:I = 0xcb

.field public static final CODE_NOT_ACCEPTABLE:I = 0x196

.field public static final CODE_NOT_FOUND:I = 0x194

.field public static final CODE_NOT_MODIFIED:I = 0x130

.field public static final CODE_NO_CONTENT:I = 0xcc

.field public static final CODE_OK:I = 0xc8

.field public static final CODE_UNAUTHORIZED:I = 0x191

.field public static final DATA:Ljava/lang/String; = "DATA"

.field public static final ED:Ljava/lang/String; = "ED"

.field public static final FIRMWARE:Ljava/lang/String; = "FIRMWARE"

.field public static final KEY:Ljava/lang/String; = "KEY"

.field private static final MSG:Ljava/lang/String; = "MSG"

.field public static final PACKAGENAME:Ljava/lang/String; = "PACKAGE_NAME"

.field protected static final TAG:Ljava/lang/String; = "JsonProtocol"

.field public static final TIME:Ljava/lang/String; = "TIME"

.field public static final TIME_STAMP:Ljava/lang/String; = "TIME_STAMP"

.field public static final VERSIONCODE:Ljava/lang/String; = "VERSIONCODE"

.field public static final VR:Ljava/lang/String; = "VR"


# instance fields
.field public final ABI:Ljava/lang/String;

.field public final AC:Ljava/lang/String;

.field private APPKEY:Ljava/lang/String;

.field public final DEVICEID:Ljava/lang/String;

.field public final DI:Ljava/lang/String;

.field public final IMEI:Ljava/lang/String;

.field public final IMSI:Ljava/lang/String;

.field public final MAC:Ljava/lang/String;

.field public final MODEL_NO:Ljava/lang/String;

.field public final RESOLUTION:Ljava/lang/String;

.field private SID:Ljava/lang/String;

.field private final VER:I

.field private is_dev:I

.field protected mAppKey:Ljava/lang/String;

.field public mCode:I

.field private mCodeDesc:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field protected mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHttpEngine:Lcom/anzhi/sdk/middle/net/HttpEngine;

.field private mTime:Ljava/lang/String;

.field protected responsejson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 108
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "APPKEY"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->APPKEY:Ljava/lang/String;

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->VER:I

    .line 54
    const-string v0, "SID"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->SID:Ljava/lang/String;

    .line 55
    const-string v0, "RESOLUTION"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->RESOLUTION:Ljava/lang/String;

    .line 56
    const-string v0, "DEVICEID"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->DEVICEID:Ljava/lang/String;

    .line 57
    const-string v0, "MODEL_NO"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->MODEL_NO:Ljava/lang/String;

    .line 58
    const-string v0, "ABI"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->ABI:Ljava/lang/String;

    .line 59
    const-string v0, "IMSI"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->IMSI:Ljava/lang/String;

    .line 60
    const-string v0, "IMEI"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->IMEI:Ljava/lang/String;

    .line 61
    const-string v0, "MAC"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->MAC:Ljava/lang/String;

    .line 62
    const-string v0, "DI"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->DI:Ljava/lang/String;

    .line 63
    const-string v0, "AC"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->AC:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCodeDesc:Ljava/lang/String;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->is_dev:I

    .line 109
    iput-object p1, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mAppKey:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/anzhi/sdk/middle/net/HttpEngine;

    invoke-direct {v0, p1}, Lcom/anzhi/sdk/middle/net/HttpEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mHttpEngine:Lcom/anzhi/sdk/middle/net/HttpEngine;

    .line 112
    return-void
.end method

.method private getAC()Ljava/lang/String;
    .locals 3

    .prologue
    .line 283
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AC"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 287
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    iget-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    const-string v1, "anzhi_SDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isReLoging(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 270
    const v0, 0xc738

    if-lt p0, v0, :cond_0

    const v0, 0xc79c

    if-gt p0, v0, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServerError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 263
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x130

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_0

    .line 264
    const/16 v0, 0xcb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    .line 265
    const/16 v0, 0x196

    if-eq p0, v0, :cond_0

    .line 263
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAC(Ljava/lang/String;)V
    .locals 2
    .param p1, "ac"    # Ljava/lang/String;

    .prologue
    .line 277
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AC"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    iget-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mHttpEngine:Lcom/anzhi/sdk/middle/net/HttpEngine;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mHttpEngine:Lcom/anzhi/sdk/middle/net/HttpEngine;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/net/HttpEngine;->cancel()V

    .line 313
    :cond_0
    return-void
.end method

.method public abstract createJsonData(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public edString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->getEdString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "st":Ljava/lang/String;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/RSACryption;->rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected executePost(Lorg/json/JSONObject;)I
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 178
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/SysUtils;->isNetworkDisabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    iput-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCodeDesc:Ljava/lang/String;

    .line 180
    const/4 v3, -0x1

    .line 201
    :goto_0
    return v3

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mHttpEngine:Lcom/anzhi/sdk/middle/net/HttpEngine;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/anzhi/sdk/middle/net/HttpEngine;->executePost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "response":Ljava/lang/String;
    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mHttpEngine:Lcom/anzhi/sdk/middle/net/HttpEngine;

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/net/HttpEngine;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    const/4 v3, 0x0

    goto :goto_0

    .line 186
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "responsejson":Lorg/json/JSONObject;
    const-string v3, "CODE"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I

    .line 191
    const-string v3, "MSG"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCodeDesc:Ljava/lang/String;

    .line 196
    iget v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I

    invoke-virtual {p0, v3, v2}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->onResponse(ILorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mData:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v2    # "responsejson":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    iget v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    iget v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I

    return v0
.end method

.method public getCodeDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    iget-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCodeDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    iget-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getDeviceInfo()Lorg/json/JSONArray;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 244
    const-string v10, "ro.board.platform"

    invoke-static {v10}, Lcom/anzhi/sdk/middle/util/SysUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "cpuModel":Ljava/lang/String;
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getNumCores()I

    move-result v1

    .line 246
    .local v1, "cores":I
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getCpuFreq()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "freq":Ljava/lang/String;
    iget-object v10, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 248
    .local v3, "dm":Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    move v7, v8

    .line 249
    .local v7, "xlarge":Z
    :goto_0
    iget-object v10, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v10, 0xf

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    move v6, v8

    .line 250
    .local v6, "large":Z
    :goto_1
    if-nez v7, :cond_4

    if-nez v6, :cond_4

    move v5, v9

    .line 251
    .local v5, "isTablet":Z
    :goto_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 252
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    const-string v2, ""

    .end local v2    # "cpuModel":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 253
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 254
    if-nez v4, :cond_1

    const-string v4, ""

    .end local v4    # "freq":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 255
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getRAM()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 256
    iget v8, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 257
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 258
    return-object v0

    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v5    # "isTablet":Z
    .end local v6    # "large":Z
    .end local v7    # "xlarge":Z
    .restart local v2    # "cpuModel":Ljava/lang/String;
    .restart local v4    # "freq":Ljava/lang/String;
    :cond_2
    move v7, v9

    .line 248
    goto :goto_0

    .restart local v7    # "xlarge":Z
    :cond_3
    move v6, v9

    .line 249
    goto :goto_1

    .restart local v6    # "large":Z
    :cond_4
    move v5, v8

    .line 250
    goto :goto_2
.end method

.method protected getEdString()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 216
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "RESOLUTION"

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/SysUtils;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v2, "IMEI"

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/SysUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v2, "DEVICEID"

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/SysUtils;->getMarketDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v3, "MODEL_NO"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v2, "ABI"

    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getABI()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 221
    const-string v2, "APP_PACKAGE"

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v2, "IMSI"

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/SysUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v2, "MAC"

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/SysUtils;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v2, "DI"

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->getDeviceInfo()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v2, "VERSION"

    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v2, "VERSIONCODE"

    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getVersion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v2, "FIRMWARE"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 228
    const-string v2, "TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 229
    const-string v2, "IS_DEV"

    iget v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->is_dev:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ED:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    :goto_1
    return-object v2

    .line 219
    :cond_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 236
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    iget-object v0, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getkey()Ljava/lang/String;
.end method

.method public abstract onResponse(ILorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public request()I
    .locals 8

    .prologue
    .line 150
    .local p0, "this":Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;, "Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol<TT;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "KEY"

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->getkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v2, "ED"

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->edString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v2, "AC"

    invoke-direct {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->getAC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    iget-object v2, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->APPKEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "PACKAGE_NAME"

    iget-object v3, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string v2, "TIME_STAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    const-string v2, "VR"

    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->getVersion()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {p0, v1}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->createJsonData(Lorg/json/JSONObject;)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->executePost(Lorg/json/JSONObject;)I

    move-result v2

    iput v2, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I

    .line 162
    iget v2, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    .line 166
    iget v2, p0, Lcom/anzhi/sdk/middle/protocol/MarketJsonProtocol;->mCode:I

    goto :goto_0
.end method
