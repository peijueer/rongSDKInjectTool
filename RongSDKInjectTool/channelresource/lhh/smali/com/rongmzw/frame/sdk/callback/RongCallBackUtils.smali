.class public Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;
.super Ljava/lang/Object;
.source "RongCallBackUtils.java"


# static fields
.field public static instance:Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

.field public static rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitGameCallBack(ILjava/lang/String;)V
    .locals 1
    .param p0, "callBackCode"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->getInstance()Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameCallback(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method private exitGameCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callBackCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static exitGameFailedCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameCallBack(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public static exitGameSuccessCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->exitGameCallBack(ILjava/lang/String;)V

    .line 66
    return-void
.end method

.method public static getInstance()Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->instance:Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    invoke-direct {v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;-><init>()V

    sput-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->instance:Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->instance:Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static initCallBack(ILjava/lang/String;)V
    .locals 1
    .param p0, "callBackCode"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->getInstance()Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initCallback(ILjava/lang/String;)V

    .line 22
    return-void
.end method

.method private initCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callBackCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public static initFailedCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initCallBack(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public static initSuccessCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initCallBack(ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public static loginCallBack(ILjava/lang/String;)V
    .locals 1
    .param p0, "callBackCode"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->getInstance()Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginCallback(ILjava/lang/String;)V

    .line 34
    return-void
.end method

.method private loginCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callBackCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public static loginFailedCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginCallBack(ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public static loginSuccessCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginCallBack(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public static logoutCallBack()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x6

    const-string v1, "logout ..."

    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginCallBack(ILjava/lang/String;)V

    .line 46
    return-void
.end method

.method public static payCallBack(ILjava/lang/String;)V
    .locals 1
    .param p0, "callBackCode"    # I
    .param p1, "orderInfo"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->getInstance()Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallback(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method private payCallback(ILjava/lang/String;)V
    .locals 2
    .param p1, "callBackCode"    # I
    .param p2, "orderInfo"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static payFailedCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "orderInfo"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallBack(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public static paySuccessCallBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "orderInfo"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallBack(ILjava/lang/String;)V

    .line 54
    return-void
.end method
