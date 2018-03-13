.class public Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;
.super Ljava/lang/Object;
.source "RongUserInfo.java"


# instance fields
.field private cptoken:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private username:Ljava/lang/String;


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
    .line 15
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->cptoken:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setCptoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "cptoken"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->cptoken:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->deviceId:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestUrl"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->requestUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->uid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongUserInfo;->username:Ljava/lang/String;

    .line 44
    return-void
.end method
