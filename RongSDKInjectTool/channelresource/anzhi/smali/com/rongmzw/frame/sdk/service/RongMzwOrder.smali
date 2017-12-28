.class public Lcom/rongmzw/frame/sdk/service/RongMzwOrder;
.super Ljava/lang/Object;
.source "RongMzwOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rongmzw/frame/sdk/service/RongMzwOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private productdesc:Ljava/lang/String;

.field private productid:Ljava/lang/String;

.field private productname:Ljava/lang/String;

.field private productorderid:Ljava/lang/String;

.field private productprice:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder$1;

    invoke-direct {v0}, Lcom/rongmzw/frame/sdk/service/RongMzwOrder$1;-><init>()V

    sput-object v0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productid:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productname:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productdesc:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productprice:D

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productorderid:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getProductdesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productname:Ljava/lang/String;

    return-object v0
.end method

.method public getProductorderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productorderid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductprice()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productprice:D

    return-wide v0
.end method

.method public setProductdesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "productdesc"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productdesc:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .locals 0
    .param p1, "productid"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProductname(Ljava/lang/String;)V
    .locals 0
    .param p1, "productname"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productname:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setProductorderid(Ljava/lang/String;)V
    .locals 0
    .param p1, "productorderid"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productorderid:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setProductprice(D)V
    .locals 1
    .param p1, "productprice"    # D

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productprice:D

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RongMzwOrder [productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productdesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productdesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productprice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productprice:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productorderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productorderid:Ljava/lang/String;

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
    .line 39
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productdesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-wide v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productprice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/service/RongMzwOrder;->productorderid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return-void
.end method
