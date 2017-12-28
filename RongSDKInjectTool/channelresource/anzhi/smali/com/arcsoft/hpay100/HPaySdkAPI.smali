.class public Lcom/arcsoft/hpay100/HPaySdkAPI;
.super Ljava/lang/Object;


# static fields
.field private static final HPAY_YZM_TIME:I = 0xea60

.field public static final LANDSCAPE:Ljava/lang/String; = "0"

.field public static final PORTRAIT:Ljava/lang/String; = "1"

.field private static isInitHPay:Z

.field private static mDDDialog:Landroid/app/Dialog;

.field private static mDDYZMDialog:Landroid/app/Dialog;

.field private static mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private static mProgressDialog:Landroid/app/Dialog;

.field private static mYJDYDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->isInitHPay:Z

    sput-object v1, Lcom/arcsoft/hpay100/HPaySdkAPI;->mProgressDialog:Landroid/app/Dialog;

    sput-object v1, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDDialog:Landroid/app/Dialog;

    sput-object v1, Lcom/arcsoft/hpay100/HPaySdkAPI;->mYJDYDialog:Landroid/app/Dialog;

    sput-object v1, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->startYJDYZFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ILcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$10(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->hideYJDYDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$11(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->hideDDYZMDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$12(Landroid/app/Dialog;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mProgressDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$13()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$14(Landroid/app/Activity;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->showYJDYDialog(Landroid/app/Activity;ILcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$15(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/arcsoft/hpay100/HPaySdkAPI;->requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method

.method static synthetic access$16(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDYZMDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$17(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/arcsoft/hpay100/HPaySdkAPI;->showRetainDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$19()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    return-void
.end method

.method static synthetic access$20(Landroid/app/Dialog;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$21(Landroid/app/Dialog;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mYJDYDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$22()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mYJDYDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$23()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$24(Landroid/app/Dialog;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$3(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->startSZLKFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method

.method static synthetic access$4(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->startDDYZMPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method

.method static synthetic access$5(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->startXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method

.method static synthetic access$6(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->startYYFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    return-void
.end method

.method static synthetic access$7(Lcom/arcsoft/hpay100/config/HPaySMS;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-void
.end method

.method static synthetic access$8()Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-object v0
.end method

.method static synthetic access$9(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->hideDDDialog(Landroid/app/Activity;)V

    return-void
.end method

.method private static hideDDDialog(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$10;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI$10;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static hideDDYZMDialog(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$20;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI$20;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static hideProgressDialog(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$2;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static hideYJDYDialog(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$16;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI$16;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initHPaySdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const-string v0, "dalongTest"

    const-string v1, "initHPaySdk ----"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5546\u6237ID\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4ea7\u54c1ID\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u6e20\u9053ID\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u516c\u53f8\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5ba2\u670d\u7535\u8bdd\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->isInitHPay:Z

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "initHPaySdk activity start-----"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->isInitHPay:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-object p1, Lcom/arcsoft/hpay100/config/c;->b:Ljava/lang/String;

    sput-object p2, Lcom/arcsoft/hpay100/config/c;->c:Ljava/lang/String;

    sput-object p3, Lcom/arcsoft/hpay100/config/c;->d:Ljava/lang/String;

    sput-object p5, Lcom/arcsoft/hpay100/config/c;->g:Ljava/lang/String;

    sput-object p6, Lcom/arcsoft/hpay100/config/c;->e:Ljava/lang/String;

    sput-object p4, Lcom/arcsoft/hpay100/config/c;->f:Ljava/lang/String;

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->a()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->b()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/c;->c()V

    invoke-static {p0}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/utils/p;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "1"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "time2-time1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static requestXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 3

    new-instance v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;-><init>()V

    iget v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mAmount:I

    iget v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mRealAmount:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mRealAmount:I

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChID:Ljava/lang/String;

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mChType:Ljava/lang/String;

    iget v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCodeType:I

    iget v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mCorp:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mCorp:I

    iget v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mIntervalTimes:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mIntervalTimes:I

    iget v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mNetGameCode:I

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mOrderidHR:Ljava/lang/String;

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayId:Ljava/lang/String;

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mPhone:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mPhone:Ljava/lang/String;

    iget v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iput v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mScheme:I

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/ac;->a:Ljava/lang/String;

    const-string v2, "@@@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSAddress:[Ljava/lang/String;

    iget-object v1, p2, Lcom/arcsoft/hpay100/config/ac;->b:Ljava/lang/String;

    const-string v2, "@@@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->mSMSContent:[Ljava/lang/String;

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkAPI$6;

    invoke-direct {v1, p0, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI$6;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    invoke-virtual {v0, p0, p4, v1}, Lcom/arcsoft/hpay100/config/HPayXTDDOSMS;->requestPay(Landroid/content/Context;ILcom/arcsoft/hpay100/config/v;)V

    return-void
.end method

.method public static setLogDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/arcsoft/hpay100/config/q;->a:Z

    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, ""

    :cond_2
    sput-object p0, Lcom/arcsoft/hpay100/config/c;->o:Ljava/lang/String;

    sput-object p1, Lcom/arcsoft/hpay100/config/c;->p:Ljava/lang/String;

    sput-object p2, Lcom/arcsoft/hpay100/config/c;->q:Ljava/lang/String;

    return-void
.end method

.method private static showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 19

    const-string v1, "hpay_dialog_dd"

    const-string v1, "hpay_contentview_dd"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

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
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    invoke-static {v3, v4, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout"

    invoke-static {v2, v3, v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_tgs"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_tgs_name"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_goods"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_goodscontent"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_payprice"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_dd_tv_submit_paypricecontent"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "hpay_tv_context_dd"

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/TextView;

    const-string v17, "\u786e\u5b9a"

    const-string v18, "\u53d6\u6d88"

    new-instance v1, Lcom/arcsoft/hpay100/HPaySdkAPI$8;

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/arcsoft/hpay100/HPaySdkAPI$8;-><init>(Lcom/arcsoft/hpay100/config/HPaySMS;Landroid/app/Activity;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/config/ac;)V

    new-instance v2, Lcom/arcsoft/hpay100/HPaySdkAPI$9;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/arcsoft/hpay100/HPaySdkAPI$9;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    move-object/from16 v3, p0

    move v4, v8

    move-object v5, v9

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v8, v1

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->showCustomConfirmDialog3(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    sput-object v1, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDDialog:Landroid/app/Dialog;

    sget-object v1, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-string v1, "\u63d0  \u4f9b  \u5546\uff1a"

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/HPayRes;->getCpName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/s;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, ""

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getKfPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

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
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    goto :goto_1
.end method

.method private static showDDYZMDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 17

    const-string v3, "hpay_dialog_dy"

    const-string v3, "hpay_contentview_dy"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "hpay_dialog_dy"

    const-string v3, "hpay_contentview_dy"

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout"

    invoke-static {v5, v6, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout"

    invoke-static {v5, v6, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "id"

    const-string v7, "hpay_dy_tv_submit_goods"

    invoke-static {v3, v6, v7}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "id"

    const-string v8, "hpay_dy_tv_submit_goodscontent"

    invoke-static {v6, v7, v8}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "id"

    const-string v9, "hpay_dy_tv_submit_payprice"

    invoke-static {v7, v8, v9}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "id"

    const-string v10, "hpay_dy_tv_submit_paypricecontent"

    invoke-static {v8, v9, v10}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "id"

    const-string v11, "hpay_dy_tv_submit_phone"

    invoke-static {v9, v10, v11}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "id"

    const-string v12, "hpay_dy_tv_submit_phonecontent"

    invoke-static {v10, v11, v12}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "id"

    const-string v13, "hpay_dy_tv_submit_yzm"

    invoke-static {v11, v12, v13}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "id"

    const-string v14, "hpay_dy_et_submit_yzmcontent"

    invoke-static {v12, v13, v14}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "id"

    const-string v15, "hpay_dy_btn_submit_getyzm"

    invoke-static {v13, v14, v15}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "id"

    const-string v16, "hpay_tv_sb_wxts_dy"

    invoke-static/range {v14 .. v16}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v15, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    iget v3, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-static {v3}, Lcom/arcsoft/hpay100/config/s;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v8, "\u624b  \u673a  \u53f7\uff1a"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v6, "\u9a8c  \u8bc1  \u7801\uff1a"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v6, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/arcsoft/hpay100/utils/HPayRes;->getKfPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u6e29\u99a8\u63d0\u793a\uff1a\u672c\u6b21\u652f\u4ed8\u91d1\u989d"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff0c\u4e0d\u542b\u901a\u4fe1\u8d39\uff0c\u7531\u8fd0\u8425\u5546\u4ee3\u6536\u3002\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "\u786e\u5b9a"

    const-string v7, "\u53d6\u6d88"

    new-instance v8, Lcom/arcsoft/hpay100/HPaySdkAPI$17;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v8, v10, v0, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI$17;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    new-instance v9, Lcom/arcsoft/hpay100/HPaySdkAPI$18;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-direct {v9, v0, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI$18;-><init>(Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;Landroid/app/Activity;)V

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->showCustomConfirmDialog3(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v3

    sput-object v3, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;

    sget-object v3, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/arcsoft/hpay100/HPaySdkAPI$19;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v10}, Lcom/arcsoft/hpay100/HPaySdkAPI$19;-><init>(Lcom/arcsoft/hpay100/config/HPaySMS;Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-static {v3}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void

    :cond_0
    const-string v4, "hpay_dialog_dy_p"

    const-string v3, "hpay_contentview_dy_p"

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    goto :goto_1
.end method

.method private static showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$1;

    invoke-direct {v0, p0, p1}, Lcom/arcsoft/hpay100/HPaySdkAPI$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static showRetainDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

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
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "\u6e29\u99a8\u63d0\u793a"

    const-string v9, "\u82e5\u4e0d\u8fdb\u884c\u4ed8\u8d39\uff0c\u60a8\u5c06\u65e0\u6cd5\u83b7\u5f97\u66f4\u591a\u7684\u5e94\u7528\u4f53\u9a8c\uff0c\u662f\u5426\u786e\u8ba4\uff1f"

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$21;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkAPI$21;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    new-instance v6, Lcom/arcsoft/hpay100/HPaySdkAPI$22;

    invoke-direct {v6, p1, p4, p0}, Lcom/arcsoft/hpay100/HPaySdkAPI$22;-><init>(Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;Landroid/app/Activity;)V

    move-object v1, p0

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

.method private static showYJDYDialog(Landroid/app/Activity;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 16

    const-string v2, "hpay_dialog_dy"

    const-string v2, "hpay_contentview_dy"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "hpay_dialog_dy"

    const-string v2, "hpay_contentview_dy"

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout"

    invoke-static {v4, v5, v3}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout"

    invoke-static {v3, v4, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "hpay_dy_tv_submit_goods"

    invoke-static {v2, v3, v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "hpay_dy_tv_submit_goodscontent"

    invoke-static {v3, v4, v5}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "hpay_dy_tv_submit_payprice"

    invoke-static {v4, v5, v6}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "hpay_dy_tv_submit_paypricecontent"

    invoke-static {v5, v6, v7}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "id"

    const-string v8, "hpay_dy_tv_submit_phone"

    invoke-static {v6, v7, v8}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "id"

    const-string v9, "hpay_dy_tv_submit_phonecontent"

    invoke-static {v7, v8, v9}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "id"

    const-string v12, "hpay_dy_tv_submit_yzm"

    invoke-static {v8, v9, v12}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v12, "id"

    const-string v13, "hpay_dy_et_submit_yzmcontent"

    invoke-static {v9, v12, v13}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "id"

    const-string v14, "hpay_dy_btn_submit_getyzm"

    invoke-static {v12, v13, v14}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "id"

    const-string v15, "hpay_tv_sb_wxts_dy"

    invoke-static {v13, v14, v15}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v14, "\u5546\u54c1\u540d\u79f0\uff1a"

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "\u652f\u4ed8\u91d1\u989d\uff1a"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    invoke-static {v2}, Lcom/arcsoft/hpay100/config/s;->b(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPhone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "\u624b  \u673a  \u53f7\uff1a"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mPhone:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "\u9a8c  \u8bc1  \u7801\uff1a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/arcsoft/hpay100/HPaySdkAPI$11;

    const-wide/32 v4, 0xea60

    const-wide/16 v6, 0x3e8

    invoke-direct/range {v3 .. v8}, Lcom/arcsoft/hpay100/HPaySdkAPI$11;-><init>(JJLandroid/widget/Button;)V

    new-instance v2, Lcom/arcsoft/hpay100/HPaySdkAPI$12;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v9, v3, v1}, Lcom/arcsoft/hpay100/HPaySdkAPI$12;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/os/CountDownTimer;I)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/arcsoft/hpay100/utils/HPayRes;->getKfPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    sget-object v5, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6e29\u99a8\u63d0\u793a\uff1a\u672c\u6b21\u652f\u4ed8\u91d1\u989d"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff0c\u4e0d\u542b\u901a\u4fe1\u8d39\uff0c\u7531\u8fd0\u8425\u5546\u4ee3\u6536\u3002\u5ba2\u670d\u7535\u8bdd\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "\u786e\u5b9a"

    const-string v6, "\u53d6\u6d88"

    new-instance v7, Lcom/arcsoft/hpay100/HPaySdkAPI$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v9, v0, v1}, Lcom/arcsoft/hpay100/HPaySdkAPI$13;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    new-instance v8, Lcom/arcsoft/hpay100/HPaySdkAPI$14;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-direct {v8, v3, v0, v1}, Lcom/arcsoft/hpay100/HPaySdkAPI$14;-><init>(Landroid/os/CountDownTimer;Lcom/arcsoft/hpay100/HPaySdkCallback;Landroid/app/Activity;)V

    move-object/from16 v2, p0

    move v3, v10

    move-object v4, v11

    invoke-static/range {v2 .. v8}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->showCustomConfirmDialog3(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mYJDYDialog:Landroid/app/Dialog;

    sget-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mYJDYDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    new-instance v2, Lcom/arcsoft/hpay100/HPaySdkAPI$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Lcom/arcsoft/hpay100/HPaySdkAPI$15;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-static {v2}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void

    :cond_0
    const-string v3, "hpay_dialog_dy_p"

    const-string v2, "hpay_contentview_dy_p"

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    sget-object v4, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mDetail:Ljava/lang/String;

    goto :goto_2
.end method

.method private static startDDYZMPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/arcsoft/hpay100/HPaySdkAPI$7;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    invoke-virtual {p1, p0, p3, v0}, Lcom/arcsoft/hpay100/config/HPaySMS;->requestPay(Landroid/content/Context;ILcom/arcsoft/hpay100/config/v;)V

    return-void
.end method

.method public static startHPaySdk(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    const-string v0, "dalongTest"

    const-string v1, "startHPaySdk-------"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->isInitHPay:Z

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u521d\u59cb\u5316\u652f\u4ed8sdk"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->toast(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "2"

    const-string v6, "2001"

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8ba1\u8d39\u70b9\u7f16\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->toast(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "2"

    const-string v6, "2003"

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-ge p4, v2, :cond_2

    const-string v0, "\u8ba1\u8d39\u91d1\u989d\u4f20\u5165\u9519\u8bef"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->toast(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "2"

    const-string v6, "2004"

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u8ba1\u8d39\u70b9\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->toast(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "2"

    const-string v6, "2005"

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u8fde\u63a5"

    invoke-static {p0, v0, v2}, Lcom/arcsoft/hpay100/utils/HPayViewUtils;->toast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v0, "\u6570\u636e\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p1

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/arcsoft/hpay100/HPaySdkCallback;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v8

    move v7, p1

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V

    goto :goto_0
.end method

.method private static startSZLKFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    invoke-static {p0, p1, v0}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/config/b;)V

    return-void
.end method

.method private static startXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 4

    iget-object v0, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyAdderss:Ljava/lang/String;

    iget-object v1, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyKeyword:[Ljava/lang/String;

    iget-object v2, p1, Lcom/arcsoft/hpay100/config/HPaySMS;->mReplyContent:Ljava/lang/String;

    new-instance v3, Lcom/arcsoft/hpay100/HPaySdkAPI$5;

    invoke-direct {v3, p0, p2, p1}, Lcom/arcsoft/hpay100/HPaySdkAPI$5;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/config/HPaySMS;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/arcsoft/hpay100/config/al;->a(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;)V

    return-void
.end method

.method private static startYJDYZFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/arcsoft/hpay100/HPaySdkAPI$3;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ILcom/arcsoft/hpay100/HPaySdkCallback;)V

    invoke-static {p0, p1, v0}, Lcom/arcsoft/hpay100/config/w;->a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;)V

    return-void
.end method

.method private static startYYFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 1

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkAPI$4;

    invoke-direct {v0, p0, p2}, Lcom/arcsoft/hpay100/HPaySdkAPI$4;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    invoke-virtual {p1, p0, p3, v0}, Lcom/arcsoft/hpay100/config/HPaySMS;->requestPay(Landroid/content/Context;ILcom/arcsoft/hpay100/config/v;)V

    return-void
.end method

.method public static unInitHPaySdk(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "dalongTest"

    const-string v1, "unInitHPaySdk-----"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/hpay100/HPaySdkAPI;->isInitHPay:Z

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->g(Landroid/content/Context;)V

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/ab;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/config/ab;->c:Ljava/lang/String;

    sput-object v2, Lcom/arcsoft/hpay100/config/ab;->d:[Ljava/lang/String;

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mProgressDialog:Landroid/app/Dialog;

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDDialog:Landroid/app/Dialog;

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mYJDYDialog:Landroid/app/Dialog;

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;

    sput-object v2, Lcom/arcsoft/hpay100/HPaySdkAPI;->mDDYZMDialog:Landroid/app/Dialog;

    return-void
.end method
