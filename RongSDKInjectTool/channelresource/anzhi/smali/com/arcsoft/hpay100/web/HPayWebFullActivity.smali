.class public Lcom/arcsoft/hpay100/web/HPayWebFullActivity;
.super Landroid/app/Activity;


# static fields
.field private static mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private static mOrderJson:Ljava/lang/String;


# instance fields
.field private mBtnNetError:Landroid/widget/ImageView;

.field private mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

.field public mHandler:Landroid/os/Handler;

.field private mLeftBack:Landroid/widget/ImageView;

.field private mLinPayNetError:Landroid/widget/LinearLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressDialog:Landroid/app/Dialog;

.field private mTvTitle:Landroid/widget/TextView;

.field private webViewLoadResult:Lcom/arcsoft/hpay100/web/HPayWebViewLoad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mOrderJson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    new-instance v0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$1;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$2;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$2;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->webViewLoadResult:Lcom/arcsoft/hpay100/web/HPayWebViewLoad;

    return-void
.end method

.method static synthetic access$0(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mLinPayNetError:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->goBack()V

    return-void
.end method

.method static synthetic access$4(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/web/HPayWebView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-object v0
.end method

.method static synthetic access$6(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$7(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mProgressDialog:Landroid/app/Dialog;

    return-void
.end method

.method private goBack()V
    .locals 11

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    sget-object v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_1
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v6, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    const/16 v10, 0xb

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->finish()V

    goto :goto_0
.end method

.method private initData()V
    .locals 8

    const/4 v0, 0x0

    sput v0, Lcom/arcsoft/hpay100/web/HPayWebView;->GetPhoneNumber:I

    sput v0, Lcom/arcsoft/hpay100/web/HPayWebView;->NumberJsonJs:I

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "hpaysms"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOpenUrl:Ljava/lang/String;

    move-object v7, v0

    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    sget-object v4, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mOrderJson:Ljava/lang/String;

    sget-object v5, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iget-object v6, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->webViewLoadResult:Lcom/arcsoft/hpay100/web/HPayWebViewLoad;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/arcsoft/hpay100/web/HPayWebView;->init(Landroid/app/Activity;Landroid/os/Handler;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/web/HPayWebViewLoad;)V

    :cond_0
    invoke-direct {p0, v7}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->loadURL(Ljava/lang/String;)V

    new-instance v0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;

    invoke-direct {v0, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$7;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mFeeUrl:Ljava/lang/String;

    move-object v7, v0

    goto :goto_0

    :cond_2
    move-object v7, v1

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$3;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$3;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$4;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$4;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mLeftBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$5;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$5;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mBtnNetError:Landroid/widget/ImageView;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$6;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$6;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_btnback"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mLeftBack:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_tvTitle"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_webview"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/hpay100/web/HPayWebView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_progressbar"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_net_error"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mLinPayNetError:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mLinPayNetError:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "hpay_error_image_retry"

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mBtnNetError:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private loadURL(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->clearHistory()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPayWebView:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0, p1}, Lcom/arcsoft/hpay100/web/HPayWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static starHPayWebActivity(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 2

    sput-object p3, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    sput-object p2, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mOrderJson:Ljava/lang/String;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hpaysms"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$9;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$9;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

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

    invoke-virtual {p0, v3}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->setFinishOnTouchOutside(Z)V

    :cond_0
    const-string v0, "hpay_act_wap"

    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "hpay_act_wap_full"

    invoke-virtual {p0, v3}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/utils/HPayRes;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->initView()V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->initListener()V

    invoke-direct {p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->initData()V

    return-void

    :cond_1
    const-string v0, "hpay_act_wap_full"

    invoke-virtual {p0, v4}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sput-object v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const-string v0, ""

    sput-object v0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mOrderJson:Ljava/lang/String;

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$8;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity$8;-><init>(Lcom/arcsoft/hpay100/web/HPayWebFullActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
