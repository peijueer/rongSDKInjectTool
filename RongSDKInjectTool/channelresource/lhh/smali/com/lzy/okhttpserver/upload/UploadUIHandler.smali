.class public Lcom/lzy/okhttpserver/upload/UploadUIHandler;
.super Landroid/os/Handler;
.source "UploadUIHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;
    }
.end annotation


# instance fields
.field private mGlobalUploadListener:Lcom/lzy/okhttpserver/listener/UploadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private executeListener(Lcom/lzy/okhttpserver/listener/UploadListener;Lcom/lzy/okhttpserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p2}, Lcom/lzy/okhttpserver/upload/UploadInfo;->getState()I

    move-result v0

    .line 39
    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/lzy/okhttpserver/listener/UploadListener;->onProgress(Lcom/lzy/okhttpserver/upload/UploadInfo;)V

    goto :goto_0

    .line 46
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/lzy/okhttpserver/listener/UploadListener;->onProgress(Lcom/lzy/okhttpserver/upload/UploadInfo;)V

    .line 47
    invoke-virtual {p1, p3}, Lcom/lzy/okhttpserver/listener/UploadListener;->onFinish(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/lzy/okhttpserver/listener/UploadListener;->onProgress(Lcom/lzy/okhttpserver/upload/UploadInfo;)V

    .line 51
    invoke-virtual {p1, p2, p4, p5}, Lcom/lzy/okhttpserver/listener/UploadListener;->onError(Lcom/lzy/okhttpserver/upload/UploadInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;

    .line 24
    if-eqz v0, :cond_1

    .line 25
    iget-object v2, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->uploadInfo:Lcom/lzy/okhttpserver/upload/UploadInfo;

    .line 26
    iget-object v4, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->errorMsg:Ljava/lang/String;

    .line 27
    iget-object v5, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->e:Ljava/lang/Exception;

    .line 28
    iget-object v3, v0, Lcom/lzy/okhttpserver/upload/UploadUIHandler$MessageBean;->data:Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/lzy/okhttpserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/lzy/okhttpserver/listener/UploadListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/lzy/okhttpserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/lzy/okhttpserver/listener/UploadListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttpserver/upload/UploadUIHandler;->executeListener(Lcom/lzy/okhttpserver/listener/UploadListener;Lcom/lzy/okhttpserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/lzy/okhttpserver/upload/UploadInfo;->getListener()Lcom/lzy/okhttpserver/listener/UploadListener;

    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okhttpserver/upload/UploadUIHandler;->executeListener(Lcom/lzy/okhttpserver/listener/UploadListener;Lcom/lzy/okhttpserver/upload/UploadInfo;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    :cond_1
    return-void
.end method

.method public setGlobalDownloadListener(Lcom/lzy/okhttpserver/listener/UploadListener;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lzy/okhttpserver/upload/UploadUIHandler;->mGlobalUploadListener:Lcom/lzy/okhttpserver/listener/UploadListener;

    .line 58
    return-void
.end method
