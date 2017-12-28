.class public final Lcom/iqiyigame/plugin/utils/GameSoLibManager;
.super Ljava/lang/Object;
.source "GameSoLibManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/iqiyigame/plugin/utils/GameSoLibManager;

.field private static sNativeLibDir:Ljava/lang/String;


# instance fields
.field private mSoExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;

    invoke-direct {v0}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;-><init>()V

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->sInstance:Lcom/iqiyigame/plugin/utils/GameSoLibManager;

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->sNativeLibDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->mSoExecutor:Ljava/util/concurrent/ExecutorService;

    .line 58
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->sNativeLibDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCpuArch(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cpuName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "armeabi"

    .line 94
    .local v0, "cpuArchitect":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const-string v0, "armeabi"

    .line 102
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    const-string v0, "x86"

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mips"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v0, "mips"

    goto :goto_0
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 74
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 76
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 78
    const-string v5, ":\\s+"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    if-lt v5, v7, :cond_0

    .line 80
    const/4 v5, 0x1

    aget-object v5, v0, v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 88
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSoLoader()Lcom/iqiyigame/plugin/utils/GameSoLibManager;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->sInstance:Lcom/iqiyigame/plugin/utils/GameSoLibManager;

    return-object v0
.end method


# virtual methods
.method public copyPluginSoLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "nativeLibDir"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->getCpuName()Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, "cpuName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->getCpuArch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "cpuArchitect":Ljava/lang/String;
    sput-object p3, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->sNativeLibDir:Ljava/lang/String;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cpuArchitect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 119
    .local v16, "start":J
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 120
    .local v6, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v14

    .line 121
    .local v14, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 123
    .local v7, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, "zipEntryName":Ljava/lang/String;
    const-string v3, ".so"

    invoke-virtual {v15, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v8

    .line 129
    .local v8, "lastModify":J
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/iqiyigame/plugin/utils/GameConfigs;->getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v8, v4

    if-nez v3, :cond_2

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skip copying, the so lib is exist and not change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v8    # "lastModify":J
    .end local v14    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v15    # "zipEntryName":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 138
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    .end local v11    # "e":Ljava/io/IOException;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 142
    .local v12, "end":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ### copy so time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v12, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V

    .line 143
    return-void

    .line 134
    .end local v12    # "end":J
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "lastModify":J
    .restart local v14    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v15    # "zipEntryName":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->mSoExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v18, v0

    new-instance v3, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;-><init>(Lcom/iqiyigame/plugin/utils/GameSoLibManager;Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
