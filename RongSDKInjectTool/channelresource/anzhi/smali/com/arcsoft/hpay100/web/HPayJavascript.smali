.class public Lcom/arcsoft/hpay100/web/HPayJavascript;
.super Ljava/lang/Object;


# static fields
.field public static final NAME:Ljava/lang/String; = "HPayJS"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGetResult:Ljava/lang/String;

.field private mGetURL:Ljava/lang/String;

.field private mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHashMap:Ljava/util/HashMap;

.field private mOrderJson:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/Dialog;

.field private mWebCookie:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/os/Handler;Lcom/arcsoft/hpay100/HPaySdkCallback;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebView:Landroid/webkit/WebView;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mOrderJson:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebCookie:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object p5, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-object p6, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mOrderJson:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$0(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/config/HPaySMS;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    return-object v0
.end method

.method static synthetic access$10(Lcom/arcsoft/hpay100/web/HPayJavascript;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$11(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mProgressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/arcsoft/hpay100/web/HPayJavascript;)Lcom/arcsoft/hpay100/HPaySdkCallback;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/arcsoft/hpay100/web/HPayJavascript;)V
    .locals 0

    invoke-direct {p0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private hideProgressDialog()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$9;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayJavascript$9;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$8;

    invoke-direct {v1, p0, p1}, Lcom/arcsoft/hpay100/web/HPayJavascript$8;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public alertDiaLog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$10;

    invoke-direct {v1, p0, p1}, Lcom/arcsoft/hpay100/web/HPayJavascript$10;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public create_order()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "create_order"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doGet:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "thread_doGet"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public doPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPost:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/arcsoft/hpay100/web/HPayJavascript$7;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v0, "thread_post_request"

    invoke-virtual {v6, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public finsh_activity()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "hpayfinsh_activity"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$1;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayJavascript$1;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getOrderJson()Ljava/lang/String;
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOrderJson:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mOrderJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mOrderJson:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "getParams"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/utils/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebCookie()Ljava/lang/String;
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getWebCookie:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebCookie:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebCookie:Ljava/lang/String;

    return-object v0
.end method

.method public getrequestdata(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request data length:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getrequesturl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetURL:Ljava/lang/String;

    return-object v0
.end method

.method public hpayorder_cancel()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "hpayorder_cancel"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$3;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayJavascript$3;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hpayorder_sumbit()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "hpayorder_sumbit"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$2;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/web/HPayJavascript$2;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hpaysendsms_order(Ljava/lang/String;)V
    .locals 12

    const/16 v11, 0x17da

    const/16 v10, 0xb

    const-string v0, "dalongTest"

    const-string v1, "hpaysendsms_order"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/arcsoft/hpay100/config/s;->a(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\u652f\u4ed8\u8fdb\u884c\u4e2d,\u8bf7\u60a8\u8010\u5fc3\u7b49\u5f85"

    invoke-direct {p0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->showProgressDialog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/arcsoft/hpay100/web/HPayJavascript$5;

    invoke-direct {v2, p0}, Lcom/arcsoft/hpay100/web/HPayJavascript$5;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;)V

    invoke-virtual {v0, v1, v10, v2}, Lcom/arcsoft/hpay100/config/HPaySMS;->requestPay(Landroid/content/Context;ILcom/arcsoft/hpay100/config/v;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "4005"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    move v5, v11

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_1
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "4004"

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    move v5, v11

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public read(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "dalongTest"

    const-string v1, "read"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsContent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "send"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$4;

    invoke-direct {v1, p0, p1}, Lcom/arcsoft/hpay100/web/HPayJavascript$4;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWebCookie(Ljava/lang/String;)V
    .locals 3

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setWebCookie:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebCookie:Ljava/lang/String;

    return-void
.end method

.method public sumbit_vercode()V
    .locals 2

    const-string v0, "dalongTest"

    const-string v1, "sumbit_vercode"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
