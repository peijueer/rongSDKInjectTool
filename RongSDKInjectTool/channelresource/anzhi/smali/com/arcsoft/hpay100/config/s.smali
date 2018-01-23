.class public Lcom/arcsoft/hpay100/config/s;
.super Ljava/lang/Object;


# static fields
.field public static final A:I = 0x12

.field public static final B:I = 0x13

.field public static final C:I = 0x14

.field public static final D:I = 0x15

.field public static final E:I = 0x16

.field public static final F:I = 0x17

.field public static final G:I = 0x18

.field public static final H:I = 0x19

.field public static final I:I = 0x1a

.field public static final J:I = 0x1b

.field public static final K:I = 0x1c

.field public static final L:I = 0x1d

.field public static a:Landroid/content/SharedPreferences; = null

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x0

.field public static final f:I = 0x2

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x5

.field public static final o:I = 0x6

.field public static final p:I = 0x7

.field public static final q:I = 0x8

.field public static final r:I = 0x9

.field public static final s:I = 0xa

.field public static final t:I = 0xb

.field public static final u:I = 0xc

.field public static final v:I = 0xd

.field public static final w:I = 0xe

.field public static final x:I = 0xf

.field public static final y:I = 0x10

.field public static final z:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;
    .locals 2

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    invoke-virtual {v0, p0}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    invoke-virtual {v0, p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/arcsoft/hpay100/HPaySdkResult;->setCodeType(I)V

    invoke-virtual {v0, p3}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    invoke-virtual {v0, p5}, Lcom/arcsoft/hpay100/HPaySdkResult;->setFailedType(I)V

    invoke-virtual {v0, p6}, Lcom/arcsoft/hpay100/HPaySdkResult;->setFailedMsg(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/arcsoft/hpay100/config/HPaySMS;)Lcom/arcsoft/hpay100/HPaySdkResult;
    .locals 2

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdHR(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setScheme(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setCodeType(I)V

    return-object v0
.end method

.method public static a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;
    .locals 2

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdHR(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setScheme(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setCodeType(I)V

    const/16 v1, 0x17d8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x68

    if-eq p1, v1, :cond_0

    const/16 v1, 0x81

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setQuery(Z)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setFailedType(I)V

    invoke-virtual {v0, p2}, Lcom/arcsoft/hpay100/HPaySdkResult;->setFailedMsg(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setQuery(Z)V

    goto :goto_0
.end method

.method public static a(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;)Lcom/arcsoft/hpay100/HPaySdkResult;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    invoke-virtual {v0, v2}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdHR(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setScheme(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mRealAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCodeType:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setCodeType(I)V

    invoke-virtual {v0, v2}, Lcom/arcsoft/hpay100/HPaySdkResult;->setQuery(Z)V

    return-object v0
.end method

.method public static a(Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;
    .locals 2

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdHR(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setScheme(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mRealAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCodeType:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setCodeType(I)V

    const/16 v1, 0x17d8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x68

    if-eq p1, v1, :cond_0

    const/16 v1, 0x81

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setQuery(Z)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setFailedType(I)V

    invoke-virtual {v0, p2}, Lcom/arcsoft/hpay100/HPaySdkResult;->setFailedMsg(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setQuery(Z)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 9

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-direct {v2}, Lcom/arcsoft/hpay100/config/HPaySMS;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "spnumber"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "sms_msg"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/arcsoft/hpay100/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@@@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    const-string v0, "@@@"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :try_start_1
    const-string v0, "isMonthly"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "ch_id"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    const-string v0, "ch_type"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    const-string v0, "amount"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v0, "real_amount"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    const-string v0, "scheme"

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    const-string v0, "orderid"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    const-string v0, "sms_reply_num"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyAdderss:Ljava/lang/String;

    const-string v0, "sms_reply_content"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyContent:Ljava/lang/String;

    const-string v0, "detail"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    const-string v0, "sms_interval"

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mIntervalTimes:I

    const-string v0, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hPaySMS.mIntervalTimes:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mIntervalTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mIntervalTimes:I

    const/16 v4, 0x1e

    if-le v0, v4, :cond_2

    const/4 v0, 0x3

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mIntervalTimes:I

    :cond_2
    const-string v0, "sms_reply_keyword"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyKeyword:[Ljava/lang/String;

    :cond_3
    const-string v0, "sdk_fee_type"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const-string v0, "phone"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mPhone:Ljava/lang/String;

    const-string v0, "corp_fee_code"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mCorpFeeCode:Ljava/lang/String;

    const-string v0, "fee_url"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mFeeUrl:Ljava/lang/String;

    const-string v0, "open_url"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOpenUrl:Ljava/lang/String;

    const-string v0, "isfullscreen"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mIsFullScreen:I

    const-string v0, "yzm_regx"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    if-nez v4, :cond_4

    :try_start_3
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v5, "utf-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mYzmRegx:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    :try_start_4
    const-string v0, "js_url_map"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mJsUrlHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    :goto_4
    move-object v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    move-object v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_6
    :try_start_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "dalongTest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "jsurl key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "dalongTest"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "jsurl value:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mJsUrlHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-static {v0, p0}, Lcom/arcsoft/hpay100/config/s;->a([CI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a([CI)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :cond_0
    :goto_0
    if-lt v0, p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ltz v3, :cond_0

    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-char v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->h:Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "filter_numner"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "keyword"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "@@@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "@@@"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v5

    array-length v3, v6

    if-lez v7, :cond_2

    if-lez v3, :cond_2

    if-ne v7, v3, :cond_2

    move v3, v2

    :goto_3
    if-lt v3, v7, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v8, Lcom/arcsoft/hpay100/config/r;

    invoke-direct {v8}, Lcom/arcsoft/hpay100/config/r;-><init>()V

    aget-object v9, v5, v3

    iput-object v9, v8, Lcom/arcsoft/hpay100/config/r;->a:Ljava/lang/String;

    aget-object v9, v6, v3

    iput-object v9, v8, Lcom/arcsoft/hpay100/config/r;->b:Ljava/lang/String;

    iget-object v9, v8, Lcom/arcsoft/hpay100/config/r;->a:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v8, Lcom/arcsoft/hpay100/config/r;->b:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v0, "hpay_game_config"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    const-string v1, "hpay_game_filter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/arcsoft/hpay100/config/c;->i:I

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    const-string v1, "hpay_game_filter_content"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->h:Ljava/lang/String;

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    const-string v1, "hpay_game_confirm"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/arcsoft/hpay100/config/c;->j:I

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    const-string v1, "hpay_game_scheme_content"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->r:Ljava/lang/String;

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    const-string v1, "hpay_game_next_inittime"

    const-wide/32 v2, 0x15180

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/arcsoft/hpay100/config/c;->k:J

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HPAY_NEXT_INITTIME 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/arcsoft/hpay100/config/c;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    const-string v0, "hpay_game_config"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v0, "is_filter"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/arcsoft/hpay100/config/c;->i:I

    const-string v0, "is_confirm"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/arcsoft/hpay100/config/c;->j:I

    const-string v0, "white"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "msisdn"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "next_interval_sec"

    const-wide/32 v6, 0x15180

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/arcsoft/hpay100/config/c;->k:J

    invoke-static {v4}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "@@@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    move v0, v1

    :goto_1
    if-lt v0, v5, :cond_a

    :cond_3
    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->h:Ljava/lang/String;

    const-string v0, "filters"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->h:Ljava/lang/String;

    :cond_4
    const-string v0, "fee_code_scheme"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arcsoft/hpay100/config/c;->r:Ljava/lang/String;

    :cond_5
    const-string v0, "reserveurl"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "@@@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v5, v4

    move v0, v1

    :goto_2
    if-lt v0, v5, :cond_b

    :cond_6
    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "hpay_game_filter"

    sget v5, Lcom/arcsoft/hpay100/config/c;->i:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "hpay_game_confirm"

    sget v5, Lcom/arcsoft/hpay100/config/c;->j:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "hpay_game_filter_content"

    sget-object v5, Lcom/arcsoft/hpay100/config/c;->h:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/arcsoft/hpay100/config/c;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "hpay_game_scheme_content"

    sget-object v5, Lcom/arcsoft/hpay100/config/c;->r:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    const-string v0, "dalongTest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HPAY_NEXT_INITTIME 2:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/arcsoft/hpay100/config/c;->k:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "hpay_game_next_inittime"

    sget-wide v6, Lcom/arcsoft/hpay100/config/c;->k:J

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "init_spnumber"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "init_msg"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-nez v5, :cond_8

    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/arcsoft/hpay100/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v4

    const-string v6, "utf-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@@@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v0, "@@@"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    array-length v0, v5

    if-lez v0, :cond_8

    array-length v0, v4

    if-lez v0, :cond_8

    array-length v0, v5

    array-length v6, v4

    if-ne v0, v6, :cond_8

    move v0, v1

    :goto_3
    array-length v6, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v0, v6, :cond_c

    :cond_8
    :goto_4
    :try_start_2
    const-string v0, "initsdk"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_5
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "dalongTest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "init key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "dalongTest"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "init value:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/arcsoft/hpay100/config/c;->v:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    :try_start_4
    aget-object v6, v4, v0

    invoke-static {p0, v6}, Lcom/arcsoft/hpay100/config/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    aget-object v6, v4, v0

    invoke-static {p0, v6}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_c
    :try_start_5
    aget-object v6, v5, v0

    aget-object v7, v4, v0

    invoke-static {v6, v7}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_e
    const/16 v6, 0xb

    :try_start_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/arcsoft/hpay100/config/c;->u:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_5

    :cond_f
    move v0, v2

    goto :goto_7
.end method

.method public static b(Lcom/arcsoft/hpay100/config/HPaySMS;)Lcom/arcsoft/hpay100/HPaySdkResult;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkResult;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkResult;-><init>()V

    invoke-virtual {v0, v2}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayStatus(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setChType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdHR(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setOrderIdAPP(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setScheme(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayName(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setAmount(I)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setRealAmount(I)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setPayID(Ljava/lang/String;)V

    iget v1, p0, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkResult;->setCodeType(I)V

    invoke-virtual {v0, v2}, Lcom/arcsoft/hpay100/HPaySdkResult;->setQuery(Z)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ah;
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/arcsoft/hpay100/config/ah;

    invoke-direct {v1}, Lcom/arcsoft/hpay100/config/ah;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "payid"

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    const-string v3, "hpay_game_config"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    :cond_1
    const-string v3, "is_confirm"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/arcsoft/hpay100/config/c;->j:I

    sget-object v3, Lcom/arcsoft/hpay100/config/s;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v6, "hpay_game_confirm"

    sget v7, Lcom/arcsoft/hpay100/config/c;->j:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "reserveurl"

    const-string v6, ""

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "@@@"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v7, v6

    move v3, v2

    :goto_1
    if-lt v3, v7, :cond_5

    :cond_2
    const-string v3, "sms_number"

    const-string v6, ""

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "sms_content"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    if-nez v7, :cond_3

    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-static {v6}, Lcom/arcsoft/hpay100/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v6

    const-string v8, "utf-8"

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "@@@"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v7, "@@@"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    array-length v7, v3

    if-lez v7, :cond_3

    array-length v7, v6

    if-lez v7, :cond_3

    array-length v7, v3

    array-length v8, v6

    if-ne v7, v8, :cond_3

    :goto_2
    array-length v7, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v2, v7, :cond_6

    :cond_3
    :goto_3
    :try_start_2
    const-string v2, "scheme"

    const/4 v3, 0x3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "writeenable"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput-object v5, v1, Lcom/arcsoft/hpay100/config/ah;->a:Ljava/lang/String;

    iput v2, v1, Lcom/arcsoft/hpay100/config/ah;->b:I

    iput v3, v1, Lcom/arcsoft/hpay100/config/ah;->c:I

    const-string v2, "phone"

    const-string v3, ""

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-object v2, Lcom/arcsoft/hpay100/config/c;->l:Ljava/lang/String;

    :cond_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    aget-object v8, v6, v3

    invoke-static {p0, v8}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    :try_start_3
    aget-object v7, v3, v2

    aget-object v8, v6, v2

    invoke-static {v7, v8}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ak;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/arcsoft/hpay100/config/ak;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/config/ak;-><init>()V

    const-string v3, "status"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/arcsoft/hpay100/config/ak;->a:I

    const-string v3, "msg"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/arcsoft/hpay100/config/ak;->b:Ljava/lang/String;

    iget v3, v0, Lcom/arcsoft/hpay100/config/ak;->a:I

    if-nez v3, :cond_1

    const-string v3, "res"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/arcsoft/hpay100/config/ak;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    sget-object v1, Lcom/arcsoft/hpay100/config/c;->m:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/16 v0, 0x8

    const/16 v2, 0x18

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/arcsoft/hpay100/config/s;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dalongTest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currenttime:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "dalongTest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tmpUUID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "dalongTest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "random:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "orderid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    div-int/lit8 v1, p0, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "0.1\u5143"

    goto :goto_0

    :sswitch_1
    const-string v0, "0.2\u5143"

    goto :goto_0

    :sswitch_2
    const-string v0, "0.5\u5143"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method
