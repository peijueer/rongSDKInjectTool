.class public abstract Lcom/iqiyi/sdk/platform/GamePlatformListener;
.super Ljava/lang/Object;
.source "GamePlatformListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leavePlatform()V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public loginResult(ILcom/iqiyi/sdk/platform/GameUser;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "user"    # Lcom/iqiyi/sdk/platform/GameUser;

    .prologue
    .line 12
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public paymentResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 16
    return-void
.end method
