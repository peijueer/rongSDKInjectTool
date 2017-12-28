.class final Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform$1;
.super Ljava/lang/Object;
.source "GameSingleSDKPlatform.java"

# interfaces
.implements Lcom/iqiyi/sdk/platform/GamePlatformInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    # getter for: Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->initListener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->access$000()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onFail(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 54
    # getter for: Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->initListener:Lcom/iqiyigame/single/sdk/SDKInitListener;
    invoke-static {}, Lcom/iqiyigame/single/sdk/GameSingleSDKPlatform;->access$000()Lcom/iqiyigame/single/sdk/SDKInitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iqiyigame/single/sdk/SDKInitListener;->onSuccess()V

    .line 55
    return-void
.end method
