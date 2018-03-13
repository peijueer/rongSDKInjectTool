.class public Lcom/muzhiwan/sdk/core/MzwSdkController;
.super Ljava/lang/Object;
.source "MzwSdkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzhiwan/sdk/core/MzwSdkController$MzwSdkControllerHolder;
    }
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/muzhiwan/sdk/core/MzwSdkController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/muzhiwan/sdk/core/InnerController;->getInstance()Lcom/muzhiwan/sdk/core/InnerController;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/muzhiwan/sdk/core/MzwSdkController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/muzhiwan/sdk/core/MzwSdkController$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/MzwSdkController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/muzhiwan/sdk/core/MzwSdkController;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/muzhiwan/sdk/core/MzwSdkController$MzwSdkControllerHolder;->access$100()Lcom/muzhiwan/sdk/core/MzwSdkController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 3

    .prologue
    .line 115
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start destory..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0}, Lcom/muzhiwan/sdk/core/InnerController;->destory()V

    .line 117
    return-void
.end method

.method public doLogin(Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;)V
    .locals 3
    .param p1, "loginCallBack"    # Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;

    .prologue
    .line 66
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start doLogin..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0, p1}, Lcom/muzhiwan/sdk/core/InnerController;->doLogin(Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;)V

    .line 68
    return-void
.end method

.method public doLogout()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start doLogout..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0}, Lcom/muzhiwan/sdk/core/InnerController;->doLogout()V

    .line 76
    return-void
.end method

.method public doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;)V
    .locals 3
    .param p1, "mzwOrder"    # Lcom/muzhiwan/sdk/service/MzwOrder;
    .param p2, "payCallBack"    # Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;

    .prologue
    .line 85
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start doPay..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0, p1, p2}, Lcom/muzhiwan/sdk/core/InnerController;->doPay(Lcom/muzhiwan/sdk/service/MzwOrder;Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;)V

    .line 87
    return-void
.end method

.method public doPostGiftCode(Ljava/lang/String;Lcom/muzhiwan/sdk/core/callback/MzwPostGiftCodeCallback;)V
    .locals 3
    .param p1, "giftCode"    # Ljava/lang/String;
    .param p2, "postGiftCallBack"    # Lcom/muzhiwan/sdk/core/callback/MzwPostGiftCodeCallback;

    .prologue
    .line 107
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start doPostGiftCode..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0, p1, p2}, Lcom/muzhiwan/sdk/core/InnerController;->doPostGiftCode(Ljava/lang/String;Lcom/muzhiwan/sdk/core/callback/MzwPostGiftCodeCallback;)V

    .line 109
    return-void
.end method

.method public doStaPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muzhiwan/sdk/core/callback/MzwStaPayCallback;)V
    .locals 3
    .param p1, "videoappid"    # Ljava/lang/String;
    .param p2, "videoid"    # Ljava/lang/String;
    .param p3, "staProductInfo"    # Ljava/lang/String;
    .param p4, "staPayCallback"    # Lcom/muzhiwan/sdk/core/callback/MzwStaPayCallback;

    .prologue
    .line 97
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start doStaPay..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/muzhiwan/sdk/core/InnerController;->doStaPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/muzhiwan/sdk/core/callback/MzwStaPayCallback;)V

    .line 99
    return-void
.end method

.method public exitGame(Lcom/muzhiwan/sdk/core/callback/MzwExitGameCallBack;)V
    .locals 3
    .param p1, "exitGameCallBack"    # Lcom/muzhiwan/sdk/core/callback/MzwExitGameCallBack;

    .prologue
    .line 125
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start doexitGame..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0, p1}, Lcom/muzhiwan/sdk/core/InnerController;->doExitGame(Lcom/muzhiwan/sdk/service/IMzwExitGameCallBack;)V

    .line 127
    return-void
.end method

.method public init(Landroid/app/Activity;ILcom/muzhiwan/sdk/core/callback/MzwInitCallback;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "screenOrientation"    # I
    .param p3, "initCallback"    # Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;

    .prologue
    .line 56
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start init..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/muzhiwan/sdk/core/InnerController;->init(Landroid/app/Activity;ILcom/muzhiwan/sdk/core/callback/MzwInitCallback;)V

    .line 58
    return-void
.end method

.method public subGameInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v0, "MZW_LOG_TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/muzhiwan/sdk/core/MzwSdkController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start doexitGame..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/muzhiwan/sdk/core/MzwSdkController;->mzwSdkControllerInner:Lcom/muzhiwan/sdk/core/InnerController;

    invoke-virtual {v0, p1}, Lcom/muzhiwan/sdk/core/InnerController;->doSubGameInfo(Ljava/lang/String;)V

    .line 136
    return-void
.end method
