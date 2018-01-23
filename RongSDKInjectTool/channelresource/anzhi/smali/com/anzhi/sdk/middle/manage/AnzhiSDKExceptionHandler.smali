.class public Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;
.super Ljava/lang/Object;
.source "AnzhiSDKExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->getExceptionPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)Z
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->isExistsException(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExceptionPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    invoke-static {}, Lcom/anzhi/sdk/middle/util/SysUtils;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/usercenter/.log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.log.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isExistsException(Ljava/lang/Throwable;Ljava/io/RandomAccessFile;)Z
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "file"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 202
    :try_start_0
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 203
    .local v4, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 204
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 205
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 206
    .local v1, "hashCode":I
    const-string v5, ""

    .line 207
    .local v5, "value":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 223
    .end local v1    # "hashCode":I
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "sw":Ljava/io/StringWriter;
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    :goto_2
    return v6

    .line 208
    .restart local v1    # "hashCode":I
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "sw":Ljava/io/StringWriter;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_1
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    const-string v6, "*"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 211
    .local v2, "len":I
    invoke-virtual {p2, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v1    # "hashCode":I
    .end local v2    # "len":I
    .end local v3    # "pw":Ljava/io/PrintWriter;
    .end local v4    # "sw":Ljava/io/StringWriter;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Anzhi_sdk_lib"

    const-string v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "hashCode":I
    .restart local v3    # "pw":Ljava/io/PrintWriter;
    .restart local v4    # "sw":Ljava/io/StringWriter;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "#"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-ne v6, v1, :cond_0

    .line 216
    const/4 v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected deleteExceptionFile()V
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->getExceptionPath()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "innerFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    return-void
.end method

.method public getExceptionLog()Ljava/lang/String;
    .locals 10

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->getExceptionPath()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 238
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 239
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 242
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v5, "rf":Ljava/io/RandomAccessFile;
    const-string v7, ""

    .line 244
    .local v7, "temp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 245
    .local v3, "isSkip":Z
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 262
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "isSkip":Z
    .end local v5    # "rf":Ljava/io/RandomAccessFile;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 246
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "isSkip":Z
    .restart local v5    # "rf":Ljava/io/RandomAccessFile;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 247
    if-eqz v3, :cond_3

    .line 248
    const/4 v3, 0x0

    .line 249
    const-string v8, "*"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    .end local v3    # "isSkip":Z
    .end local v5    # "rf":Ljava/io/RandomAccessFile;
    .end local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Anzhi_sdk_lib"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 253
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "isSkip":Z
    .restart local v5    # "rf":Ljava/io/RandomAccessFile;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v8, "#"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    const/4 v3, 0x1

    .line 255
    goto :goto_0

    .line 257
    :cond_4
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 258
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "forceExit"    # Z

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v4, "Anzhi_sdk_lib"

    const-string v5, " "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v4, "Anzhi_sdk_lib"

    const-string v5, "Anzhi game error\uff1a==========================>>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v4, "Anzhi_sdk_lib"

    const-string v5, ""

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    const-string v4, "Anzhi_sdk_lib"

    const-string v5, "<<<<============================="

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v4, "Anzhi_sdk_lib"

    const-string v5, " "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_0
    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 84
    const/16 v6, 0x80

    .line 83
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 85
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 86
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 87
    const-string v4, "ANZHI_DEBUG"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 88
    .local v2, "isDebug":Z
    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isDebug":Z
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler$1;-><init>(Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;ZLjava/lang/Throwable;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->handleException(Ljava/lang/Throwable;Z)V

    .line 65
    return-void
.end method
