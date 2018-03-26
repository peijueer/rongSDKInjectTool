.class public Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;
.super Ljava/lang/Object;
.source "MzwSDKManagerUtils.java"


# static fields
.field public static final CORE_NAME:Ljava/lang/String; = "olsdk_core"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callQQ(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qq"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v1, "com.tencent.mobileqq"

    invoke-static {p0, v1}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "localUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    .end local v0    # "localUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 202
    .restart local v0    # "localUri":Landroid/net/Uri;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    .end local v0    # "localUri":Landroid/net/Uri;
    :cond_1
    const-string v1, "QQ\u672a\u5b89\u88c5\u6216\u7248\u672c\u4e0d\u88ab\u652f\u6301"

    invoke-static {p0, v1}, Lcom/muzhiwan/sdk/common/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 65
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string v0, "muzhiwanappkey"

    .line 84
    .local v0, "appkey":Ljava/lang/String;
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 85
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 86
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "MZWAPPKEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v0, "muzhiwanappkey"

    .line 91
    :cond_0
    return-object v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v0, ""

    .line 74
    .local v0, "appName":Ljava/lang/String;
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 75
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_0
    return-object v0
.end method

.method public static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAssetsVersion(Landroid/content/Context;)I
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "version":I
    const/4 v6, 0x0

    .line 230
    .local v6, "zs":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "olsdk_core"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v6    # "zs":Ljava/util/zip/ZipInputStream;
    .local v7, "zs":Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    .local v5, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_2

    .line 233
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "res/raw/version"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 234
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 235
    .local v0, "buff":[B
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    .line 236
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 237
    .local v4, "versionStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 244
    if-eqz v7, :cond_1

    .line 246
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v6, v7

    .end local v7    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zs":Ljava/util/zip/ZipInputStream;
    move v3, v2

    .line 252
    .end local v0    # "buff":[B
    .end local v2    # "version":I
    .end local v4    # "versionStr":Ljava/lang/String;
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    .local v3, "version":I
    :goto_1
    return v3

    .line 247
    .end local v3    # "version":I
    .end local v6    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buff":[B
    .restart local v2    # "version":I
    .restart local v4    # "versionStr":Ljava/lang/String;
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zs":Ljava/util/zip/ZipInputStream;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "buff":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "versionStr":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_5

    .line 246
    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v7

    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    .end local v7    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zs":Ljava/util/zip/ZipInputStream;
    :cond_3
    :goto_2
    move v3, v2

    .line 252
    .end local v2    # "version":I
    .restart local v3    # "version":I
    goto :goto_1

    .line 247
    .end local v3    # "version":I
    .end local v6    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "version":I
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zs":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v1

    .line 248
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 249
    .end local v7    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zs":Ljava/util/zip/ZipInputStream;
    goto :goto_2

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Throwable;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 244
    if-eqz v6, :cond_3

    .line 246
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 247
    :catch_3
    move-exception v1

    .line 248
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 244
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_4

    .line 246
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 249
    :cond_4
    :goto_5
    throw v8

    .line 247
    :catch_4
    move-exception v1

    .line 248
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 244
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zs":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zs":Ljava/util/zip/ZipInputStream;
    goto :goto_4

    .line 241
    .end local v6    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "zs":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v1

    move-object v6, v7

    .end local v7    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zs":Ljava/util/zip/ZipInputStream;
    goto :goto_3

    .end local v6    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v7    # "zs":Ljava/util/zip/ZipInputStream;
    :cond_5
    move-object v6, v7

    .end local v7    # "zs":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zs":Ljava/util/zip/ZipInputStream;
    goto :goto_2
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string v0, "mzw"

    .line 148
    .local v0, "channel":Ljava/lang/String;
    const-string v2, "mzw_spf"

    const-string v3, "mzw_channel"

    const-string v4, "none"

    invoke-static {p0, v2, v3, v4}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "MZWCHANNEL"

    const-string v3, "MZWCHANNEL"

    const-string v4, "none"

    invoke-static {p0, v2, v3, v4}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 153
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 154
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "mzw_channel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "mzw_channel"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return-object v0

    .line 160
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const-string v0, "mzw"

    goto :goto_0

    .line 163
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_3
    invoke-static {p0, v0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->setChannel(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCps(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const-string v0, "mzw"

    .line 177
    .local v0, "cps":Ljava/lang/String;
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 178
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 179
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "mzw_cps"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_0
    return-object v0
.end method

.method public static getDecimalFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDestVersion(Ljava/lang/String;)I
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v7, 0x0

    .line 257
    .local v7, "zf":Ljava/util/zip/ZipFile;
    const/4 v3, 0x0

    .line 258
    .local v3, "ins":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 260
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v7    # "zf":Ljava/util/zip/ZipFile;
    .local v8, "zf":Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v9, "res/raw/version"

    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 262
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v8, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 263
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-static {v3, v5}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->in2out(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 265
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 266
    .local v0, "buff":[B
    new-instance v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v6, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 267
    .local v6, "versionStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v9

    .line 271
    if-eqz v8, :cond_0

    .line 273
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 279
    .end local v0    # "buff":[B
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v6    # "versionStr":Ljava/lang/String;
    .end local v8    # "zf":Ljava/util/zip/ZipFile;
    .restart local v7    # "zf":Ljava/util/zip/ZipFile;
    :goto_1
    return v9

    .line 274
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "zf":Ljava/util/zip/ZipFile;
    .restart local v0    # "buff":[B
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "versionStr":Ljava/lang/String;
    .restart local v8    # "zf":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v0    # "buff":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "versionStr":Ljava/lang/String;
    .end local v8    # "zf":Ljava/util/zip/ZipFile;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "zf":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    if-eqz v7, :cond_1

    .line 273
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 279
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    const/16 v9, 0xd36

    goto :goto_1

    .line 274
    .restart local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 275
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v7, :cond_2

    .line 273
    :try_start_6
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 276
    :cond_2
    :goto_5
    throw v9

    .line 274
    :catch_3
    move-exception v1

    .line 275
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zf":Ljava/util/zip/ZipFile;
    .restart local v8    # "zf":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "zf":Ljava/util/zip/ZipFile;
    .restart local v7    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_4

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "zf":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v8    # "zf":Ljava/util/zip/ZipFile;
    .restart local v7    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 268
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "zf":Ljava/util/zip/ZipFile;
    .restart local v8    # "zf":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v1

    move-object v7, v8

    .end local v8    # "zf":Ljava/util/zip/ZipFile;
    .restart local v7    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2

    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "zf":Ljava/util/zip/ZipFile;
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "zf":Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v8    # "zf":Ljava/util/zip/ZipFile;
    .restart local v7    # "zf":Ljava/util/zip/ZipFile;
    goto :goto_2
.end method

.method public static getLastPayTypeIcon(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defvalue"    # I

    .prologue
    .line 117
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_icon"

    invoke-static {p0, v0, v1, p1}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->getIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastPayTypeIconTitle(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defvalue"    # I

    .prologue
    .line 127
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_icon_title"

    invoke-static {p0, v0, v1, p1}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->getIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLastPayTypeId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_id"

    const-string v2, "alipay"

    invoke-static {p0, v0, v1, v2}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastPayTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_name"

    const-string v2, "\u652f\u4ed8\u5b9d"

    invoke-static {p0, v0, v1, v2}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->getStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/muzhiwan/sdk/dynamic/utils/IOUtils;->getDestPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const/16 v2, 0xd36

    .line 101
    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getDestVersion(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 188
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 211
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 212
    .local v3, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v1, "pName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 215
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 216
    .local v4, "pn":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    .end local v4    # "pn":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "debug":Z
    invoke-static {p0}, Lcom/muzhiwan/sdk/common/utils/MzwSDKManagerUtils;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 55
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 56
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "DEBUG"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 58
    :cond_0
    return v0
.end method

.method public static setChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "mzw_spf"

    const-string v1, "mzw_channel"

    invoke-static {p0, v0, v1, p1}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static setLastPayTypeIcon(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastPayTypeIcon"    # I

    .prologue
    .line 122
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_icon"

    invoke-static {p0, v0, v1, p1}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->putIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method public static setLastPayTypeIconTitle(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastPayTypeId"    # I

    .prologue
    .line 132
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_icon_title"

    invoke-static {p0, v0, v1, p1}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->putIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method public static setLastPayTypeId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastPayTypeId"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_id"

    invoke-static {p0, v0, v1, p1}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static setLastPayTypeName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lastPayTypeName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "mzw_spf"

    const-string v1, "mzw_lastpay_name"

    invoke-static {p0, v0, v1, p1}, Lcom/muzhiwan/sdk/common/utils/LocalSpfManagerUtils;->putStringShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
