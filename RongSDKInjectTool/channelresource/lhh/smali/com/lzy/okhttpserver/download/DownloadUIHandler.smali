.class public Lcom/lzy/okhttpserver/download/DownloadUIHandler;
.super Landroid/os/Handler;
.source "DownloadUIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;
    }
.end annotation


# instance fields
.field private mGlobalDownloadListener:Lcom/lzy/okhttpserver/listener/DownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private executeListener(Lcom/lzy/okhttpserver/listener/DownloadListener;Lcom/lzy/okhttpserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p2}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getState()I

    move-result v0

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 46
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/lzy/okhttpserver/listener/DownloadListener;->onProgress(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/lzy/okhttpserver/listener/DownloadListener;->onProgress(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    .line 50
    invoke-virtual {p1, p2}, Lcom/lzy/okhttpserver/listener/DownloadListener;->onFinish(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/lzy/okhttpserver/listener/DownloadListener;->onProgress(Lcom/lzy/okhttpserver/download/DownloadInfo;)V

    .line 54
    invoke-virtual {p1, p2, p3, p4}, Lcom/lzy/okhttpserver/listener/DownloadListener;->onError(Lcom/lzy/okhttpserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;

    .line 25
    if-eqz v0, :cond_2

    .line 26
    iget-object v1, v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;->downloadInfo:Lcom/lzy/okhttpserver/download/DownloadInfo;

    .line 27
    iget-object v2, v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 28
    iget-object v0, v0, Lcom/lzy/okhttpserver/download/DownloadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 29
    iget-object v3, p0, Lcom/lzy/okhttpserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/lzy/okhttpserver/listener/DownloadListener;

    if-eqz v3, :cond_0

    .line 30
    iget-object v3, p0, Lcom/lzy/okhttpserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/lzy/okhttpserver/listener/DownloadListener;

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/lzy/okhttpserver/download/DownloadUIHandler;->executeListener(Lcom/lzy/okhttpserver/listener/DownloadListener;Lcom/lzy/okhttpserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    :cond_0
    invoke-virtual {v1}, Lcom/lzy/okhttpserver/download/DownloadInfo;->getListener()Lcom/lzy/okhttpserver/listener/DownloadListener;

    move-result-object v3

    .line 33
    if-eqz v3, :cond_1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/lzy/okhttpserver/download/DownloadUIHandler;->executeListener(Lcom/lzy/okhttpserver/listener/DownloadListener;Lcom/lzy/okhttpserver/download/DownloadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 37
    :cond_1
    :goto_0
    return-void

    .line 35
    :cond_2
    const-string v0, "DownloadUIHandler DownloadInfo null"

    invoke-static {v0}, Lcom/lzy/okhttputils/utils/OkLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGlobalDownloadListener(Lcom/lzy/okhttpserver/listener/DownloadListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lzy/okhttpserver/download/DownloadUIHandler;->mGlobalDownloadListener:Lcom/lzy/okhttpserver/listener/DownloadListener;

    .line 61
    return-void
.end method
