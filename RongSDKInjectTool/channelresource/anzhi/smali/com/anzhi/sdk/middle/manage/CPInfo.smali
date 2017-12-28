.class public Lcom/anzhi/sdk/middle/manage/CPInfo;
.super Ljava/lang/Object;
.source "CPInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/anzhi/sdk/middle/manage/CPInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appKey:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private isAccount:Z

.field private isRank:Z

.field private secret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/anzhi/sdk/middle/manage/CPInfo$1;

    invoke-direct {v0}, Lcom/anzhi/sdk/middle/manage/CPInfo$1;-><init>()V

    sput-object v0, Lcom/anzhi/sdk/middle/manage/CPInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->appKey:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->secret:Ljava/lang/String;

    .line 22
    const-string v0, "Anzhi"

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->channel:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->gameName:Ljava/lang/String;

    .line 11
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->appKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->secret:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->channel:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->gameName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public isAccount()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->isAccount:Z

    return v0
.end method

.method public isRank()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->isRank:Z

    return v0
.end method

.method public setAccount(Z)V
    .locals 0
    .param p1, "isAccount"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->isAccount:Z

    .line 84
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->appKey:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->channel:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameName"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->gameName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRank(Z)V
    .locals 0
    .param p1, "isRank"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->isRank:Z

    .line 76
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->secret:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CPInfo [appKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, ", openOfficialLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->appKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->secret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->channel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/CPInfo;->gameName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
