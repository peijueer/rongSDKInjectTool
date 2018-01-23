.class public Lcom/anzhi/sdk/middle/util/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field public static final ABI_ARMEABI:I = 0x1

.field public static final ABI_ARMEABI_V7A:I = 0x2

.field public static final ABI_MIPS:I = 0x8

.field public static final ABI_X86:I = 0x4

.field private static final CPU_MAX_FREQ_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

.field public static final EX_VER:Ljava/lang/String; = "1"

.field private static final KERNEL_PATH:Ljava/lang/String; = "/proc/version"

.field private static final KEY_DEVICEINFO:Ljava/lang/String; = "key_deviceinfo"

.field private static final KEY_PROP_ABI:Ljava/lang/String; = "ro.product.cpu.abi"

.field private static final KEY_PROP_ABI2:Ljava/lang/String; = "ro.product.cpu.abi2"

.field public static final MOB_TYPE_DIANXIN:I = 0x3

.field public static final MOB_TYPE_LIANTONG:I = 0x2

.field public static final MOB_TYPE_NULL:I = 0x0

.field public static final MOB_TYPE_YIDONG:I = 0x1

.field public static final NET_TYPE_MOBILE:I = 0x1

.field public static final NET_TYPE_WIFI:I = 0x2

.field public static final PREFS_NAME:Ljava/lang/String; = "login_info"

.field private static final STR_ABI_ARMEABI:Ljava/lang/String; = "armeabi"

.field private static final STR_ABI_ARMEABI_V7A:Ljava/lang/String; = "armeabi-v7a"

.field private static final STR_ABI_MIPS:Ljava/lang/String; = "mips"

.field private static final STR_ABI_X86:Ljava/lang/String; = "x86"

.field public static final SUPPORT_VER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "SysUtils"

.field public static final VERSION:Ljava/lang/String; = "4.0.3"

.field public static final VERSIONCODE:I = 0xfa3

.field private static sStatFs:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Cache(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IsActiveNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 945
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 946
    .local v1, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 947
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dipValue"    # F

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 411
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 2
    .param p0, "len"    # J

    .prologue
    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/anzhi/sdk/middle/util/SysUtils;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatFileSize(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "len"    # J
    .param p2, "keepZero"    # Z

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/anzhi/sdk/middle/util/SysUtils;->formatFileSize(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatFileSize(JZZ)Ljava/lang/String;
    .locals 8
    .param p0, "len"    # J
    .param p2, "keepZero"    # Z
    .param p3, "keepDecimal"    # Z

    .prologue
    .line 123
    new-instance v1, Ljava/text/DecimalFormat;

    if-eqz p3, :cond_0

    const-string v3, "#.00"

    :goto_0
    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "formatKeepTwoZero":Ljava/text/DecimalFormat;
    new-instance v0, Ljava/text/DecimalFormat;

    if-eqz p3, :cond_1

    const-string v3, "#.0"

    :goto_1
    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "formatKeepOneZero":Ljava/text/DecimalFormat;
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-nez v3, :cond_2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "size":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 123
    .end local v0    # "formatKeepOneZero":Ljava/text/DecimalFormat;
    .end local v1    # "formatKeepTwoZero":Ljava/text/DecimalFormat;
    .end local v2    # "size":Ljava/lang/String;
    :cond_0
    const-string v3, "#"

    goto :goto_0

    .line 124
    .restart local v1    # "formatKeepTwoZero":Ljava/text/DecimalFormat;
    :cond_1
    const-string v3, "#"

    goto :goto_1

    .line 127
    .restart local v0    # "formatKeepOneZero":Ljava/text/DecimalFormat;
    :cond_2
    const-wide/16 v4, 0x400

    cmp-long v3, p0, v4

    if-gez v3, :cond_3

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "B"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2    # "size":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "size":Ljava/lang/String;
    :cond_3
    const-wide/16 v4, 0x2800

    cmp-long v3, p0, v4

    if-gez v3, :cond_4

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x64

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2    # "size":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "size":Ljava/lang/String;
    :cond_4
    const-wide/32 v4, 0x19000

    cmp-long v3, p0, v4

    if-gez v3, :cond_5

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xa

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "size":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "size":Ljava/lang/String;
    :cond_5
    const-wide/32 v4, 0x100000

    cmp-long v3, p0, v4

    if-gez v3, :cond_6

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x400

    div-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "K"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "size":Ljava/lang/String;
    goto/16 :goto_2

    .end local v2    # "size":Ljava/lang/String;
    :cond_6
    const-wide/32 v4, 0xa00000

    cmp-long v3, p0, v4

    if-gez v3, :cond_8

    .line 140
    if-eqz p2, :cond_7

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x64

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "size":Ljava/lang/String;
    goto/16 :goto_2

    .line 143
    .end local v2    # "size":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x64

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2    # "size":Ljava/lang/String;
    goto/16 :goto_2

    .end local v2    # "size":Ljava/lang/String;
    :cond_8
    const-wide/32 v4, 0x6400000

    cmp-long v3, p0, v4

    if-gez v3, :cond_a

    .line 147
    if-eqz p2, :cond_9

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xa

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2    # "size":Ljava/lang/String;
    goto/16 :goto_2

    .line 150
    .end local v2    # "size":Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0xa

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2    # "size":Ljava/lang/String;
    goto/16 :goto_2

    .end local v2    # "size":Ljava/lang/String;
    :cond_a
    const-wide/32 v4, 0x40000000

    cmp-long v3, p0, v4

    if-gez v3, :cond_b

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x400

    div-long v4, p0, v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .restart local v2    # "size":Ljava/lang/String;
    goto/16 :goto_2

    .line 157
    .end local v2    # "size":Ljava/lang/String;
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x64

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "G"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "size":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public static getABI()I
    .locals 2

    .prologue
    .line 439
    const-string v0, "ro.product.cpu.abi"

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/SysUtils;->matchABI(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ro.product.cpu.abi2"

    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/SysUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/SysUtils;->matchABI(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static getAPKResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 693
    const-string v0, "android.content.res.AssetManager"

    .line 694
    .local v0, "PATH_AssetManager":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 695
    .local v2, "assetMagCls":Ljava/lang/Class;
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 696
    .local v3, "assetMagCt":Ljava/lang/reflect/Constructor;
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 697
    .local v1, "assetMag":Ljava/lang/Object;
    new-array v7, v11, [Ljava/lang/Class;

    .line 698
    .local v7, "typeArgs":[Ljava/lang/Class;
    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v10

    .line 699
    const-string v9, "addAssetPath"

    invoke-virtual {v2, v9, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 700
    .local v4, "assetMag_addAssetPathMtd":Ljava/lang/reflect/Method;
    new-array v8, v11, [Ljava/lang/Object;

    .line 701
    .local v8, "valueArgs":[Ljava/lang/Object;
    aput-object p1, v8, v10

    .line 702
    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 704
    .local v5, "res":Landroid/content/res/Resources;
    new-array v7, v13, [Ljava/lang/Class;

    .line 705
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v10

    .line 706
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v11

    .line 707
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v12

    .line 708
    const-class v9, Landroid/content/res/Resources;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 709
    .local v6, "resCt":Ljava/lang/reflect/Constructor;
    new-array v8, v13, [Ljava/lang/Object;

    .line 710
    aput-object v1, v8, v10

    .line 711
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    aput-object v9, v8, v11

    .line 712
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    aput-object v9, v8, v12

    .line 713
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "res":Landroid/content/res/Resources;
    check-cast v5, Landroid/content/res/Resources;

    .line 714
    .restart local v5    # "res":Landroid/content/res/Resources;
    return-object v5
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 170
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 172
    .local v3, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 173
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 188
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, ""

    .line 190
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 191
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAvailableSpace(Ljava/lang/String;)J
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 641
    const-wide/16 v0, -0x1

    .line 642
    .local v0, "availableSpace":J
    if-nez p0, :cond_0

    move-wide v2, v0

    .line 655
    .end local v0    # "availableSpace":J
    .local v2, "availableSpace":J
    :goto_0
    return-wide v2

    .line 646
    .end local v2    # "availableSpace":J
    .restart local v0    # "availableSpace":J
    :cond_0
    :try_start_0
    sget-object v5, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    if-nez v5, :cond_1

    .line 647
    new-instance v5, Landroid/os/StatFs;

    invoke-direct {v5, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    .line 650
    :goto_1
    sget-object v5, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    sget-object v5, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v8, v5

    mul-long v0, v6, v8

    :goto_2
    move-wide v2, v0

    .line 655
    .end local v0    # "availableSpace":J
    .restart local v2    # "availableSpace":J
    goto :goto_0

    .line 649
    .end local v2    # "availableSpace":J
    .restart local v0    # "availableSpace":J
    :cond_1
    sget-object v5, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    invoke-virtual {v5, p0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 651
    :catch_0
    move-exception v4

    .line 652
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SysUtils"

    invoke-static {v5, v4}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static getCpuFreq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lcom/anzhi/sdk/middle/util/SysUtils;->readKernelInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 846
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 847
    .local v10, "sp":Landroid/content/SharedPreferences;
    const-string v12, "key_deviceinfo"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .local v1, "cInfo":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    .line 849
    :cond_0
    const-string v12, "ro.board.platform"

    invoke-static {v12}, Lcom/anzhi/sdk/middle/util/SysUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 850
    .local v3, "cpuModel":Ljava/lang/String;
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getNumCores()I

    move-result v2

    .line 851
    .local v2, "cores":I
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getCpuFreq()Ljava/lang/String;

    move-result-object v7

    .line 853
    .local v7, "freq":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 854
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    const/4 v11, 0x1

    .line 855
    .local v11, "xlarge":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v12, v12, 0xf

    const/4 v13, 0x3

    if-ne v12, v13, :cond_4

    const/4 v9, 0x1

    .line 856
    .local v9, "large":Z
    :goto_1
    if-nez v11, :cond_5

    if-nez v9, :cond_5

    const/4 v8, 0x0

    .line 858
    .local v8, "isTablet":Z
    :goto_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 859
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v3, :cond_1

    const-string v3, ""

    .end local v3    # "cpuModel":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 861
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 862
    if-nez v7, :cond_2

    const-string v7, ""

    .end local v7    # "freq":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 863
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->getRAM()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 864
    iget v12, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 865
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 866
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 867
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v12, "key_deviceinfo"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 868
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 875
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "cores":I
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "isTablet":Z
    .end local v9    # "large":Z
    .end local v11    # "xlarge":Z
    :goto_3
    return-object v0

    .line 854
    .restart local v2    # "cores":I
    .restart local v3    # "cpuModel":Ljava/lang/String;
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "freq":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 855
    .restart local v11    # "xlarge":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 856
    .restart local v9    # "large":Z
    :cond_5
    const/4 v8, 0x1

    goto :goto_2

    .line 872
    .end local v2    # "cores":I
    .end local v3    # "cpuModel":Ljava/lang/String;
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "freq":Ljava/lang/String;
    .end local v9    # "large":Z
    .end local v11    # "xlarge":Z
    :cond_6
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 873
    :catch_0
    move-exception v5

    .line 874
    .local v5, "e":Lorg/json/JSONException;
    const-string v12, "SysUtils"

    invoke-static {v12, v5}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 875
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static getDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "adDir":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/usercenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    .local v1, "logoDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 917
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adDir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    .line 918
    return-object v0

    .line 911
    .end local v1    # "logoDir":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/usercenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExternalSpace()J
    .locals 8

    .prologue
    .line 625
    const-wide/16 v0, -0x1

    .line 627
    .local v0, "availableSpace":J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "externalStoragePath":Ljava/lang/String;
    sget-object v4, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    if-nez v4, :cond_0

    .line 629
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    .line 632
    :goto_0
    sget-object v4, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 637
    .end local v3    # "externalStoragePath":Ljava/lang/String;
    :goto_1
    return-wide v0

    .line 631
    .restart local v3    # "externalStoragePath":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/anzhi/sdk/middle/util/SysUtils;->sStatFs:Landroid/os/StatFs;

    invoke-virtual {v4, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    .end local v3    # "externalStoragePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SysUtils"

    invoke-static {v4, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string v3, ""

    .line 221
    .local v3, "imei":Ljava/lang/String;
    const-string v0, "deviceId"

    .line 222
    .local v0, "DEVICEID":Ljava/lang/String;
    const-string v1, "anz"

    .line 223
    .local v1, "PREFIX":Ljava/lang/String;
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 225
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 227
    const-string v6, "login_info"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 228
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "deviceId"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "anz"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 232
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "deviceId"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v3

    .line 235
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SysUtils"

    invoke-static {v6, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, "imsi":Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 248
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const-string v3, ""

    .line 256
    :goto_0
    return-object v3

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    invoke-static {v3, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    const-string v3, ""

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v1

    .line 256
    goto :goto_0
.end method

.method public static getIP(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 386
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 387
    .local v0, "i":I
    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 388
    const-string v1, ""

    .line 396
    :goto_0
    return-object v1

    .line 390
    :cond_0
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 391
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_1

    .line 392
    const-string v1, ""

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 395
    .local v2, "ipAddress":I
    invoke-static {v2}, Lcom/anzhi/sdk/middle/util/SysUtils;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "ip":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInside(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/anzhi_usercenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJarSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 531
    if-nez p0, :cond_0

    .line 532
    const/16 v20, 0x0

    .line 587
    :goto_0
    return-object v20

    .line 534
    :cond_0
    const-string v14, ""

    .line 535
    .local v14, "resultSign":Ljava/lang/String;
    const-string v13, ""

    .line 536
    .local v13, "resultKey":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v11, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/zip/ZipEntry;>;"
    new-instance v18, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 538
    .local v18, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v19

    .line 539
    .local v19, "zi":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-nez v20, :cond_2

    .line 546
    new-instance v20, Lcom/anzhi/sdk/middle/util/SysUtils$1;

    invoke-direct/range {v20 .. v20}, Lcom/anzhi/sdk/middle/util/SysUtils$1;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 555
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-nez v21, :cond_4

    .line 584
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 585
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Lcom/anzhi/sdk/middle/util/SysUtils;->hashCode(Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v14}, Lcom/anzhi/sdk/middle/util/SysUtils;->hashCode(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_0

    .line 540
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/zip/ZipEntry;

    .line 541
    .local v17, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 542
    .local v10, "name":Ljava/lang/String;
    const-string v20, "META-INF/"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    const-string v20, ".RSA"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    const-string v20, ".DSA"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 543
    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 555
    .end local v10    # "name":Ljava/lang/String;
    .end local v17    # "ze":Ljava/util/zip/ZipEntry;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/zip/ZipEntry;

    .line 557
    .restart local v17    # "ze":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 559
    .local v7, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v21, "X.509"

    invoke-static/range {v21 .. v21}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 560
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    const-string v21, "PKCS7"

    move-object/from16 v0, v21

    invoke-virtual {v3, v7, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v4

    .line 561
    .local v4, "cp":Ljava/security/cert/CertPath;
    invoke-virtual {v4}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v9

    .line 562
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_5
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    if-nez v22, :cond_6

    .line 582
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "cp":Ljava/security/cert/CertPath;
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto/16 :goto_2

    .line 562
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "cp":Ljava/security/cert/CertPath;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6
    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 563
    .local v12, "obj":Ljava/lang/Object;
    instance-of v0, v12, Ljava/security/cert/X509Certificate;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 565
    move-object v0, v12

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    .line 566
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 567
    .local v15, "sb":Ljava/lang/StringBuffer;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 568
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/anzhi/sdk/middle/util/SysUtils;->getPKBytes(Ljava/security/PublicKey;)[B

    move-result-object v8

    .line 569
    .local v8, "key":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    array-length v0, v8

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v6, v0, :cond_7

    .line 571
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 572
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 573
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v16

    .line 575
    .local v16, "signature":[B
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v6, v0, :cond_8

    .line 577
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 570
    .end local v16    # "signature":[B
    :cond_7
    const-string v22, "%02X"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-byte v25, v8, v6

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 576
    .restart local v16    # "signature":[B
    :cond_8
    const-string v22, "%02X"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-byte v25, v16, v6

    invoke-static/range {v25 .. v25}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 575
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 579
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "cp":Ljava/security/cert/CertPath;
    .end local v6    # "i":I
    .end local v8    # "key":[B
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v15    # "sb":Ljava/lang/StringBuffer;
    .end local v16    # "signature":[B
    :catch_0
    move-exception v5

    .line 580
    .local v5, "e":Ljava/security/cert/CertificateException;
    const-string v21, "SysUtils"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 587
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v17    # "ze":Ljava/util/zip/ZipEntry;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public static getMAC(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const-string v2, ""

    .line 284
    .local v2, "mac":Ljava/lang/String;
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 286
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    :try_start_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 287
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 292
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    const-string v4, ""

    .line 295
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v4

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, ""

    invoke-static {v4, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    const-string v4, ""

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_0
    move-object v4, v2

    .line 295
    goto :goto_0
.end method

.method public static getMarketDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 276
    :goto_0
    return-object v1

    .line 268
    :cond_0
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    .line 274
    goto :goto_0

    .line 276
    :cond_2
    const-string v1, "000000000000000"

    goto :goto_0
.end method

.method public static getNetOP(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 327
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    const/4 v1, 0x1

    .line 335
    :goto_0
    return v1

    .line 329
    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    const/4 v1, 0x2

    goto :goto_0

    .line 331
    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 332
    const/4 v1, 0x3

    goto :goto_0

    .line 335
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, "type":I
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 309
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 310
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 312
    const/4 v2, 0x1

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 313
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 314
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getNumCores()I
    .locals 4

    .prologue
    .line 738
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Lcom/anzhi/sdk/middle/util/SysUtils$1CpuFilter;

    invoke-direct {v3}, Lcom/anzhi/sdk/middle/util/SysUtils$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 742
    .local v2, "files":[Ljava/io/File;
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v3

    .line 743
    :catch_0
    move-exception v1

    .line 745
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static getPKBytes(Ljava/security/PublicKey;)[B
    .locals 2
    .param p0, "pk"    # Ljava/security/PublicKey;

    .prologue
    .line 591
    instance-of v1, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 592
    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 593
    .local v0, "k":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 598
    .end local v0    # "k":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    return-object v1

    .line 594
    :cond_0
    instance-of v1, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 595
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 596
    .local v0, "k":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 598
    .end local v0    # "k":Ljava/security/interfaces/DSAPublicKey;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 513
    if-nez p0, :cond_0

    .line 514
    const/4 v1, 0x0

    .line 523
    :goto_0
    return-object v1

    .line 516
    :cond_0
    const/4 v1, 0x0

    .line 517
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 519
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SysUtils"

    invoke-static {v3, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getRAM()J
    .locals 11

    .prologue
    .line 810
    const-wide/16 v8, 0x0

    .line 811
    .local v8, "total_memory":J
    const/4 v6, 0x0

    .line 812
    .local v6, "temp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 813
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 815
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v4, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v1, v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 817
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 819
    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 820
    .local v5, "str":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    const/high16 v10, 0x44800000    # 1024.0f

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    int-to-long v8, v7

    .line 825
    if-eqz v1, :cond_0

    .line 826
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 828
    :cond_0
    if-eqz v4, :cond_5

    .line 829
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 836
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v5    # "str":[Ljava/lang/String;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return-wide v8

    .line 821
    :catch_0
    move-exception v2

    .line 822
    .local v2, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_4
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 825
    if-eqz v0, :cond_2

    .line 826
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 828
    :cond_2
    if-eqz v3, :cond_1

    .line 829
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 831
    :catch_1
    move-exception v2

    .line 832
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 823
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 825
    :goto_2
    if-eqz v0, :cond_3

    .line 826
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 828
    :cond_3
    if-eqz v3, :cond_4

    .line 829
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 834
    :cond_4
    :goto_3
    throw v7

    .line 831
    :catch_2
    move-exception v2

    .line 832
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "SysUtils"

    invoke-static {v10, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 831
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "str":[Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 832
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 823
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "str":[Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 821
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static getResolution(Landroid/content/Context;)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 665
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 666
    .local v1, "windowMgr":Landroid/view/WindowManager;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 667
    .local v0, "res":[I
    const/4 v2, 0x0

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    aput v3, v0, v2

    .line 668
    const/4 v2, 0x1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    aput v3, v0, v2

    .line 669
    return-object v0
.end method

.method public static getRomversion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 676
    const-string v3, ""

    .line 678
    .local v3, "rom":Ljava/lang/String;
    :try_start_0
    const-string v4, "ro.modversion"

    invoke-static {v4}, Lcom/anzhi/sdk/middle/util/SysUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "modversion":Ljava/lang/String;
    const-string v4, "ro.build.display.id"

    invoke-static {v4}, Lcom/anzhi/sdk/middle/util/SysUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "displayId":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 681
    move-object v3, v2

    .line 683
    :cond_0
    if-eqz v0, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    .line 684
    move-object v3, v0

    .line 689
    .end local v0    # "displayId":Ljava/lang/String;
    .end local v2    # "modversion":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SysUtils"

    invoke-static {v4, v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 355
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method public static getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 360
    .local v1, "width":I
    invoke-static {p0}, Lcom/anzhi/sdk/middle/util/SysUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 361
    .local v0, "height":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 350
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public static getSecondChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v0, ""

    return-object v0
.end method

.method public static getSimSN(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    if-nez p0, :cond_0

    .line 482
    const/4 v1, 0x0

    .line 491
    :goto_0
    return-object v1

    .line 484
    :cond_0
    const/4 v1, 0x0

    .line 486
    .local v1, "simSN":Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 487
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 488
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SysUtils"

    invoke-static {v3, v0}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSystemLibs(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    if-nez p0, :cond_0

    .line 500
    const/4 v1, 0x0

    .line 506
    :goto_0
    return-object v1

    .line 502
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 503
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "libNames":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 505
    .local v1, "listLibNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SystemLibs: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/anzhi/sdk/middle/util/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 929
    const/4 v3, 0x0

    .line 931
    .local v3, "pValue":Ljava/lang/String;
    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 932
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 933
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 941
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 934
    :catch_0
    move-exception v1

    .line 935
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "SysUtils"

    invoke-static {v4, v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 936
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 937
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v4, "SysUtils"

    invoke-static {v4, v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 938
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 939
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SysUtils"

    invoke-static {v4, v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getVersion()I
    .locals 1

    .prologue
    .line 202
    const/16 v0, 0xfa3

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "4.0.3"

    return-object v0
.end method

.method public static getdays()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x3c

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 881
    .local v0, "now":Ljava/lang/Long;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getmateString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "st"    # Ljava/lang/String;

    .prologue
    .line 890
    const/4 v2, 0x0

    .line 893
    .local v2, "msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 894
    const/16 v5, 0x80

    .line 893
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 895
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 900
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v2, :cond_0

    .line 902
    .end local v2    # "msg":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 896
    .restart local v2    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 898
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 902
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static hashCode(Ljava/lang/String;)I
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 608
    const/4 v3, 0x0

    .line 609
    .local v3, "hash":I
    if-eqz p0, :cond_0

    .line 610
    const/4 v5, 0x1

    .line 611
    .local v5, "multiplier":I
    const/4 v1, 0x0

    .line 612
    .local v1, "_offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 613
    .local v0, "_count":I
    new-array v2, v0, [C

    .line 614
    .local v2, "_value":[C
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v0, v2, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 615
    add-int v7, v1, v0

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 621
    .end local v0    # "_count":I
    .end local v1    # "_offset":I
    .end local v2    # "_value":[C
    .end local v4    # "i":I
    .end local v5    # "multiplier":I
    :cond_0
    return v3

    .line 616
    .restart local v0    # "_count":I
    .restart local v1    # "_offset":I
    .restart local v2    # "_value":[C
    .restart local v4    # "i":I
    .restart local v5    # "multiplier":I
    :cond_1
    aget-char v7, v2, v4

    mul-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 617
    shl-int/lit8 v6, v5, 0x5

    .line 618
    .local v6, "shifted":I
    sub-int v5, v6, v5

    .line 615
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method private static intToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExistSDCard()Z
    .locals 2

    .prologue
    .line 375
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkDisabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    const/4 v2, 0x0

    .line 465
    .local v2, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 467
    .local v1, "actNetInfo":Landroid/net/NetworkInfo;
    :try_start_0
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 468
    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 474
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 471
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isSDCardAvailable()Z
    .locals 2

    .prologue
    .line 368
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static matchABI(Ljava/lang/String;)I
    .locals 2
    .param p0, "abiString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    const-string v1, "armeabi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :cond_2
    const-string v1, "armeabi-v7a"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    const/4 v0, 0x2

    goto :goto_0

    .line 450
    :cond_3
    const-string v1, "x86"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 451
    const/4 v0, 0x4

    goto :goto_0

    .line 452
    :cond_4
    const-string v1, "mips"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 419
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static readKernelInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 774
    const/4 v3, 0x0

    .line 775
    .local v3, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 776
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 778
    .local v5, "kernelInfo":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    .end local v3    # "fr":Ljava/io/FileReader;
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v1, v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 780
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 781
    const-string v7, "/proc/version"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 782
    const-string v7, "\\s+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 783
    .local v6, "temp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x3

    if-lt v7, v8, :cond_0

    .line 784
    const/4 v7, 0x2

    aget-object v5, v6, v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 793
    .end local v6    # "temp":[Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 794
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 796
    :cond_1
    if-eqz v4, :cond_7

    .line 797
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 803
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :cond_2
    :goto_0
    return-object v5

    .line 787
    :catch_0
    move-exception v2

    .line 788
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 793
    if-eqz v0, :cond_3

    .line 794
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 796
    :cond_3
    if-eqz v3, :cond_2

    .line 797
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 799
    :catch_1
    move-exception v2

    .line 800
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 789
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 790
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_6
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 793
    if-eqz v0, :cond_4

    .line 794
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 796
    :cond_4
    if-eqz v3, :cond_2

    .line 797
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 799
    :catch_3
    move-exception v2

    .line 800
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 791
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 793
    :goto_3
    if-eqz v0, :cond_5

    .line 794
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 796
    :cond_5
    if-eqz v3, :cond_6

    .line 797
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 802
    :cond_6
    :goto_4
    throw v7

    .line 799
    :catch_4
    move-exception v2

    .line 800
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SysUtils"

    invoke-static {v8, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 799
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 800
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SysUtils"

    invoke-static {v7, v2}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 791
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 789
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 787
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public static readSimCard(Landroid/content/Context;)I
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 755
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 756
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    return v1
.end method

.method public static startmarket(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "cn.goapk.market"

    const-string v3, "com.anzhi.market.app.HandleService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "-------failed--------"

    invoke-static {v1}, Lcom/anzhi/sdk/middle/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
