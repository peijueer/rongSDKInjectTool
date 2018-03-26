.class public Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;
.super Ljava/lang/Object;
.source "OSInfoManagerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "obj"    # Ljava/io/Closeable;

    .prologue
    .line 368
    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAvailMemory(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string v2, "activity"

    .line 103
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 104
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 105
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 107
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCpuType(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const-string v4, "cpu_key"

    .line 301
    .local v4, "cpu_key":Ljava/lang/String;
    const-string v9, "mzw_spf"

    const-string v10, ""

    invoke-static {p0, v9, v4, v10}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "cpuType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v3, v2

    .line 330
    .end local v2    # "cpuType":Ljava/lang/String;
    .local v3, "cpuType":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 308
    .end local v3    # "cpuType":Ljava/lang/String;
    .restart local v2    # "cpuType":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 309
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 311
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "getprop ro.board.platform"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 312
    .local v7, "p":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 313
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, "result":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_2

    .line 316
    move-object v2, v8

    .line 323
    :goto_1
    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 324
    invoke-static {v6}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 326
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 327
    const-string v9, "mzw_spf"

    invoke-static {p0, v9, v4, v2}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v3, v2

    .line 330
    .end local v2    # "cpuType":Ljava/lang/String;
    .restart local v3    # "cpuType":Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "cpuType":Ljava/lang/String;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "cpuType":Ljava/lang/String;
    .restart local v7    # "p":Ljava/lang/Process;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getMtkType()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 320
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 321
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    invoke-static {v0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 324
    invoke-static {v6}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    .line 323
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 324
    invoke-static {v6}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    throw v9

    .line 323
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 320
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getCurrentNetType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 42
    const-string v3, ""

    .line 43
    .local v3, "type":Ljava/lang/String;
    const-string v4, "connectivity"

    .line 44
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 45
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 46
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 47
    const-string v3, "null"

    .line 66
    :cond_0
    :goto_0
    return-object v3

    .line 48
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 49
    const-string v3, "wifi"

    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 52
    .local v2, "subType":I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 55
    :cond_3
    const-string v3, "2g"

    goto :goto_0

    .line 56
    :cond_4
    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    const/16 v4, 0xc

    if-ne v2, v4, :cond_6

    .line 61
    :cond_5
    const-string v3, "3g"

    goto :goto_0

    .line 62
    :cond_6
    const/16 v4, 0xd

    if-ne v2, v4, :cond_0

    .line 63
    const-string v3, "4g"

    goto :goto_0
.end method

.method public static getDensity(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 189
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getWidthAndHeightAndDensityArray(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getWidthAndHeightAndDensityArray(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const-string v6, "phone"

    .line 200
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 201
    .local v2, "mtm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "imei":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "phoneNum":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 205
    .local v4, "phoneModel":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 206
    .local v3, "phoneBrand":Ljava/lang/String;
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    return-object v6
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getMacAddressSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "macSavePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "macContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 269
    const-string v4, "wifi"

    .line 270
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 271
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 272
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v1, v0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-object v0
.end method

.method private static getMtkType()Ljava/lang/String;
    .locals 8

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 337
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "getprop ro.mediatek.platform"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 338
    .local v4, "p":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 339
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "result":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_2

    .line 347
    if-eqz v1, :cond_0

    .line 349
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 355
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 357
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 362
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 350
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 351
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v1, :cond_3

    .line 349
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 355
    :cond_3
    :goto_2
    if-eqz v3, :cond_8

    .line 357
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v1

    .line 362
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    const-string v5, ""

    goto :goto_1

    .line 350
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 351
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 358
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v0, v1

    .line 359
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 344
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 347
    if-eqz v0, :cond_5

    .line 349
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 355
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    if-eqz v3, :cond_4

    .line 357
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 358
    :catch_4
    move-exception v6

    goto :goto_3

    .line 350
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 351
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 347
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v0, :cond_6

    .line 349
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 355
    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 357
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 359
    :cond_7
    :goto_8
    throw v6

    .line 350
    :catch_6
    move-exception v2

    .line 351
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 358
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_7
    move-exception v6

    goto :goto_1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v7

    goto :goto_8

    .line 347
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 344
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_8
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static getPhoneBrand(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getPhoneIp()Ljava/lang/String;
    .locals 7

    .prologue
    .line 75
    const-string v5, ""

    .line 78
    .local v5, "ipInfo":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 81
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 83
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 85
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 89
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 92
    :cond_2
    return-object v5
.end method

.method public static getPhoneModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getPhoneNum(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const-string v6, "/proc/meminfo"

    .line 120
    .local v6, "memoryFilePath":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 122
    .local v2, "initial_memory":J
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 123
    .local v5, "localFileReader":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v4, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 125
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "memoryInfo":Ljava/lang/String;
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "arrayOfInfo":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    int-to-long v2, v8

    .line 128
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .end local v0    # "arrayOfInfo":[Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "memoryInfo":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static getUniqueID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->getUniqueIDSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "uniqueIDsavePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "uniqueIDcontent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v1, v0}, Lcom/muzhiwan/sdk/common/utils/FileManagerUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    :cond_0
    return-object v0
.end method

.method public static getWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getWidthAndHeightAndDensityArray(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static getWidthAndHeightAndDensityArray(Landroid/content/Context;)[I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 143
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 144
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 145
    .local v3, "width":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    .local v2, "height":I
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 147
    .local v1, "dpi":I
    const/4 v5, 0x3

    new-array v4, v5, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    .line 148
    .local v4, "widthAndHeightAndDpiArray":[I
    return-object v4
.end method

.method public static getWidthAndHeightString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getWidthAndHeightAndDensityArray(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " X "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getWidthAndHeightAndDensityArray(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 378
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 379
    .local v3, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v1, "pName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 382
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 383
    .local v4, "pn":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    .end local v0    # "i":I
    .end local v4    # "pn":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static testSystemUtils(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    const-string v0, "\u4fe1\u606f\u5982\u4e0b:"

    .line 391
    .local v0, "testResult":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u53ef\u7528\u5185\u5b58\u5927\u5c0f\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getAvailMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u603b\u5185\u5b58\u5927\u5c0f\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getTotalMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524d\u7f51\u7edc\u7c7b\u578b\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getCurrentNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524dip\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getPhoneIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524d\u5bbd\u9ad8\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getWidthAndHeightString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524dimei\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524dimsi\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524d\u7535\u8bdd\u53f7\u7801\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getPhoneNum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524d\u8bbe\u5907\u578b\u53f7\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getPhoneModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524d\u8bbe\u5907\u54c1\u724c\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getPhoneBrand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524dmac\u5730\u5740\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5f53\u524dcpu\u578b\u53f7\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/OSInfoManagerUtils;->getCpuType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    return-object v0
.end method
