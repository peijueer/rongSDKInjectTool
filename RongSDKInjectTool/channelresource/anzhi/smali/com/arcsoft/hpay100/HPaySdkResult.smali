.class public Lcom/arcsoft/hpay100/HPaySdkResult;
.super Ljava/lang/Object;


# static fields
.field public static final FAILED_MSG_DATA:Ljava/lang/String; = "\u7cfb\u7edf\u7e41\u5fd9"

.field public static final FAILED_MSG_PAYCODE:Ljava/lang/String; = "\u8ba1\u8d39\u70b9\u65e0\u6548"

.field public static final FAILED_MSG_PLUG:Ljava/lang/String; = "\u63d2\u4ef6\u4e2d\u4e0d\u53ef\u652f\u4ed8"

.field public static final FAILED_MSG_SMS_NULL:Ljava/lang/String; = "\u77ed\u4fe1\u5730\u5740\u6216\u5185\u5bb9\u4e3a\u7a7a"

.field public static final FAILED_MSG_SMS_SEND:Ljava/lang/String; = "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25"

.field public static final FAILED_MSG_SMS_SIM:Ljava/lang/String; = "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5SIM\u5361"

.field public static final FAILED_MSG_SMS_TIMEOUT:Ljava/lang/String; = "\u77ed\u4fe1\u53d1\u9001\u8d85\u65f6"

.field public static final FAILED_MSG_VC_TIMEOUT:Ljava/lang/String; = "\u9a8c\u8bc1\u7801\u83b7\u53d6\u8d85\u65f6"

.field public static final FAILED_TYPE_DATA:I = 0x17da

.field public static final FAILED_TYPE_PAYCODE:I = 0x17d9

.field public static final FAILED_TYPE_PLUG:I = 0x17db

.field public static final FAILED_TYPE_SMS_NULL:I = 0x17d6

.field public static final FAILED_TYPE_SMS_SEND:I = 0x17d5

.field public static final FAILED_TYPE_SMS_SIM:I = 0x17d7

.field public static final FAILED_TYPE_SMS_TIMEOUT:I = 0x17d8

.field public static final FAILED_TYPE_VC_TIMEOUT:I = 0x17dd

.field public static final PAY_STATUS_CANCEL:I = 0x3

.field public static final PAY_STATUS_FAILED:I = 0x2

.field public static final PAY_STATUS_SUCCESS:I = 0x1

.field public static final PAY_TYPE_DD:I = 0x1

.field public static final PAY_TYPE_DY:I = 0x2


# instance fields
.field public mChID:Ljava/lang/String;

.field public mChType:Ljava/lang/String;

.field public mCodeType:I

.field private mFailedMsg:Ljava/lang/String;

.field private mFailedType:I

.field private mIsQuery:Z

.field private mOrderAmount:I

.field private mOrderIdAPP:Ljava/lang/String;

.field private mOrderIdHR:Ljava/lang/String;

.field public mPayId:Ljava/lang/String;

.field public mPayName:Ljava/lang/String;

.field private mPayStatus:I

.field private mRealAmount:I

.field private mScheme:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mFailedMsg:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mScheme:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdHR:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdAPP:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderAmount:I

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mRealAmount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayId:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mCodeType:I

    iput-boolean v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mIsQuery:Z

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderAmount:I

    return v0
.end method

.method public getChID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChID:Ljava/lang/String;

    return-object v0
.end method

.method public getChType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChType:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeType()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mCodeType:I

    return v0
.end method

.method public getFailedMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mFailedMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedType()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mFailedType:I

    return v0
.end method

.method public getOrderIdAPP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdAPP:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderIdHR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdHR:Ljava/lang/String;

    return-object v0
.end method

.method public getPayID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayStatus()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayStatus:I

    return v0
.end method

.method public getQuery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mIsQuery:Z

    return v0
.end method

.method public getRealAmount()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mRealAmount:I

    return v0
.end method

.method public getScheme()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mScheme:I

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderAmount:I

    return-void
.end method

.method public setChID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChID:Ljava/lang/String;

    return-void
.end method

.method public setChType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChType:Ljava/lang/String;

    return-void
.end method

.method public setCodeType(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mCodeType:I

    return-void
.end method

.method public setFailedMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mFailedMsg:Ljava/lang/String;

    return-void
.end method

.method public setFailedType(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mFailedType:I

    return-void
.end method

.method public setOrderIdAPP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdAPP:Ljava/lang/String;

    return-void
.end method

.method public setOrderIdHR(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdHR:Ljava/lang/String;

    return-void
.end method

.method public setPayID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayId:Ljava/lang/String;

    return-void
.end method

.method public setPayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayName:Ljava/lang/String;

    return-void
.end method

.method public setPayStatus(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayStatus:I

    return-void
.end method

.method public setQuery(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mIsQuery:Z

    return-void
.end method

.method public setRealAmount(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mRealAmount:I

    return-void
.end method

.method public setScheme(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mScheme:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HPaySdkResult [mPayStatus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFailedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mFailedType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFailedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mFailedMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mScheme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderIdHR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdHR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderIdAPP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderIdAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrderAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mOrderAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRealAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mRealAmount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mChType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mCodeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/arcsoft/hpay100/HPaySdkResult;->mIsQuery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
