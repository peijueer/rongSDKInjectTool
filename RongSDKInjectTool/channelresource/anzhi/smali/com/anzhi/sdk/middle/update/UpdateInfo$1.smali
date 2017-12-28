.class Lcom/anzhi/sdk/middle/update/UpdateInfo$1;
.super Ljava/lang/Object;
.source "UpdateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anzhi/sdk/middle/update/UpdateInfo;
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
        "Lcom/anzhi/sdk/middle/update/UpdateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/anzhi/sdk/middle/update/UpdateInfo;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    new-instance v0, Lcom/anzhi/sdk/middle/update/UpdateInfo;

    invoke-direct {v0}, Lcom/anzhi/sdk/middle/update/UpdateInfo;-><init>()V

    .line 77
    .local v0, "info":Lcom/anzhi/sdk/middle/update/UpdateInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$0(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$1(Lcom/anzhi/sdk/middle/update/UpdateInfo;J)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$2(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$3(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$4(Lcom/anzhi/sdk/middle/update/UpdateInfo;Z)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$5(Lcom/anzhi/sdk/middle/update/UpdateInfo;Z)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$6(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$7(Lcom/anzhi/sdk/middle/update/UpdateInfo;J)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$8(Lcom/anzhi/sdk/middle/update/UpdateInfo;I)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$9(Lcom/anzhi/sdk/middle/update/UpdateInfo;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$10(Lcom/anzhi/sdk/middle/update/UpdateInfo;J)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    invoke-static {v0, v2}, Lcom/anzhi/sdk/middle/update/UpdateInfo;->access$11(Lcom/anzhi/sdk/middle/update/UpdateInfo;Z)V

    .line 89
    return-object v0

    :cond_0
    move v1, v3

    .line 81
    goto :goto_0

    :cond_1
    move v1, v3

    .line 82
    goto :goto_1

    :cond_2
    move v2, v3

    .line 88
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/anzhi/sdk/middle/update/UpdateInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 94
    new-array v0, p1, [Lcom/anzhi/sdk/middle/update/UpdateInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/anzhi/sdk/middle/update/UpdateInfo$1;->newArray(I)[Lcom/anzhi/sdk/middle/update/UpdateInfo;

    move-result-object v0

    return-object v0
.end method
