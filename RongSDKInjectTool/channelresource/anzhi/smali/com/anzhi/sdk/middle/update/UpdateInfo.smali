.class public Lcom/anzhi/sdk/middle/update/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/anzhi/sdk/middle/update/UpdateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MD5:Ljava/lang/String;

.field private deltaSize:J

.field private deltaUrl:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private forceUpdate:Z

.field private isDeltaUpdate:Z

.field private isSilent:Z

.field private mClientTimestamp:J

.field private mPkgName:Ljava/lang/String;

.field private size:J

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/anzhi/sdk/middle/update/UpdateInfo$1;

    invoke-direct {v0}, Lcom/anzhi/sdk/middle/update/UpdateInfo$1;-><init>()V

    sput-object v0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isSilent:Z

    .line 11
    return-void
.end method

.method static synthetic access$0(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/anzhi/sdk/middle/update/UpdateInfo;J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaSize:J

    return-void
.end method

.method static synthetic access$10(Lcom/anzhi/sdk/middle/update/UpdateInfo;J)V
    .locals 1

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mClientTimestamp:J

    return-void
.end method

.method static synthetic access$11(Lcom/anzhi/sdk/middle/update/UpdateInfo;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isSilent:Z

    return-void
.end method

.method static synthetic access$2(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/anzhi/sdk/middle/update/UpdateInfo;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->forceUpdate:Z

    return-void
.end method

.method static synthetic access$5(Lcom/anzhi/sdk/middle/update/UpdateInfo;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isDeltaUpdate:Z

    return-void
.end method

.method static synthetic access$6(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->MD5:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/anzhi/sdk/middle/update/UpdateInfo;J)V
    .locals 1

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->size:J

    return-void
.end method

.method static synthetic access$8(Lcom/anzhi/sdk/middle/update/UpdateInfo;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionCode:I

    return-void
.end method

.method static synthetic access$9(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getClientTimestamp()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mClientTimestamp:J

    return-wide v0
.end method

.method public getDeltasize()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaSize:J

    return-wide v0
.end method

.method public getDeltaurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->MD5:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->size:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isDeltaUpdate()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isDeltaUpdate:Z

    return v0
.end method

.method public isForceUpdate()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->forceUpdate:Z

    return v0
.end method

.method public isSilent()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isSilent:Z

    return v0
.end method

.method public setClientTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 200
    iput-wide p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mClientTimestamp:J

    .line 201
    return-void
.end method

.method public setDeltaSize(J)V
    .locals 1
    .param p1, "add_size"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaSize:J

    .line 153
    return-void
.end method

.method public setDeltaUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "add_url"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaUrl:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "down_url"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->downloadUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->forceUpdate:Z

    .line 161
    return-void
.end method

.method public setIsDeltaUpdate(Z)V
    .locals 0
    .param p1, "isAddUpdate"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isDeltaUpdate:Z

    .line 169
    return-void
.end method

.method public setMD5(Ljava/lang/String;)V
    .locals 0
    .param p1, "mD5"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->MD5:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPkgName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mPkgName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setSilent(Z)V
    .locals 0
    .param p1, "isSilent"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isSilent:Z

    .line 209
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->size:J

    .line 177
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionCode:I

    .line 137
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-wide v4, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->deltaUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->forceUpdate:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 106
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isDeltaUpdate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->MD5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-wide v4, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->size:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-wide v4, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->mClientTimestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-boolean v0, p0, Lcom/anzhi/sdk/middle/update/UpdateInfo;->isSilent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 113
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    :cond_1
    move v0, v2

    .line 106
    goto :goto_1

    :cond_2
    move v1, v2

    .line 112
    goto :goto_2
.end method
