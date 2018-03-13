.class public Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;
.super Ljava/lang/Object;
.source "RongUserInfo.java"


# instance fields
.field private cptoken:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCptoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->cptoken:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCptoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "cptoken"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->cptoken:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->deviceId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->requestUrl:Ljava/lang/String;

    .line 34
    return-void
.end method
