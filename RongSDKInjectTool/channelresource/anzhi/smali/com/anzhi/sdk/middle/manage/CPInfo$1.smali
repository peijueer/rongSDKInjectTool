.class Lcom/anzhi/sdk/middle/manage/CPInfo$1;
.super Ljava/lang/Object;
.source "CPInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anzhi/sdk/middle/manage/CPInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/anzhi/sdk/middle/manage/CPInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/anzhi/sdk/middle/manage/CPInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 109
    new-instance v0, Lcom/anzhi/sdk/middle/manage/CPInfo;

    invoke-direct {v0}, Lcom/anzhi/sdk/middle/manage/CPInfo;-><init>()V

    .line 110
    .local v0, "info":Lcom/anzhi/sdk/middle/manage/CPInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/manage/CPInfo;->access$0(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/manage/CPInfo;->access$1(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/manage/CPInfo;->access$2(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/manage/CPInfo;->access$3(Lcom/anzhi/sdk/middle/manage/CPInfo;Ljava/lang/String;)V

    .line 114
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/CPInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/anzhi/sdk/middle/manage/CPInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/anzhi/sdk/middle/manage/CPInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 119
    new-array v0, p1, [Lcom/anzhi/sdk/middle/manage/CPInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/manage/CPInfo$1;->newArray(I)[Lcom/anzhi/sdk/middle/manage/CPInfo;

    move-result-object v0

    return-object v0
.end method
