.class public final Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appId:Ljava/lang/String;

.field public consumerId:Ljava/lang/String;

.field public consumerName:Ljava/lang/String;

.field public mhtCharset:Ljava/lang/String;

.field public mhtCurrencyType:Ljava/lang/String;

.field public mhtLimitPay:Ljava/lang/String;

.field public mhtOrderAmt:Ljava/lang/String;

.field public mhtOrderDetail:Ljava/lang/String;

.field public mhtOrderName:Ljava/lang/String;

.field public mhtOrderNo:Ljava/lang/String;

.field public mhtOrderStartTime:Ljava/lang/String;

.field public mhtOrderTimeOut:Ljava/lang/String;

.field public mhtOrderType:Ljava/lang/String;

.field public mhtReserved:Ljava/lang/String;

.field public mhtSignType:Ljava/lang/String;

.field public mhtSignature:Ljava/lang/String;

.field public mhtSubAppId:Ljava/lang/String;

.field public notifyUrl:Ljava/lang/String;

.field public outputType:Ljava/lang/String;

.field public payChannelType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->appId:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderNo:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderName:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderType:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtCurrencyType:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderAmt:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderDetail:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderTimeOut:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtOrderStartTime:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->notifyUrl:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtCharset:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->payChannelType:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtReserved:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->outputType:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtSubAppId:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtLimitPay:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->consumerId:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->consumerName:Ljava/lang/String;

    .line 83
    const-string v0, "MD5"

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtSignType:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/manager/route/dto/RequestParams;->mhtSignature:Ljava/lang/String;

    .line 3
    return-void
.end method
