.class public Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;
.super Ljava/lang/Object;
.source "OSInfoManagerUtils.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCloseable(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "obj"    # Ljava/io/Closeable;

    .prologue
    .line 196
    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getCpuType(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-string v4, "cpu_key"

    .line 132
    .local v4, "cpu_key":Ljava/lang/String;
    const-string v9, "mzw_spf"

    const-string v10, ""

    invoke-static {p0, v9, v4, v10}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "cpuType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    move-object v3, v2

    .line 159
    .end local v2    # "cpuType":Ljava/lang/String;
    .local v3, "cpuType":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 138
    .end local v3    # "cpuType":Ljava/lang/String;
    .restart local v2    # "cpuType":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 139
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 141
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    const-string v10, "getprop ro.board.platform"

    invoke-virtual {v9, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 142
    .local v7, "p":Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 143
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "result":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_2

    .line 146
    move-object v2, v8

    .line 153
    :goto_1
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 154
    invoke-static {v6}, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 156
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 157
    const-string v9, "mzw_spf"

    invoke-static {p0, v9, v4, v2}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v3, v2

    .line 159
    .end local v2    # "cpuType":Ljava/lang/String;
    .restart local v3    # "cpuType":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "cpuType":Ljava/lang/String;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "cpuType":Ljava/lang/String;
    .restart local v7    # "p":Ljava/lang/Process;
    .restart local v8    # "result":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->getMtkType()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 150
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "p":Ljava/lang/Process;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 151
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 154
    invoke-static {v6}, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    goto :goto_2

    .line 153
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    .line 154
    invoke-static {v6}, Lcom/rongmzw/frame/sdk/utils/OSInfoManagerUtils;->closeCloseable(Ljava/io/Closeable;)V

    throw v9

    .line 153
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 150
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

    .line 30
    const-string v3, ""

    .line 31
    .local v3, "type":Ljava/lang/String;
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 33
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 34
    const-string v3, "null"

    .line 47
    :cond_0
    :goto_0
    return-object v3

    .line 35
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 36
    const-string v3, "wifi"

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 39
    .local v2, "subType":I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 40
    :cond_3
    const-string v3, "2g"

    goto :goto_0

    .line 41
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

    .line 42
    :cond_5
    const-string v3, "3g"

    goto :goto_0

    .line 43
    :cond_6
    const/16 v4, 0xd

    if-ne v2, v4, :cond_0

    .line 44
    const-string v3, "4g"

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->getMacAddressSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "macSavePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "macContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 102
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 103
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v1, v0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-object v0
.end method

.method private static getMtkType()Ljava/lang/String;
    .locals 8

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 166
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "getprop ro.mediatek.platform"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 167
    .local v4, "p":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 168
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "result":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_2

    .line 176
    if-eqz v1, :cond_0

    .line 178
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 186
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 191
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v5

    .line 179
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v1, :cond_3

    .line 178
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 184
    :cond_3
    :goto_2
    if-eqz v3, :cond_8

    .line 186
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v1

    .line 191
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    const-string v5, ""

    goto :goto_1

    .line 179
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 180
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v0, v1

    .line 188
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 173
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "result":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    if-eqz v0, :cond_5

    .line 178
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    if-eqz v3, :cond_4

    .line 186
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 187
    :catch_4
    move-exception v6

    goto :goto_3

    .line 179
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 176
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v0, :cond_6

    .line 178
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 184
    :cond_6
    :goto_7
    if-eqz v3, :cond_7

    .line 186
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 188
    :cond_7
    :goto_8
    throw v6

    .line 179
    :catch_6
    move-exception v2

    .line 180
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 187
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

    .line 176
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 173
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

.method public static getScreenDpi(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getUniqueID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->getUniqueIDSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "uniqueIDsavePath":Ljava/lang/String;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "uniqueIDcontent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v1, v0}, Lcom/rongmzw/frame/sdk/utils/FileManagerUtils;->writeFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    :cond_0
    return-object v0
.end method
