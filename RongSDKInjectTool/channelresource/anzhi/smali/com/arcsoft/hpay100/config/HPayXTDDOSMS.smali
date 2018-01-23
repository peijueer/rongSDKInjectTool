.class public Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2323168f214aef88L


# instance fields
.field public mAmount:I

.field public mChID:Ljava/lang/String;

.field public mChType:Ljava/lang/String;

.field public mCodeType:I

.field public mCorp:I

.field public mDetail:Ljava/lang/String;

.field public mIntervalTimes:I

.field public mNetGameCode:I

.field public mOrderidAPP:Ljava/lang/String;

.field public mOrderidHR:Ljava/lang/String;

.field public mPayId:Ljava/lang/String;

.field public mPayName:Ljava/lang/String;

.field public mPhone:Ljava/lang/String;

.field public mRealAmount:I

.field public mSMSAddress:[Ljava/lang/String;

.field public mSMSContent:[Ljava/lang/String;

.field public mScheme:I

.field private mSendIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSendIndex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    iput v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mRealAmount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCorp:I

    iput v2, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    iput v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCodeType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayName:Ljava/lang/String;

    iput v2, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mIntervalTimes:I

    iput v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mNetGameCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPhone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mDetail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;)I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSendIndex:I

    return v0
.end method


# virtual methods
.method public requestPay(Landroid/content/Context;ILcom/arcsoft/hpay100/config/v;)V
    .locals 11

    const/16 v2, 0x17d6

    const/4 v1, 0x0

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSAddress:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSContent:[Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "\u77ed\u4fe1\u5730\u5740\u6216\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {p0, v2, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/arcsoft/hpay100/config/v;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    iget v3, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    iget v7, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "6102"

    move-object v0, p1

    move v10, p2

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSAddress:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSContent:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_5

    :cond_3
    if-eqz p3, :cond_4

    const-string v0, "\u77ed\u4fe1\u5730\u5740\u6216\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {p0, v2, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/arcsoft/hpay100/config/v;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_4
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    iget v3, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    iget v7, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "6102"

    move-object v0, p1

    move v10, p2

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSAddress:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSContent:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    const-string v0, "\u77ed\u4fe1\u5730\u5740\u6216\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {p0, v2, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/arcsoft/hpay100/config/v;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_7
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    iget v3, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    iget v7, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "6102"

    move-object v0, p1

    move v10, p2

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p3, :cond_9

    const/16 v0, 0x17d7

    const-string v1, "\u77ed\u4fe1\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5SIM\u5361"

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/arcsoft/hpay100/config/v;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_9
    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    iget v3, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    iget v7, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "6103"

    move-object v0, p1

    move v10, p2

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSAddress:[Ljava/lang/String;

    aget-object v6, v0, v1

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSContent:[Ljava/lang/String;

    aget-object v7, v0, v1

    new-instance v0, Lcom/arcsoft/hpay100/config/ap;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/config/ap;-><init>(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;Lcom/arcsoft/hpay100/config/v;Landroid/content/Context;ILandroid/os/Handler;)V

    invoke-static {p1, v6, v7, v0}, Lcom/arcsoft/hpay100/config/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ag;)V

    iget v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSendIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSendIndex:I

    goto/16 :goto_0
.end method
