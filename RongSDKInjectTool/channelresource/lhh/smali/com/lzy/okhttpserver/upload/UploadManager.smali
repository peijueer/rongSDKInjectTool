.class public Lcom/lzy/okhttpserver/upload/UploadManager;
.super Ljava/lang/Object;
.source "UploadManager.java"


# static fields
.field public static final ERROR:I = 0x4

.field public static final FINISH:I = 0x3

.field public static final NONE:I = 0x0

.field public static final UPLOADING:I = 0x2

.field public static final WAITING:I = 0x1

.field private static mInstance:Lcom/lzy/okhttpserver/upload/UploadManager;


# instance fields
.field private mUploadInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttpserver/upload/UploadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadUIHandler:Lcom/lzy/okhttpserver/upload/UploadUIHandler;

.field private threadPool:Lcom/lzy/okhttpserver/upload/UploadThreadPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/upload/UploadUIHandler;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadManager;->mUploadUIHandler:Lcom/lzy/okhttpserver/upload/UploadUIHandler;

    .line 51
    new-instance v0, Lcom/lzy/okhttpserver/upload/UploadThreadPool;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/upload/UploadThreadPool;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadManager;->threadPool:Lcom/lzy/okhttpserver/upload/UploadThreadPool;

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/lzy/okhttpserver/upload/UploadManager;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/lzy/okhttpserver/upload/UploadManager;->mInstance:Lcom/lzy/okhttpserver/upload/UploadManager;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/lzy/okhttpserver/upload/UploadManager;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/lzy/okhttpserver/upload/UploadManager;->mInstance:Lcom/lzy/okhttpserver/upload/UploadManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/lzy/okhttpserver/upload/UploadManager;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/upload/UploadManager;-><init>()V

    sput-object v0, Lcom/lzy/okhttpserver/upload/UploadManager;->mInstance:Lcom/lzy/okhttpserver/upload/UploadManager;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/lzy/okhttpserver/upload/UploadManager;->mInstance:Lcom/lzy/okhttpserver/upload/UploadManager;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseBodyRequest;Lcom/lzy/okhttpserver/listener/UploadListener;)V
    .locals 2
    .param p2    # Lcom/lzy/okhttputils/request/BaseBodyRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/lzy/okhttputils/request/BaseBodyRequest;",
            "Lcom/lzy/okhttpserver/listener/UploadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/lzy/okhttpserver/upload/UploadInfo;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/upload/UploadInfo;-><init>()V

    .line 64
    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setTaskKey(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setState(I)V

    .line 66
    invoke-virtual {v0, p2}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setRequest(Lcom/lzy/okhttputils/request/BaseBodyRequest;)V

    .line 67
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/lzy/okhttpserver/upload/UploadTask;

    invoke-direct {v1, v0, p3}, Lcom/lzy/okhttpserver/upload/UploadTask;-><init>(Lcom/lzy/okhttpserver/upload/UploadInfo;Lcom/lzy/okhttpserver/listener/UploadListener;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/lzy/okhttpserver/upload/UploadInfo;->setTask(Lcom/lzy/okhttpserver/upload/UploadTask;)V

    .line 71
    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/lzy/okhttpserver/listener/UploadListener;)V
    .locals 1
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/lzy/okhttpserver/listener/UploadListener",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lcom/lzy/okhttputils/OkHttpUtils;->post(Ljava/lang/String;)Lcom/lzy/okhttputils/request/PostRequest;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/lzy/okhttputils/request/PostRequest;->params(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okhttputils/request/BaseBodyRequest;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttputils/request/PostRequest;

    .line 58
    invoke-virtual {p0, p1, v0, p4}, Lcom/lzy/okhttpserver/upload/UploadManager;->addTask(Ljava/lang/String;Lcom/lzy/okhttputils/request/BaseBodyRequest;Lcom/lzy/okhttpserver/listener/UploadListener;)V

    .line 59
    return-void
.end method

.method public getAllTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzy/okhttpserver/upload/UploadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadManager;->mUploadInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Lcom/lzy/okhttpserver/upload/UploadUIHandler;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadManager;->mUploadUIHandler:Lcom/lzy/okhttpserver/upload/UploadUIHandler;

    return-object v0
.end method

.method public getThreadPool()Lcom/lzy/okhttpserver/upload/UploadThreadPool;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadManager;->threadPool:Lcom/lzy/okhttpserver/upload/UploadThreadPool;

    return-object v0
.end method
