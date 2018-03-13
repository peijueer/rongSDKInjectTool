.class final Lcom/lzy/okhttpserver/listener/DownloadListener$1;
.super Lcom/lzy/okhttpserver/listener/DownloadListener;
.source "DownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okhttpserver/listener/DownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lzy/okhttpserver/listener/DownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okhttpserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public onFinish(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onProgress(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
