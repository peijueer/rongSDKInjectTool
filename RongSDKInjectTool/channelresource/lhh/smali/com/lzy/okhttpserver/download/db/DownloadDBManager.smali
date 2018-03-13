.class public final enum Lcom/lzy/okhttpserver/download/db/DownloadDBManager;
.super Ljava/lang/Enum;
.source "DownloadDBManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lzy/okhttpserver/download/db/DownloadDBManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

.field public static final enum INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;


# instance fields
.field private infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

.field private mLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    sget-object v1, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->INSTANCE:Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->$VALUES:[Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 27
    new-instance v0, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;-><init>()V

    iput-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/db/DownloadDBManager;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    return-object v0
.end method

.method public static values()[Lcom/lzy/okhttpserver/download/db/DownloadDBManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->$VALUES:[Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    invoke-virtual {v0}, [Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzy/okhttpserver/download/db/DownloadDBManager;

    return-object v0
.end method


# virtual methods
.method public clear()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->deleteAll()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public create(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->create(Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->delete(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->get(Ljava/lang/String;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAll()Ljava/util/List;
    .locals 2
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
    .line 42
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-virtual {v0}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->getAll()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public replace(Lcom/lzy/okhttpserver/download/DownloadInfo;)Lcom/lzy/okhttpserver/download/DownloadInfo;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->replace(Ljava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public update(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->infoDao:Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;

    invoke-virtual {v0, p1}, Lcom/lzy/okhttpserver/download/db/DownloadInfoDao;->update(Lcom/lzy/okhttpserver/download/DownloadInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    return-void

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/lzy/okhttpserver/download/db/DownloadDBManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
