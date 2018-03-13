.class public Lcom/zqhy/sdk/ui/H5WebActivity;
.super Landroid/app/Activity;
.source "H5WebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/ui/H5WebActivity$c;,
        Lcom/zqhy/sdk/ui/H5WebActivity$b;,
        Lcom/zqhy/sdk/ui/H5WebActivity$a;
    }
.end annotation


# static fields
.field private static final AlipayH5Field:Ljava/lang/String; = "alipay.com"

.field public static activity:Lcom/zqhy/sdk/ui/H5WebActivity; = null

.field public static final requestCode:I = 0x9001

.field public static final resultCode_exit:I = 0x9005

.field public static final resultCode_login:I = 0x9002

.field public static final resultCode_pay:I = 0x9003

.field public static final resultCode_wechat_pay:I = 0x9004

.field public static sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;


# instance fields
.field ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

.field private connectTimeout:Ljava/lang/Runnable;

.field private currentUrl:Ljava/lang/String;

.field private expandableLayoutListView:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

.field private flErrorPage:Landroid/widget/FrameLayout;

.field private flTitle1:Landroid/view/View;

.field private flTitle2:Landroid/view/View;

.field private idIvQuestion:Landroid/widget/ImageView;

.field private idTvTitle:Landroid/widget/TextView;

.field private isDestroyWebView:Z

.field private isShow:Z

.field private ivBack:Landroid/widget/ImageView;

.field private ivNoNetwork:Landroid/widget/ImageView;

.field private kefuInfo:Ljava/lang/String;

.field private layoutWebTitle:Landroid/widget/FrameLayout;

.field private llClosePage:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private orientation:I

.field private progressDialog:Lcom/zqhy/sdk/ui/c;

.field private rootView:Landroid/widget/LinearLayout;

.field private tvTitle2:Landroid/widget/TextView;

.field private type:I

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->mHandler:Landroid/os/Handler;

    .line 96
    iput v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->orientation:I

    .line 535
    iput-boolean v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->isDestroyWebView:Z

    .line 554
    iput-boolean v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->isShow:Z

    .line 604
    new-instance v0, Lcom/zqhy/sdk/ui/H5WebActivity$5;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/H5WebActivity$5;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->connectTimeout:Ljava/lang/Runnable;

    .line 663
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/zqhy/sdk/ui/H5WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zqhy/sdk/ui/H5WebActivity;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->isDestroyWebView:Z

    return v0
.end method

.method static synthetic access$400(Lcom/zqhy/sdk/ui/H5WebActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->connectTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zqhy/sdk/ui/H5WebActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    return v0
.end method

.method static synthetic access$800(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zqhy/sdk/ui/H5WebActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle2:Landroid/view/View;

    return-object v0
.end method

.method private checkNetWorkConnected()V
    .locals 3

    .prologue
    .line 450
    invoke-static {p0}, Lcom/zqhy/sdk/utils/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 453
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e"

    new-instance v2, Lcom/zqhy/sdk/ui/H5WebActivity$4;

    invoke-direct {v2, p0}, Lcom/zqhy/sdk/ui/H5WebActivity$4;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/zqhy/sdk/ui/H5WebActivity$3;

    invoke-direct {v2, p0}, Lcom/zqhy/sdk/ui/H5WebActivity$3;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 470
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 472
    :cond_0
    return-void
.end method

.method private destroyWebView()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->isDestroyWebView:Z

    .line 540
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 542
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-virtual {v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 544
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 545
    iput-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    .line 547
    :cond_0
    return-void
.end method

.method public static goToWebActivity(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->goToWebActivity(Landroid/app/Activity;Ljava/lang/String;ILcom/zqhy/sdk/callback/SDKCallBack;)V

    .line 104
    return-void
.end method

.method public static goToWebActivity(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const-string v1, "title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public static goToWebActivity(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/zqhy/sdk/callback/SDKCallBack;)V
    .locals 2

    .prologue
    .line 140
    sput-object p5, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "orientation"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string v1, "kefuInfo"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    return-void
.end method

.method public static goToWebActivity(Landroid/app/Activity;Ljava/lang/String;ILcom/zqhy/sdk/callback/SDKCallBack;)V
    .locals 2

    .prologue
    .line 123
    sput-object p3, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public static goToWebActivity(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/zqhy/sdk/callback/SDKCallBack;)V
    .locals 2

    .prologue
    .line 131
    sput-object p4, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v1, "kefuInfo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public static goToWebActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/zqhy/sdk/callback/SDKCallBack;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/zqhy/sdk/ui/H5WebActivity;->goToWebActivity(Landroid/app/Activity;Ljava/lang/String;ILcom/zqhy/sdk/callback/SDKCallBack;)V

    .line 100
    return-void
.end method

.method public static goToWebActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/zqhy/sdk/ui/c;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    .line 264
    const-string v0, "id"

    const-string v1, "cy_wv_load_page"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    .line 269
    const-string v0, "id"

    const-string v1, "id_tv_title"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idTvTitle:Landroid/widget/TextView;

    .line 270
    const-string v0, "id"

    const-string v1, "id_iv_question"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idIvQuestion:Landroid/widget/ImageView;

    .line 271
    const-string v0, "id"

    const-string v1, "layout_web_title"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->layoutWebTitle:Landroid/widget/FrameLayout;

    .line 273
    const-string v0, "id"

    const-string v1, "iv_no_network"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ivNoNetwork:Landroid/widget/ImageView;

    .line 274
    const-string v0, "id"

    const-string v1, "fl_error_page"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    .line 276
    const-string v0, "id"

    const-string v1, "rootView"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->rootView:Landroid/widget/LinearLayout;

    .line 278
    const-string v0, "id"

    const-string v1, "layout_listview"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->expandableLayoutListView:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    .line 281
    const-string v0, "id"

    const-string v1, "fl_title_1"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle1:Landroid/view/View;

    .line 282
    const-string v0, "id"

    const-string v1, "fl_title_2"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle2:Landroid/view/View;

    .line 284
    const-string v0, "id"

    const-string v1, "iv_back"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ivBack:Landroid/widget/ImageView;

    .line 285
    const-string v0, "id"

    const-string v1, "ll_close_page"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->llClosePage:Landroid/view/View;

    .line 286
    const-string v0, "id"

    const-string v1, "tv_title_2"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->tvTitle2:Landroid/widget/TextView;

    .line 288
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->setListView()V

    .line 290
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idIvQuestion:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ivNoNetwork:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/zqhy/sdk/ui/H5WebActivity$1;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/H5WebActivity$1;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->llClosePage:Landroid/view/View;

    new-instance v1, Lcom/zqhy/sdk/ui/H5WebActivity$2;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/H5WebActivity$2;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    return-void
.end method

.method private setLayout()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 586
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->isShow:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->expandableLayoutListView:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idIvQuestion:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "ic_zqsdk_gray_close"

    invoke-static {p0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ivNoNetwork:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 595
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->expandableLayoutListView:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idIvQuestion:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "ic_zqsdk_question"

    invoke-static {p0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setWebViewParam()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/high16 v7, 0x42900000    # 72.0f

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 205
    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v0, v8, :cond_0

    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v0, v9, :cond_5

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle2:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 214
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 215
    const-string v0, "0"

    .line 216
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 217
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    if-ne v1, v8, :cond_7

    .line 219
    const-string v0, "0"

    .line 220
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v6, :cond_1

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v8, :cond_1

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v9, :cond_2

    .line 221
    :cond_1
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 222
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v6, :cond_6

    .line 223
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 239
    :cond_2
    :goto_1
    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v5, :cond_3

    .line 243
    const/4 v1, -0x2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v6, :cond_4

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v5, :cond_4

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v8, :cond_4

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v9, :cond_b

    .line 249
    :cond_4
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v6, :cond_a

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->url:Ljava/lang/String;

    .line 259
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H5WebActivity url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 260
    return-void

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->tvTitle2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle1:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 225
    :cond_6
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 228
    :cond_7
    if-ne v1, v6, :cond_2

    .line 229
    const-string v0, "1"

    .line 230
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v6, :cond_8

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v5, :cond_8

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eq v1, v8, :cond_8

    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v9, :cond_2

    .line 231
    :cond_8
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v6, :cond_9

    .line 232
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->b(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 236
    :goto_3
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_1

    .line 234
    :cond_9
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    .line 252
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/orientation/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->url:Ljava/lang/String;

    goto/16 :goto_2

    .line 255
    :cond_b
    invoke-virtual {p0, v6}, Lcom/zqhy/sdk/ui/H5WebActivity;->setRequestedOrientation(I)V

    .line 256
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->url:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private webViewSetting()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "JavascriptInterface"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 399
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 401
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/zqhy/sdk/ui/H5WebActivity$a;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/H5WebActivity$a;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 402
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/zqhy/sdk/ui/H5WebActivity$b;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/H5WebActivity$b;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 403
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/zqhy/sdk/ui/H5WebActivity$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zqhy/sdk/ui/H5WebActivity$c;-><init>(Lcom/zqhy/sdk/ui/H5WebActivity;Lcom/zqhy/sdk/ui/H5WebActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 404
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 406
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 407
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 427
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 428
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 429
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 431
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 432
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 435
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 436
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 437
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->checkNetWorkConnected()V

    .line 444
    new-instance v0, Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    .line 445
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    sget-object v1, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->setCallBack(Lcom/zqhy/sdk/callback/SDKCallBack;)V

    .line 446
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-virtual {v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 551
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 552
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    return v0
.end method

.method public isChz(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 756
    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    invoke-virtual {p0, v0, p1}, Lcom/zqhy/sdk/ui/H5WebActivity;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 767
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loading()V
    .locals 1

    .prologue
    .line 381
    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loading(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public loading(I)V
    .locals 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loading(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public loading(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0, p1}, Lcom/zqhy/sdk/ui/c;->b(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->show()V

    goto :goto_0
.end method

.method public loadingComplete()V
    .locals 1

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 772
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 774
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const-string v2, "id"

    const-string v3, "id_iv_question"

    invoke-static {p0, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 559
    iget v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v1, v0, :cond_4

    .line 561
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    if-eqz v0, :cond_2

    .line 562
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    if-eqz v0, :cond_0

    .line 563
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/LoginCallBack;->onLoginCancel()V

    .line 565
    :cond_0
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/PayCallBack;

    if-eqz v0, :cond_1

    .line 566
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayCancel()V

    .line 568
    :cond_1
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/ExitCallBack;

    if-eqz v0, :cond_2

    .line 569
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/ExitCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/ExitCallBack;->onCancel()V

    .line 572
    :cond_2
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->finish()V

    .line 583
    :cond_3
    :goto_0
    return-void

    .line 575
    :cond_4
    iget-boolean v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->isShow:Z

    if-nez v1, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->isShow:Z

    .line 576
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->setLayout()V

    goto :goto_0

    .line 575
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 577
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "iv_no_network"

    invoke-static {p0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 578
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->checkNetWorkConnected()V

    .line 579
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 326
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 332
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 333
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_2
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    add-int/lit8 v0, v0, 0xd

    iget-object v3, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 340
    const-string v0, "1"

    .line 342
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_4

    .line 344
    const-string v0, "0"

    .line 350
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 355
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v4, :cond_0

    .line 358
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    .line 347
    const-string v0, "1"

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0, v2}, Lcom/zqhy/sdk/ui/H5WebActivity;->requestWindowFeature(I)Z

    .line 154
    const-string v0, "layout"

    const-string v1, "zq_sdk_cy_load_new_page_activity"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->setContentView(I)V

    .line 155
    sput-object p0, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    .line 156
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    .line 157
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->orientation:I

    .line 159
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->initViews()V

    .line 165
    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 166
    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->orientation:I

    if-nez v0, :cond_2

    .line 167
    invoke-virtual {p0, v3}, Lcom/zqhy/sdk/ui/H5WebActivity;->setRequestedOrientation(I)V

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->url:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H5WebActivity url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->webViewSetting()V

    .line 181
    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-ne v0, v2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idIvQuestion:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "ic_zqsdk_gray_close"

    invoke-static {p0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :cond_0
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->e()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "07073sy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->t()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/c;->u()Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idIvQuestion:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :goto_1
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->flTitle2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_1
    return-void

    .line 169
    :cond_2
    invoke-virtual {p0, v2}, Lcom/zqhy/sdk/ui/H5WebActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0, v2}, Lcom/zqhy/sdk/ui/H5WebActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->idIvQuestion:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->destroyWebView()V

    .line 516
    iget v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->type:I

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->showFloat()V

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->loadingComplete()V

    .line 522
    sput-object v1, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    .line 523
    sput-object v1, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 525
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 491
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 493
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    if-eqz v0, :cond_3

    .line 494
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/LoginCallBack;->onLoginCancel()V

    .line 497
    :cond_0
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/PayCallBack;

    if-eqz v0, :cond_1

    .line 498
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayCancel()V

    .line 500
    :cond_1
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/ExitCallBack;

    if-eqz v0, :cond_2

    .line 501
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/ExitCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/ExitCallBack;->onCancel()V

    .line 510
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 506
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 530
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->dismiss()V

    .line 533
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 477
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 479
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 481
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 482
    if-nez v0, :cond_1

    new-instance v0, Landroid/view/View;

    sget-object v1, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 483
    :goto_0
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/zqhy/sdk/ui/H5WebActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 484
    if-nez v0, :cond_0

    .line 486
    :goto_1
    return-void

    .line 485
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 746
    :cond_0
    return-void
.end method

.method public setListView()V
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kefuInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->kefuInfo:Ljava/lang/String;

    .line 319
    new-instance v0, Lcom/zqhy/sdk/a/a;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->kefuInfo:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/zqhy/sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/zqhy/sdk/ui/H5WebActivity;->expandableLayoutListView:Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;

    invoke-virtual {v1, v0}, Lcom/zqhy/sdk/ui/expand/ExpandableLayoutListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    return-void
.end method
