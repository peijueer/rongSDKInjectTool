.class public Lcom/anzhi/sdk/middle/net/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anzhi/sdk/middle/net/Connectivity$NetType;
    }
.end annotation


# static fields
.field public static final CM_MNC_1:Ljava/lang/String; = "00"

.field public static final CM_MNC_2:Ljava/lang/String; = "02"

.field public static final CM_MNC_7:Ljava/lang/String; = "07"

.field public static final CODE_CM_UNI:I = 0x1

.field public static final CODE_CT:I = 0x2

.field public static final CODE_NONE:I = 0x0

.field public static final CT_MNC:Ljava/lang/String; = "03"

.field private static final PROXY_CM_UNI:Ljava/lang/String; = "10.0.0.172"

.field private static final PROXY_CT:Ljava/lang/String; = "10.0.0.200"

.field public static final SIMPLE_NETTYPE_NET:Ljava/lang/String; = "net"

.field public static final SIMPLE_NETTYPE_WAP:Ljava/lang/String; = "wap"

.field public static final SIMPLE_NETTYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final UNI_MNC:Ljava/lang/String; = "01"

.field private static sInstance:Lcom/anzhi/sdk/middle/net/Connectivity;

.field private static sWifiManager:Landroid/net/wifi/WifiManager;


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/Connectivity;->mContext:Landroid/content/Context;

    .line 91
    :try_start_0
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/anzhi/sdk/middle/net/Connectivity;->sWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static convertProxy(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "proxy"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    .line 337
    move-object v3, p0

    .line 339
    .local v3, "proxyIP":Ljava/lang/String;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_0

    .line 340
    const/4 v5, 0x4

    new-array v2, v5, [I

    .line 341
    .local v2, "mSeg":[I
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "strSeg":[Ljava/lang/String;
    array-length v5, v4

    if-ne v7, v5, :cond_0

    .line 343
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_1

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    const/4 v6, 0x2

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    .end local v1    # "i":I
    .end local v2    # "mSeg":[I
    .end local v4    # "strSeg":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 344
    .restart local v1    # "i":I
    .restart local v2    # "mSeg":[I
    .restart local v4    # "strSeg":[Ljava/lang/String;
    :cond_1
    aget-object v5, v4, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
    .end local v2    # "mSeg":[I
    .end local v4    # "strSeg":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Proxy IP FormatException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 352
    move-object v3, p0

    goto :goto_1
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getConnManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 126
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 128
    :goto_0
    return-object v2

    .line 126
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "ignored":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private getConnManager()Landroid/net/ConnectivityManager;
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/anzhi/sdk/middle/net/Connectivity;->mConnManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/anzhi/sdk/middle/net/Connectivity;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 117
    check-cast v0, Landroid/net/ConnectivityManager;

    .end local v0    # "service":Ljava/lang/Object;
    iput-object v0, p0, Lcom/anzhi/sdk/middle/net/Connectivity;->mConnManager:Landroid/net/ConnectivityManager;

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/anzhi/sdk/middle/net/Connectivity;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/Connectivity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity;->sInstance:Lcom/anzhi/sdk/middle/net/Connectivity;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/anzhi/sdk/middle/net/Connectivity;

    invoke-direct {v1, p0}, Lcom/anzhi/sdk/middle/net/Connectivity;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anzhi/sdk/middle/net/Connectivity;->sInstance:Lcom/anzhi/sdk/middle/net/Connectivity;

    .line 103
    :cond_0
    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity;->sWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 105
    :try_start_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/anzhi/sdk/middle/net/Connectivity;->sWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_1
    :goto_0
    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity;->sInstance:Lcom/anzhi/sdk/middle/net/Connectivity;

    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static makeApnParam(Landroid/database/Cursor;)Lcom/anzhi/sdk/middle/net/ApnInfo;
    .locals 10
    .param p0, "cur"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    const/4 v9, -0x1

    .line 256
    if-nez p0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 265
    :goto_1
    new-instance v1, Lcom/anzhi/sdk/middle/net/ApnInfo;

    invoke-direct {v1}, Lcom/anzhi/sdk/middle/net/ApnInfo;-><init>()V

    .line 267
    .local v1, "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    const/4 v6, 0x0

    .line 268
    .local v6, "proxy":Ljava/lang/String;
    const/4 v5, -0x1

    .line 269
    .local v5, "port":I
    const/4 v0, 0x0

    .line 270
    .local v0, "apn":Ljava/lang/String;
    const/4 v4, 0x0

    .line 272
    .local v4, "mnc":Ljava/lang/String;
    const-string v7, "proxy"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 273
    .local v2, "colId":I
    if-eq v9, v2, :cond_3

    .line 274
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-static {v6}, Lcom/anzhi/sdk/middle/net/Connectivity;->convertProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual {v1, v6}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setProxy(Ljava/lang/String;)V

    .line 280
    :goto_2
    const-string v7, "apn"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 281
    if-eq v9, v2, :cond_4

    .line 282
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-virtual {v1, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setApn(Ljava/lang/String;)V

    .line 288
    :goto_3
    const-string v7, "mnc"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 289
    if-eq v9, v2, :cond_6

    .line 290
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    const-string v7, "mcc"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 292
    if-eq v9, v2, :cond_5

    .line 293
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "mcc":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setMcc(Ljava/lang/String;)V

    .line 302
    .end local v3    # "mcc":Ljava/lang/String;
    :goto_4
    if-eqz v6, :cond_b

    .line 303
    const-string v7, "port"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 304
    if-eq v9, v2, :cond_7

    .line 305
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 306
    invoke-virtual {v1, v5}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setPort(I)V

    .line 311
    :goto_5
    const-string v7, "10.0.0.172"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 312
    invoke-virtual {v1, v4}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setMnc(Ljava/lang/String;)V

    .line 313
    if-eqz v4, :cond_0

    .line 314
    const-string v7, "00"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "02"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "07"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 315
    :cond_2
    sget-object v7, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CMWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v1, v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    goto/16 :goto_0

    .line 278
    :cond_3
    const-string v7, "\"proxy\" column is not found in cursor!"

    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 285
    :cond_4
    const-string v7, "\"apn\" column is not found in cursor!"

    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 296
    :cond_5
    const-string v7, "\"mcc\" column is not found in cursor!"

    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 299
    :cond_6
    const-string v7, "\"mnc\" column is not found in cursor!"

    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_4

    .line 308
    :cond_7
    const-string v7, "\"port\" column is not found in cursor!"

    invoke-static {v7}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 317
    :cond_8
    sget-object v7, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->UNIWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v1, v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    goto/16 :goto_0

    .line 320
    :cond_9
    const-string v7, "10.0.0.200"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 321
    sget-object v7, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CTWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v1, v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    goto/16 :goto_0

    .line 324
    :cond_a
    sget-object v7, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NET:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v1, v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setExtraNetInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_b
    sget-object v7, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NET:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v1, v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 330
    invoke-virtual {v1, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setExtraNetInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    .end local v2    # "colId":I
    .end local v4    # "mnc":Ljava/lang/String;
    .end local v5    # "port":I
    .end local v6    # "proxy":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method


# virtual methods
.method public getCurrentApnInfo()Lcom/anzhi/sdk/middle/net/ApnInfo;
    .locals 15

    .prologue
    const/4 v2, 0x1

    .line 165
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 166
    .local v12, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v12, :cond_9

    .line 167
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 169
    new-instance v7, Lcom/anzhi/sdk/middle/net/ApnInfo;

    invoke-direct {v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;-><init>()V

    .line 170
    .local v7, "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->WIFI:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 231
    :cond_0
    :goto_0
    return-object v7

    .line 171
    .end local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    :cond_1
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_8

    .line 173
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "apn":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v11

    .line 175
    .local v11, "host":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v13

    .line 176
    .local v13, "port":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Default proxy "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", port "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->i(Ljava/lang/String;)V

    .line 178
    const/4 v8, 0x0

    .line 179
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v0, "content://telephony/carriers/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_2

    .line 182
    const-string v2, "apn=\'%s\' AND %s "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v5, 0x1

    .line 183
    if-nez v11, :cond_4

    const-string v0, "(proxy IS NULL OR proxy = \'\')"

    :goto_1
    aput-object v0, v4, v5

    .line 182
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/Connectivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 189
    .end local v3    # "where":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {v8}, Lcom/anzhi/sdk/middle/net/Connectivity;->makeApnParam(Landroid/database/Cursor;)Lcom/anzhi/sdk/middle/net/ApnInfo;

    move-result-object v7

    .line 191
    .restart local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    if-nez v7, :cond_3

    .line 192
    new-instance v7, Lcom/anzhi/sdk/middle/net/ApnInfo;

    .end local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    invoke-direct {v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;-><init>()V

    .line 193
    .restart local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NET:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 196
    invoke-virtual {v7, v6}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setExtraNetInfo(Ljava/lang/String;)V

    .line 214
    :cond_3
    :goto_3
    if-eqz v8, :cond_0

    .line 215
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v9

    .line 218
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    .end local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "proxy =\'"

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "\'"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_1

    .line 186
    :catch_1
    move-exception v10

    .line 187
    .local v10, "e1":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 197
    .end local v10    # "e1":Ljava/lang/Exception;
    .restart local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    :cond_5
    const-string v0, "10.0.0.172"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CMWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 199
    invoke-virtual {v7, v11}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setProxy(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v7, v13}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setPort(I)V

    goto :goto_3

    .line 201
    :cond_6
    const-string v0, "10.0.0.200"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CTWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 203
    invoke-virtual {v7, v11}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setProxy(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v7, v13}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setPort(I)V

    goto :goto_3

    .line 207
    :cond_7
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NET:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 208
    invoke-virtual {v7, v6}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setExtraNetInfo(Ljava/lang/String;)V

    goto :goto_3

    .line 222
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "apn":Ljava/lang/String;
    .end local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "host":Ljava/lang/String;
    .end local v13    # "port":I
    :cond_8
    new-instance v7, Lcom/anzhi/sdk/middle/net/ApnInfo;

    invoke-direct {v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;-><init>()V

    .line 223
    .restart local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->OTHER:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setExtraNetInfo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    :cond_9
    new-instance v7, Lcom/anzhi/sdk/middle/net/ApnInfo;

    invoke-direct {v7}, Lcom/anzhi/sdk/middle/net/ApnInfo;-><init>()V

    .line 229
    .restart local v7    # "apnObj":Lcom/anzhi/sdk/middle/net/ApnInfo;
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NONE:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v7, v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V

    goto/16 :goto_0
.end method

.method public getCurrentNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getCurrentApnInfo()Lcom/anzhi/sdk/middle/net/ApnInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentNetTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getCurrentApnInfo()Lcom/anzhi/sdk/middle/net/ApnInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/net/ApnInfo;->getExtraNetInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMobileAvailable()Z
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 134
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMobileConnected()Z
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 139
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 147
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    sget-object v2, Lcom/anzhi/sdk/middle/net/Connectivity;->sWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    .line 148
    sget-object v2, Lcom/anzhi/sdk/middle/net/Connectivity;->sWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 155
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/net/Connectivity;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 156
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    sget-object v2, Lcom/anzhi/sdk/middle/net/Connectivity;->sWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/anzhi/sdk/middle/net/Connectivity;->sWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
