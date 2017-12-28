.class public Lcom/anzhi/sdk/middle/net/ApnInfo;
.super Ljava/lang/Object;
.source "ApnInfo.java"


# instance fields
.field private apn:Ljava/lang/String;

.field private extraNetInfo:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private mnc:Ljava/lang/String;

.field private netType:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field private port:I

.field private proxy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraNetInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->extraNetInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->netType:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->netType:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-virtual {v0}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->name()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->extraNetInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->mnc:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Lcom/anzhi/sdk/middle/net/Connectivity$NetType;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->netType:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->port:I

    return v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->proxy:Ljava/lang/String;

    return-object v0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 0
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->apn:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setExtraNetInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraNetInfo"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->extraNetInfo:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->mcc:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 0
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->mnc:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setNetType(Lcom/anzhi/sdk/middle/net/Connectivity$NetType;)V
    .locals 0
    .param p1, "netType"    # Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->netType:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    .line 98
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->port:I

    .line 94
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/anzhi/sdk/middle/net/ApnInfo;->proxy:Ljava/lang/String;

    .line 90
    return-void
.end method
