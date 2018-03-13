.class public Lcom/lzy/okhttpserver/upload/UploadInfo;
.super Ljava/lang/Object;
.source "UploadInfo.java"


# instance fields
.field private listener:Lcom/lzy/okhttpserver/listener/UploadListener;

.field private networkSpeed:J

.field private progress:F

.field private request:Lcom/lzy/okhttputils/request/BaseBodyRequest;

.field private state:I

.field private task:Lcom/lzy/okhttpserver/upload/UploadTask;

.field private taskKey:Ljava/lang/String;

.field private totalLength:J

.field private uploadLength:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 117
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/lzy/okhttpserver/download/DownloadInfo;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 119
    invoke-virtual {p0}, Lcom/lzy/okhttpserver/upload/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/lzy/okhttpserver/listener/UploadListener;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->listener:Lcom/lzy/okhttpserver/listener/UploadListener;

    return-object v0
.end method

.method public getNetworkSpeed()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->networkSpeed:J

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->progress:F

    return v0
.end method

.method public getRequest()Lcom/lzy/okhttputils/request/BaseBodyRequest;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->request:Lcom/lzy/okhttputils/request/BaseBodyRequest;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->state:I

    return v0
.end method

.method public getTask()Lcom/lzy/okhttpserver/upload/UploadTask;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->task:Lcom/lzy/okhttpserver/upload/UploadTask;

    return-object v0
.end method

.method public getTaskKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->taskKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->totalLength:J

    return-wide v0
.end method

.method public getUploadLength()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->uploadLength:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->listener:Lcom/lzy/okhttpserver/listener/UploadListener;

    .line 112
    return-void
.end method

.method public setListener(Lcom/lzy/okhttpserver/listener/UploadListener;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->listener:Lcom/lzy/okhttpserver/listener/UploadListener;

    .line 108
    return-void
.end method

.method public setNetworkSpeed(J)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->networkSpeed:J

    .line 76
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->progress:F

    .line 52
    return-void
.end method

.method public setRequest(Lcom/lzy/okhttputils/request/BaseBodyRequest;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->request:Lcom/lzy/okhttputils/request/BaseBodyRequest;

    .line 92
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->state:I

    .line 84
    return-void
.end method

.method public setTask(Lcom/lzy/okhttpserver/upload/UploadTask;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->task:Lcom/lzy/okhttpserver/upload/UploadTask;

    .line 100
    return-void
.end method

.method public setTaskKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->taskKey:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTotalLength(J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->totalLength:J

    .line 60
    return-void
.end method

.method public setUploadLength(J)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->uploadLength:J

    .line 68
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadInfo;->url:Ljava/lang/String;

    .line 36
    return-void
.end method
