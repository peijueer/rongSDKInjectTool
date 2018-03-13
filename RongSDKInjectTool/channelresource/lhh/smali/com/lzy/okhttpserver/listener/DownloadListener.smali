.class public abstract Lcom/lzy/okhttpserver/listener/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# static fields
.field public static final DEFAULT_DOWNLOAD_LISTENER:Lcom/lzy/okhttpserver/listener/DownloadListener;


# instance fields
.field private userTag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/lzy/okhttpserver/listener/DownloadListener$1;

    invoke-direct {v0}, Lcom/lzy/okhttpserver/listener/DownloadListener$1;-><init>()V

    sput-object v0, Lcom/lzy/okhttpserver/listener/DownloadListener;->DEFAULT_DOWNLOAD_LISTENER:Lcom/lzy/okhttpserver/listener/DownloadListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzy/okhttpserver/listener/DownloadListener;->userTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onAdd(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public abstract onError(Lcom/lzy/okhttpserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onFinish(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
.end method

.method public abstract onProgress(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
.end method

.method public onRemove(Lcom/lzy/okhttpserver/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public setUserTag(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lzy/okhttpserver/listener/DownloadListener;->userTag:Ljava/lang/Object;

    .line 43
    return-void
.end method
