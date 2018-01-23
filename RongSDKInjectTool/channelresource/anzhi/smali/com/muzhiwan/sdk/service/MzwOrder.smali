.class public Lcom/muzhiwan/sdk/service/MzwOrder;
.super Ljava/lang/Object;
.source "MzwOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/muzhiwan/sdk/service/MzwOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private account:D

.field private accountname:Ljava/lang/String;

.field private extern:Ljava/lang/String;

.field private money:D

.field private orderid:Ljava/lang/String;

.field private processing:Z

.field private productdesc:Ljava/lang/String;

.field private productid:Ljava/lang/String;

.field private productname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/muzhiwan/sdk/service/MzwOrder$1;

    invoke-direct {v0}, Lcom/muzhiwan/sdk/service/MzwOrder$1;-><init>()V

    sput-object v0, Lcom/muzhiwan/sdk/service/MzwOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productid:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productname:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productdesc:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->accountname:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->orderid:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->money:D

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->account:D

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->extern:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->account:D

    return-wide v0
.end method

.method public getAccountname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->accountname:Ljava/lang/String;

    return-object v0
.end method

.method public getExtern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->extern:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()D
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->money:D

    return-wide v0
.end method

.method public getOrderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductdesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productname:Ljava/lang/String;

    return-object v0
.end method

.method public isProcessing()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->processing:Z

    return v0
.end method

.method public setAccount(D)V
    .locals 1
    .param p1, "account"    # D

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->account:D

    .line 118
    return-void
.end method

.method public setAccountname(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountname"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->accountname:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setExtern(Ljava/lang/String;)V
    .locals 0
    .param p1, "extern"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->extern:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setMoney(D)V
    .locals 1
    .param p1, "money"    # D

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->money:D

    .line 102
    return-void
.end method

.method public setOrderid(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderid"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->orderid:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setProcessing(Z)V
    .locals 0
    .param p1, "processing"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->processing:Z

    .line 126
    return-void
.end method

.method public setProductdesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "productdesc"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productdesc:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .locals 0
    .param p1, "productid"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productid:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setProductname(Ljava/lang/String;)V
    .locals 0
    .param p1, "productname"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productname:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MzwOrder [productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productdesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productdesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accountname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->accountname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->money:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->extern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->productdesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->accountname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->orderid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-wide v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->money:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 52
    iget-wide v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->account:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 53
    iget-object v0, p0, Lcom/muzhiwan/sdk/service/MzwOrder;->extern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
