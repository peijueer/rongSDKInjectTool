.class public Lcom/lzy/okhttpserver/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field public static final DM_TARGET_FOLDER:Ljava/lang/String;

.field public static final DOWNLOADING:I = 0x2

.field public static final ERROR:I = 0x5

.field public static final FINISH:I = 0x4

.field public static final NONE:I = 0x0

.field public static final PAUSE:I = 0x3

.field public static final WAITING:I = 0x1

.field private static mInstance:Lcom/lzy/okhttpserver/download/DownloadManager;


# instance fields
.field private mDownloadInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttpserver/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadUIHandler:Lcom/lzy/okhttpserver/download/DownloadUIHandler;

.field private mTargetFolder:Ljava/lang/String;

.field private threadPool:Lcom/lzy/okhttpserver/download/DownloadThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okhttpserver/download/DownloadManager;->DM_TARGET_FOLDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/DownloadUIHandler;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadUIHandler:Lcom/lzy/okhttpserver/download/DownloadUIHandler;

    .line 59
    new-instance v0, Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/DownloadThreadPool;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->threadPool:Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lzy/okhttpserver/download/DownloadManager;->DM_TARGET_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 63
    :cond_0
    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->getAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 69
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 70
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 71
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setNetworkSpeed(J)V

    .line 72
    sget-object v2, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    invoke-virtual {v2, v0}, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->replace(Lcom/lzy/okhttpserver/download/DownloadInfo;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    goto :goto_0

    .line 76
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/lzy/okhttpserver/download/DownloadManager;)Lcom/lzy/okhttpserver/download/DownloadThreadPool;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->threadPool:Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lzy/okhttpserver/download/DownloadManager;Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/lzy/okhttpserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;Z)V

    return-void
.end method

.method private addTask(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;Z)V
    .locals 3
    .param p3    # Lcom/lzy/okhttputils/request/BaseRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-virtual {p0, p2}, Lcom/lzy/okhttpserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;-><init>()V

    .line 99
    invoke-virtual {p3}, Lcom/lzy/okhttputils/request/BaseRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setUrl(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTaskKey(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setFileName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p3}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setRequest(Lcom/lzy/okhttputils/request/BaseRequest;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setState(I)V

    .line 104
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTargetFolder(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    invoke-virtual {v1, v0}, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->replace(Lcom/lzy/okhttpserver/download/DownloadInfo;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 106
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 111
    :cond_1
    new-instance v1, Lcom/lzy/okhttpserver/download/DownloadTask;

    invoke-direct {v1, v0, p5, p4}, Lcom/lzy/okhttpserver/download/DownloadTask;-><init>(Lcom/lzy/okhttpserver/download/DownloadInfo;ZLcom/lzy/okhttpserver/listener/DownloadListener;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTask(Lcom/lzy/okhttpserver/download/DownloadTask;)V

    .line 114
    :cond_2
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 252
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/lzy/okhttpserver/download/DownloadManager;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/lzy/okhttpserver/download/DownloadManager;->mInstance:Lcom/lzy/okhttpserver/download/DownloadManager;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lcom/lzy/okhttpserver/download/DownloadManager;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/lzy/okhttpserver/download/DownloadManager;->mInstance:Lcom/lzy/okhttpserver/download/DownloadManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/lzy/okhttpserver/download/DownloadManager;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/DownloadManager;-><init>()V

    sput-object v0, Lcom/lzy/okhttpserver/download/DownloadManager;->mInstance:Lcom/lzy/okhttpserver/download/DownloadManager;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/lzy/okhttpserver/download/DownloadManager;->mInstance:Lcom/lzy/okhttpserver/download/DownloadManager;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeTaskByKey(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 237
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 239
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getListener()Lcom/lzy/okhttpserver/listener/DownloadListener;

    move-result-object v2

    .line 241
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/lzy/okhttpserver/listener/DownloadListener;->onRemove(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    .line 242
    :cond_1
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->removeListener()V

    .line 243
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 247
    :cond_2
    return-void
.end method

.method private restartTaskByKey(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    .line 217
    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 219
    new-instance v1, Lcom/lzy/okhttpserver/download/DownloadTask;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getListener()Lcom/lzy/okhttpserver/listener/DownloadListener;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/lzy/okhttpserver/download/DownloadTask;-><init>(Lcom/lzy/okhttpserver/download/DownloadInfo;ZLcom/lzy/okhttpserver/listener/DownloadListener;)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->setTask(Lcom/lzy/okhttpserver/download/DownloadTask;)V

    goto :goto_0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;)V
    .locals 6
    .param p2    # Lcom/lzy/okhttputils/request/BaseRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttpserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;Z)V

    .line 81
    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;)V
    .locals 6
    .param p3    # Lcom/lzy/okhttputils/request/BaseRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttpserver/download/DownloadManager;->addTask(Ljava/lang/String;Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;Z)V

    .line 86
    return-void
.end method

.method public getAllTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttpserver/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 227
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Lcom/lzy/okhttpserver/download/DownloadUIHandler;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadUIHandler:Lcom/lzy/okhttpserver/download/DownloadUIHandler;

    return-object v0
.end method

.method public getTargetFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadPool()Lcom/lzy/okhttpserver/download/DownloadThreadPool;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->threadPool:Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    return-object v0
.end method

.method public pauseAllTask()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 136
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 137
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 140
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    goto :goto_1

    .line 142
    :cond_3
    return-void
.end method

.method public pauseTask(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    .line 126
    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    .line 129
    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_2
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTask()Lcom/lzy/okhttpserver/download/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTask()Lcom/lzy/okhttpserver/download/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->pause()V

    goto :goto_0
.end method

.method public removeAllTask()V
    .locals 3

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 184
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    invoke-virtual {p0, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->removeTask(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_1
    return-void
.end method

.method public removeTask(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->removeTask(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public removeTask(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->removeTaskByKey(Ljava/lang/String;)V

    .line 175
    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTargetPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->deleteFile(Ljava/lang/String;)Z

    .line 176
    :cond_1
    sget-object v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->delete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restartTask(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->threadPool:Lcom/lzy/okhttpserver/download/DownloadThreadPool;

    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadThreadPool;->getExecutor()Lcom/lzy/okhttpserver/task/ExecutorWithListener;

    move-result-object v1

    new-instance v2, Lcom/lzy/okhttpserver/download/DownloadManager$1;

    invoke-direct {v2, p0, v0}, Lcom/lzy/okhttpserver/download/DownloadManager$1;-><init>(Lcom/lzy/okhttpserver/download/DownloadManager;Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    invoke-virtual {v1, v2}, Lcom/lzy/okhttpserver/task/ExecutorWithListener;->addOnTaskEndListener(Lcom/lzy/okhttpserver/task/ExecutorWithListener$OnTaskEndListener;)V

    .line 212
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->pauseTask(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->restartTaskByKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTargetFolder(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mTargetFolder:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public startAllTask()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 119
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTaskKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getRequest()Lcom/lzy/okhttputils/request/BaseRequest;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getListener()Lcom/lzy/okhttpserver/listener/DownloadListener;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->addTask(Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseRequest;Lcom/lzy/okhttpserver/listener/DownloadListener;)V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public stopAllTask()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 156
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 157
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->stopTask(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/DownloadManager;->mDownloadInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 160
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzy/okhttpserver/download/DownloadManager;->stopTask(Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_3
    return-void
.end method

.method public stopTask(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/lzy/okhttpserver/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;

    move-result-object v0

    .line 147
    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTask()Lcom/lzy/okhttpserver/download/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getTask()Lcom/lzy/okhttpserver/download/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/DownloadTask;->stop()V

    goto :goto_0
.end method
