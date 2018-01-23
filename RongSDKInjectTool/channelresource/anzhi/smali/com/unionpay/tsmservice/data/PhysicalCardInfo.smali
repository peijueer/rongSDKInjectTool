.class public Lcom/unionpay/tsmservice/data/PhysicalCardInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/unionpay/tsmservice/data/PhysicalCardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_CREDIT:Ljava/lang/String; = "02"

.field public static final TYPE_DEBIT:Ljava/lang/String; = "01"


# instance fields
.field private mBankLogo:Ljava/lang/String;

.field private mBankName:Ljava/lang/String;

.field private mCardIcon:Ljava/lang/String;

.field private mCardNo:Ljava/lang/String;

.field private mCardType:Ljava/lang/String;

.field private mReferenceID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo$1;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/data/PhysicalCardInfo$1;-><init>()V

    sput-object v0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mReferenceID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardNo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardIcon:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankLogo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mReferenceID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardNo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardIcon:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankLogo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mReferenceID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardNo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankLogo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBankLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankName:Ljava/lang/String;

    return-object v0
.end method

.method public getCardIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardNo:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardType:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mReferenceID:Ljava/lang/String;

    return-object v0
.end method

.method public setBankLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankLogo:Ljava/lang/String;

    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankName:Ljava/lang/String;

    return-void
.end method

.method public setCardIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardIcon:Ljava/lang/String;

    return-void
.end method

.method public setCardNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardNo:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardType:Ljava/lang/String;

    return-void
.end method

.method public setReferenceID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mReferenceID:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mReferenceID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mCardIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/tsmservice/data/PhysicalCardInfo;->mBankLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
