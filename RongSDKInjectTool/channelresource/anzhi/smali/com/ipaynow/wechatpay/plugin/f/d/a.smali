.class public final Lcom/ipaynow/wechatpay/plugin/f/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, -0x1

    sput v0, Lcom/ipaynow/wechatpay/plugin/f/d/a;->cb:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 286
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 288
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 289
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 290
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 291
    array-length v4, v3

    .line 292
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 296
    :goto_0
    if-lt v1, v4, :cond_0

    .line 297
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 308
    :goto_1
    return-object v0

    .line 298
    :cond_0
    aget-byte v6, v3, v1

    .line 299
    add-int/lit8 v7, v0, 0x1

    .line 300
    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v0

    .line 301
    add-int/lit8 v0, v7, 0x1

    .line 302
    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    add-int/lit8 v1, v1, 0x1

    .line 295
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    .line 286
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static ae()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "192.168.1.1"

    :goto_0
    return-object v0

    .line 56
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 57
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 59
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    const-string v0, "192.168.1.1"

    goto :goto_0
.end method

.method public static af()Lcom/ipaynow/wechatpay/plugin/f/a/c;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 218
    sget v0, Lcom/ipaynow/wechatpay/plugin/f/d/a;->cb:I

    if-ne v0, v3, :cond_0

    .line 219
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/c;->bJ:Lcom/ipaynow/wechatpay/plugin/f/a/c;

    .line 237
    :goto_0
    return-object v0

    .line 220
    :cond_0
    sget v0, Lcom/ipaynow/wechatpay/plugin/f/d/a;->cb:I

    if-nez v0, :cond_1

    .line 221
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/c;->bK:Lcom/ipaynow/wechatpay/plugin/f/a/c;

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "/system/bin/"

    aput-object v0, v2, v1

    const-string v0, "/system/xbin/"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "/system/sbin/"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "/sbin/"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "/vendor/bin/"

    aput-object v3, v2, v0

    move v0, v1

    .line 226
    :goto_1
    :try_start_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v3, :cond_2

    .line 236
    :goto_2
    sput v1, Lcom/ipaynow/wechatpay/plugin/f/d/a;->cb:I

    .line 237
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/c;->bK:Lcom/ipaynow/wechatpay/plugin/f/a/c;

    goto :goto_0

    .line 227
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    const/4 v0, 0x1

    sput v0, Lcom/ipaynow/wechatpay/plugin/f/d/a;->cb:I

    .line 230
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/c;->bJ:Lcom/ipaynow/wechatpay/plugin/f/a/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 33
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    if-nez v0, :cond_0

    .line 40
    const-string v0, "192.168.1.1"

    .line 49
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    const-string v0, "192.168.1.1"

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 47
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    and-int/lit16 v2, v0, 0xff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_3
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->ae()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 87
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 99
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 112
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xb

    .line 118
    const-string v1, ""

    .line 120
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 121
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 124
    const-string v0, "WIFI"

    .line 183
    :cond_0
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const-string v0, "UNCONNECTION"

    .line 186
    :cond_1
    return-object v0

    .line 125
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_9

    .line 126
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 130
    packed-switch v1, :pswitch_data_0

    .line 154
    const-string v2, "TD-SCDMA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "WCDMA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 155
    const-string v2, "CDMA2000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    :cond_3
    const-string v0, "3G"

    .line 157
    :cond_4
    :goto_1
    const-string v2, "2G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_5

    if-ne v1, v4, :cond_5

    .line 165
    const-string v0, "2G"

    .line 167
    :cond_5
    const-string v2, "3G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 168
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_6

    const/16 v2, 0xe

    if-ne v1, v2, :cond_6

    .line 169
    const-string v0, "3G"

    .line 171
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_7

    const/16 v2, 0xc

    if-ne v1, v2, :cond_7

    .line 172
    const-string v0, "3G"

    .line 174
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_8

    const/16 v2, 0xf

    if-ne v1, v2, :cond_8

    .line 175
    const-string v0, "3G"

    .line 178
    :cond_8
    const-string v2, "4G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_0

    if-ne v1, v5, :cond_0

    .line 179
    const-string v0, "4G"

    goto :goto_0

    .line 136
    :pswitch_0
    const-string v0, "2G"

    goto :goto_1

    .line 147
    :pswitch_1
    const-string v0, "3G"

    goto :goto_1

    .line 150
    :pswitch_2
    const-string v0, "4G"

    goto :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static l(Landroid/content/Context;)Lcom/ipaynow/wechatpay/plugin/f/a/a;
    .locals 2

    .prologue
    .line 190
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 191
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 193
    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bE:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    .line 209
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_1
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bD:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    goto :goto_0

    .line 200
    :cond_2
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bC:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    goto :goto_0

    .line 203
    :cond_3
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bB:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    goto :goto_0

    .line 209
    :cond_4
    sget-object v0, Lcom/ipaynow/wechatpay/plugin/f/a/a;->bE:Lcom/ipaynow/wechatpay/plugin/f/a/a;

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 243
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 252
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 259
    invoke-static {p0}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->p(Landroid/content/Context;)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 261
    :cond_0
    const-string v0, ""

    .line 268
    :goto_0
    return-object v0

    .line 263
    :cond_1
    array-length v2, v1

    .line 264
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_2

    .line 268
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_2
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/ipaynow/wechatpay/plugin/f/d/a;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static p(Landroid/content/Context;)[Landroid/content/pm/Signature;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 275
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 276
    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
