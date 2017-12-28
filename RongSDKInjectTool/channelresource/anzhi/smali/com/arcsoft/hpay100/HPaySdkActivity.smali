.class public Lcom/arcsoft/hpay100/HPaySdkActivity;
.super Landroid/app/Activity;


# static fields
.field private static final HPAY_CODETYPE:Ljava/lang/String; = "hpay_codetype"

.field private static final HPAY_ORDERID:Ljava/lang/String; = "hpay_orderid"

.field private static final HPAY_PAYID:Ljava/lang/String; = "hpay_payid"

.field private static final HPAY_PAYNAME:Ljava/lang/String; = "hpay_payname"

.field private static final HPAY_PRICE:Ljava/lang/String; = "hpay_price"

.field private static final HPAY_YZM_TIME:I = 0xea60

.field public static mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private static mScheme:I


# instance fields
.field private mAppOrderid:Ljava/lang/String;

.field private mCodeType:I

.field private mDDBtnCancel:Landroid/widget/Button;

.field private mDDBtnOK:Landroid/widget/Button;

.field private mDDDialog:Landroid/app/Dialog;

.field private mDDLLLayout:Landroid/widget/LinearLayout;

.field private mDDTvContext:Landroid/widget/TextView;

.field private mDDTvGoods:Landroid/widget/TextView;

.field private mDDTvGoodsConent:Landroid/widget/TextView;

.field private mDDTvGoodsPrice:Landroid/widget/TextView;

.field private mDDTvGoodsPriceContent:Landroid/widget/TextView;

.field private mDDTvTgs:Landroid/widget/TextView;

.field private mDDTvTgsName:Landroid/widget/TextView;

.field private mDYBtnInputPhoneNext:Landroid/widget/Button;

.field private mDYBtnSubmitGetYZM:Landroid/widget/Button;

.field private mDYBtnSubmitYZMCancel:Landroid/widget/Button;

.field private mDYBtnSubmitYZMOK:Landroid/widget/Button;

.field private mDYETInputPhone:Landroid/widget/EditText;

.field private mDYETSubmitYZMContent:Landroid/widget/EditText;

.field private mDYFLLayout:Landroid/widget/FrameLayout;

.field private mDYIvInputPhoneYZMCancel:Landroid/widget/Button;

.field private mDYLLInputPhone:Landroid/widget/LinearLayout;

.field private mDYLLSubmitSms:Landroid/widget/LinearLayout;

.field private mDYSubmitPhone:Ljava/lang/String;

.field private mDYTVInputPhoneTitle:Landroid/widget/TextView;

.field private mDYTVSubmitGoods:Landroid/widget/TextView;

.field private mDYTVSubmitGoodsContent:Landroid/widget/TextView;

.field private mDYTVSubmitPayPrice:Landroid/widget/TextView;

.field private mDYTVSubmitPayPriceContent:Landroid/widget/TextView;

.field private mDYTVSubmitPhone:Landroid/widget/TextView;

.field private mDYTVSubmitPhoneContent:Landroid/widget/TextView;

.field private mDYTVSubmitWxts:Landroid/widget/TextView;

.field private mDYTVSubmitYZM:Landroid/widget/TextView;

.field private mDYTvInputPhoneWxts:Landroid/widget/TextView;

.field private mIsDYInput:Z

.field private mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private mPayid:Ljava/lang/String;

.field private mPayname:Ljava/lang/String;

.field private mPrice:I

.field private mProgressDialog:Landroid/app/Dialog;

.field private mTimeCount:Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mProgressDialog:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDLLLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvContext:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvTgs:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvTgsName:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoods:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsConent:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsPrice:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsPriceContent:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnOK:Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnCancel:Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLInputPhone:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLSubmitSms:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVInputPhoneTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnInputPhoneNext:Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYIvInputPhoneYZMCancel:Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTvInputPhoneWxts:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitGoods:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitGoodsContent:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPayPrice:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPayPriceContent:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPhone:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPhoneContent:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitYZM:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMOK:Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMCancel:Landroid/widget/Button;

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitWxts:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mIsDYInput:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYSubmitPhone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;

    iput v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I

    iput v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mCodeType:I

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$0(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-object v0
.end method

.method static synthetic access$11(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->startXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method

.method static synthetic access$12(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;IILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->startDMWAP2Pay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;IILcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$13(Lcom/arcsoft/hpay100/HPaySdkActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mIsDYInput:Z

    return-void
.end method

.method static synthetic access$14(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showDYSubmitSms()V

    return-void
.end method

.method static synthetic access$15(Lcom/arcsoft/hpay100/HPaySdkActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mIsDYInput:Z

    return v0
.end method

.method static synthetic access$16(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDLLLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showPayDialogRetain(I)V

    return-void
.end method

.method static synthetic access$19(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVInputPhoneTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYSubmitPhone:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYSubmitPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$24(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showDYInputPhone()V

    return-void
.end method

.method static synthetic access$25(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->cancelTimeCount()V

    return-void
.end method

.method static synthetic access$26(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mProgressDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$27(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$28(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->hideDDDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$29(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    sget v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I

    return v0
.end method

.method static synthetic access$30(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method

.method static synthetic access$31(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showRetainDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$32(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$33(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I

    return v0
.end method

.method static synthetic access$6(Lcom/arcsoft/hpay100/HPaySdkActivity;)I
    .locals 1

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mCodeType:I

    return v0
.end method

.method static synthetic access$7(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/arcsoft/hpay100/HPaySdkActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-void
.end method

.method private cancelTimeCount()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mTimeCount:Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mTimeCount:Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mTimeCount:Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hideDDDialog(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$15;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$15;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$9;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$9;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initDYData()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v1, ""

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYSubmitPhone:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mIsDYInput:Z

    iput-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_orderid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_payid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_payname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hpay_price"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hpay_codetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mCodeType:I

    :cond_0
    invoke-static {v4}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showDYInputPhone()V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    instance-of v1, v2, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initDYListener()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnInputPhoneNext:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$3;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$3;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMOK:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$4;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$4;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$5;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$5;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYIvInputPhoneYZMCancel:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$6;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$6;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMCancel:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$7;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$7;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDYView()V
    .locals 3

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_fl_layout"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_ll_inputphone"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLInputPhone:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_ll_submit_sms"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLSubmitSms:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_inputphone_title"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVInputPhoneTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_et_inputphone"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_btn_inputphone_next"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnInputPhoneNext:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_inputphone_wxts"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTvInputPhoneWxts:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_inputPhone_cancel"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYIvInputPhoneYZMCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_submit_goods"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitGoods:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_submit_goodscontent"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitGoodsContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_submit_payprice"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPayPrice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_submit_paypricecontent"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPayPriceContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_submit_phone"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_submit_phonecontent"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPhoneContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_tv_submit_yzm"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitYZM:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_et_submit_yzmcontent"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_btn_submit_getyzm"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_btn_sb_ok_dy"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMOK:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dy_sb_cancel"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_tv_sb_wxts_dy"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitWxts:Landroid/widget/TextView;

    return-void
.end method

.method private requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 3

    new-instance v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;-><init>()V

    iget v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    iget v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mRealAmount:I

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    iget v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCodeType:I

    iget v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mCorp:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCorp:I

    iget v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mIntervalTimes:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mIntervalTimes:I

    iget v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mNetGameCode:I

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayName:Ljava/lang/String;

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mPhone:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPhone:Ljava/lang/String;

    iget v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    iget-object v1, p3, Lcom/arcsoft/hpay100/config/ac;->a:Ljava/lang/String;

    const-string v2, "@@@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSAddress:[Ljava/lang/String;

    iget-object v1, p3, Lcom/arcsoft/hpay100/config/ac;->b:Ljava/lang/String;

    const-string v2, "@@@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSContent:[Ljava/lang/String;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$16;

    invoke-direct {v1, p0, p4}, Lcom/arcsoft/hpay100/HPaySdkActivity$16;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    invoke-virtual {v0, p1, p5, v1}, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->requestPay(Landroid/content/Context;ILcom/arcsoft/hpay100/config/v;)V

    return-void
.end method

.method private showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 20

    const-string v1, "hpay_dialog_dd"

    const-string v1, "hpay_contentview_dd"

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "hpay_dialog_dd"

    const-string v1, "hpay_contentview_dd"

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    invoke-static {v3, v4, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout"

    invoke-static {v2, v3, v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_tgs"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_tgs_name"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_goods"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_goodscontent"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_payprice"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_paypricecontent"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_context_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    const-string v18, "\u786e\u5b9a"

    const-string v19, "\u53d6\u6d88"

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$13;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/arcsoft/hpay100/HPaySdkActivity$13;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    new-instance v2, Lcom/arcsoft/hpay100/HPaySdkActivity$14;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/arcsoft/hpay100/HPaySdkActivity$14;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    move-object/from16 v3, p1

    move v4, v9

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object v8, v1

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->showCustomConfirmDialog3(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-string v1, "\u63d0  \u4f9b  \u5546\uff1a"

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getCpName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    iget v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/s;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getKfPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6e29\u99a8\u63d0\u793a\uff1a\u672c\u6b21\u652f\u4ed8\u91d1\u989d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff0c\u4e0d\u542b\u901a\u4fe1\u8d39\uff0c\u7531\u8fd0\u8425\u5546\u4ee3\u6536\u3002\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v2, "hpay_dialog_dd_p"

    const-string v1, "hpay_contentview_dd_p"

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    goto :goto_1
.end method

.method private showDYInputPhone()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLInputPhone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLSubmitSms:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    const-string v1, "\u8bf7\u8f93\u516511\u4f4d\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETInputPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVInputPhoneTitle:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8f93\u5165\u5f85\u652f\u4ed8\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnInputPhoneNext:Landroid/widget/Button;

    const-string v1, "\u4e0b\u4e00\u6b65"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "\u6e29\u99a8\u63d0\u793a\uff1a\u7531\u4e8e\u8fd0\u8425\u5546\u7684\u76f8\u5173\u89c4\u5b9a\uff0c\u4e0d\u540c\u5730\u533a\u6709\u5145\u503c\u6b21\u6570\u9650\u5236\uff1b\u82e5\u65e0\u6cd5\u5145\u503c\uff0c\u8bf7\u4f7f\u7528\u5176\u4ed6\u65b9\u5f0f\u5145\u503c\u3002"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTvInputPhoneWxts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYIvInputPhoneYZMCancel:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDYSubmitSms()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYFLLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLInputPhone:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYLLSubmitSms:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYETSubmitYZMContent:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitGoods:Landroid/widget/TextView;

    const-string v1, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitGoodsContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPayPrice:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPayPriceContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPhone:Landroid/widget/TextView;

    const-string v2, "\u624b  \u673a  \u53f7\uff1a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitPhoneContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYSubmitPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitYZM:Landroid/widget/TextView;

    const-string v2, "\u9a8c  \u8bc1  \u7801\uff1a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitGetYZM:Landroid/widget/Button;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMOK:Landroid/widget/Button;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYBtnSubmitYZMCancel:Landroid/widget/Button;

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v1, ""

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getKfPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e29\u99a8\u63d0\u793a\uff1a\u672c\u6b21\u652f\u4ed8\u91d1\u989d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0c\u4e0d\u542b\u901a\u4fe1\u8d39\uff0c\u7531\u8fd0\u8425\u5546\u4ee3\u6536\u3002\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDYTVSubmitWxts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->cancelTimeCount()V

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;JJ)V

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mTimeCount:Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mTimeCount:Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity$TimeCount;->start()Landroid/os/CountDownTimer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private showPayDialogRetain(I)V
    .locals 6

    const-string v0, "hpay_act_retain"

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hpay_act_retain"

    :goto_0
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    const-string v3, "\u82e5\u4e0d\u8fdb\u884c\u4ed8\u8d39\uff0c\u60a8\u5c06\u65e0\u6cd5\u83b7\u5f97\u66f4\u591a\u7684\u5e94\u7528\u4f53\u9a8c\uff0c\u662f\u5426\u786e\u8ba4\uff1f"

    new-instance v4, Lcom/arcsoft/hpay100/HPaySdkActivity$10;

    invoke-direct {v4, p0, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity$10;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    new-instance v5, Lcom/arcsoft/hpay100/HPaySdkActivity$11;

    invoke-direct {v5, p0, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity$11;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->showCustomConfirmDialog2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "hpay_act_retain_p"

    goto :goto_0
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity$8;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showRetainDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 10

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hpay_act_retain"

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hpay_act_retain"

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "\u6e29\u99a8\u63d0\u793a"

    const-string v9, "\u82e5\u4e0d\u8fdb\u884c\u4ed8\u8d39\uff0c\u60a8\u5c06\u65e0\u6cd5\u83b7\u5f97\u66f4\u591a\u7684\u5e94\u7528\u4f53\u9a8c\uff0c\u662f\u5426\u786e\u8ba4\uff1f"

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$17;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/arcsoft/hpay100/HPaySdkActivity$17;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    new-instance v6, Lcom/arcsoft/hpay100/HPaySdkActivity$18;

    invoke-direct {v6, p0, p2, p5, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity$18;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;Landroid/app/Activity;)V

    move-object v1, p1

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->showCustomConfirmDialog2(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "hpay_act_retain_p"

    goto :goto_0
.end method

.method public static starPayActivity(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 2

    sput-object p7, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    sput p3, Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hpay_orderid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hpay_payid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hpay_price"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "hpay_payname"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hpay_codetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startDMWAP2Pay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;IILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$19;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkActivity$19;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;IILandroid/app/Activity;)V

    invoke-static {p1, p2, v0}, Lcom/arcsoft/hpay100/config/w;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;)V

    return-void
.end method

.method private startXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 4

    iget-object v0, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyAdderss:Ljava/lang/String;

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyKeyword:[Ljava/lang/String;

    iget-object v2, p2, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyContent:Ljava/lang/String;

    new-instance v3, Lcom/arcsoft/hpay100/HPaySdkActivity$12;

    invoke-direct {v3, p0, p3, p2, p1}, Lcom/arcsoft/hpay100/HPaySdkActivity$12;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/config/HPaySMS;Landroid/app/Activity;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/arcsoft/hpay100/config/al;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "dalongTest"

    const-string v1, "finsh"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/t;->a(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDDialog:Landroid/app/Dialog;

    const/4 v0, 0x3

    sput v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->cancelTimeCount()V

    invoke-static {v2}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void
.end method

.method public initDDData()V
    .locals 3

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hpay_orderid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hpay_payid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hpay_payname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hpay_price"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hpay_codetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mCodeType:I

    :cond_0
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->showDDPay()V

    return-void
.end method

.method public initDDListener()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnOK:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$1;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$1;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkActivity$2;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/HPaySdkActivity$2;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initDDView()V
    .locals 3

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_ll_dd_layout"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDLLLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dd_tv_tgs"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvTgs:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dd_tv_tgs_name"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvTgsName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dd_tv_submit_goods"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoods:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dd_tv_submit_goodscontent"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsConent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dd_tv_submit_payprice"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsPrice:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_dd_tv_submit_paypricecontent"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsPriceContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_tv_context_dd"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvContext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_btn_ok_dd"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnOK:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_btn_cancel_dd"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnCancel:Landroid/widget/Button;

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "HPaySdkActivity-onBackPressed"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConfigurationChanged:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v2, 0x400

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "dalongTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "version->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/utils/o;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/utils/o;->b()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->setFinishOnTouchOutside(Z)V

    :cond_0
    const-string v0, "hpay_act_dd"

    const-string v0, "hpay_act_dy"

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "hpay_act_dd"

    const-string v0, "hpay_act_dy"

    invoke-virtual {p0, v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout"

    invoke-static {v2, v3, v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I

    packed-switch v3, :pswitch_data_0

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->setContentView(I)V

    sget v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I

    packed-switch v0, :pswitch_data_1

    :goto_2
    :pswitch_0
    return-void

    :cond_1
    const-string v1, "hpay_act_dd_p"

    const-string v0, "hpay_act_dy_p"

    invoke-virtual {p0, v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout"

    invoke-static {v0, v2, v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "hpay_act_wap"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->initDDView()V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->initDDListener()V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->initDDData()V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->initDYView()V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->initDYListener()V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->initDYData()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "dalongTest"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "dalongTest"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "dalongTest"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "dalongTest"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "dalongTest"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showDDPay()V
    .locals 4

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDLLLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvTgs:Landroid/widget/TextView;

    const-string v1, "\u63d0  \u4f9b  \u5546\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getCpName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvTgsName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoods:Landroid/widget/TextView;

    const-string v1, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsConent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsPrice:Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvGoodsPriceContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getKfPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e29\u99a8\u63d0\u793a\uff1a\u672c\u6b21\u652f\u4ed8\u91d1\u989d"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\uff0c\u4e0d\u542b\u901a\u4fe1\u8d39\uff0c\u7531\u8fd0\u8425\u5546\u4ee3\u6536\u3002\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDTvContext:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnOK:Landroid/widget/Button;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity;->mDDBtnCancel:Landroid/widget/Button;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
