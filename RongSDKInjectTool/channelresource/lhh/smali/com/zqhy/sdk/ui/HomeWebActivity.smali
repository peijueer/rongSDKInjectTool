.class public Lcom/zqhy/sdk/ui/HomeWebActivity;
.super Landroid/app/Activity;
.source "HomeWebActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/ui/HomeWebActivity$c;,
        Lcom/zqhy/sdk/ui/HomeWebActivity$b;,
        Lcom/zqhy/sdk/ui/HomeWebActivity$a;
    }
.end annotation


# static fields
.field public static activity:Landroid/app/Activity;


# instance fields
.field ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

.field private connectTimeout:Ljava/lang/Runnable;

.field private currentUrl:Ljava/lang/String;

.field private flErrorPage:Landroid/widget/FrameLayout;

.field private headerView:Landroid/widget/FrameLayout;

.field private isDestroyWebView:Z

.field private ivBack:Landroid/widget/ImageView;

.field private ivFresh:Landroid/widget/ImageView;

.field private ivNoNetwork:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private progressDialog:Lcom/zqhy/sdk/ui/c;

.field private rootView:Landroid/widget/LinearLayout;

.field private tvTitle:Landroid/widget/TextView;

.field private type:I

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->mHandler:Landroid/os/Handler;

    .line 76
    iput v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    .line 370
    iput-boolean v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->isDestroyWebView:Z

    .line 403
    new-instance v0, Lcom/zqhy/sdk/ui/HomeWebActivity$4;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/HomeWebActivity$4;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->connectTimeout:Ljava/lang/Runnable;

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zqhy/sdk/ui/HomeWebActivity;)Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->isDestroyWebView:Z

    return v0
.end method

.method static synthetic access$500(Lcom/zqhy/sdk/ui/HomeWebActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->connectTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zqhy/sdk/ui/HomeWebActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/zqhy/sdk/ui/HomeWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    return-object p1
.end method

.method private checkNetWorkConnected()V
    .locals 3

    .prologue
    .line 303
    invoke-static {p0}, Lcom/zqhy/sdk/utils/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    .line 306
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e"

    new-instance v2, Lcom/zqhy/sdk/ui/HomeWebActivity$3;

    invoke-direct {v2, p0}, Lcom/zqhy/sdk/ui/HomeWebActivity$3;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/zqhy/sdk/ui/HomeWebActivity$2;

    invoke-direct {v2, p0}, Lcom/zqhy/sdk/ui/HomeWebActivity$2;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V

    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 323
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 327
    :cond_1
    return-void
.end method

.method private destroyWebView()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->isDestroyWebView:Z

    .line 375
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 377
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-virtual {v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 380
    iput-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    .line 382
    :cond_0
    return-void
.end method

.method public static goToWebActivity(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zqhy/sdk/ui/HomeWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/zqhy/sdk/ui/c;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    .line 157
    const-string v0, "id"

    const-string v1, "cy_wv_load_page"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    .line 159
    const-string v0, "id"

    const-string v1, "tvTitle"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->tvTitle:Landroid/widget/TextView;

    .line 160
    const-string v0, "id"

    const-string v1, "ivBack"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ivBack:Landroid/widget/ImageView;

    .line 161
    const-string v0, "id"

    const-string v1, "ivFresh"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ivFresh:Landroid/widget/ImageView;

    .line 162
    const-string v0, "id"

    const-string v1, "fl_title_1"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;

    .line 164
    const-string v0, "id"

    const-string v1, "iv_no_network"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ivNoNetwork:Landroid/widget/ImageView;

    .line 165
    const-string v0, "id"

    const-string v1, "fl_error_page"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    .line 167
    const-string v0, "id"

    const-string v1, "rootView"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->rootView:Landroid/widget/LinearLayout;

    .line 169
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ivNoNetwork:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ivFresh:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/zqhy/sdk/ui/HomeWebActivity$1;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/HomeWebActivity$1;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->headerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

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

    .line 105
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 106
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 107
    const-string v0, "0"

    .line 108
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    if-ne v1, v8, :cond_5

    .line 111
    const-string v0, "0"

    .line 112
    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v8, :cond_0

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-ne v1, v9, :cond_1

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 114
    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-ne v1, v6, :cond_4

    .line 115
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 132
    :cond_1
    :goto_0
    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-ne v1, v5, :cond_2

    .line 136
    const/4 v1, -0x2

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->flErrorPage:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v6, :cond_3

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v5, :cond_3

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v8, :cond_3

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-ne v1, v9, :cond_9

    .line 142
    :cond_3
    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-ne v1, v6, :cond_8

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getIntent()Landroid/content/Intent;

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

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    .line 152
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeWebActivity url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 153
    return-void

    .line 117
    :cond_4
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->b(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 120
    :cond_5
    if-ne v1, v6, :cond_1

    .line 121
    const-string v0, "1"

    .line 122
    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v6, :cond_6

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v5, :cond_6

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eq v1, v8, :cond_6

    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-ne v1, v9, :cond_1

    .line 123
    :cond_6
    iget v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-ne v1, v6, :cond_7

    .line 124
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->b(Landroid/content/Context;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 128
    :goto_2
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 126
    :cond_7
    invoke-static {p0}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v7}, Lcom/zqhy/sdk/utils/k;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 145
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getIntent()Landroid/content/Intent;

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

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 148
    :cond_9
    invoke-virtual {p0, v6}, Lcom/zqhy/sdk/ui/HomeWebActivity;->setRequestedOrientation(I)V

    .line 149
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    goto/16 :goto_1
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

    .line 268
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 270
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/zqhy/sdk/ui/HomeWebActivity$a;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/HomeWebActivity$a;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 271
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/zqhy/sdk/ui/HomeWebActivity$b;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/HomeWebActivity$b;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 272
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/zqhy/sdk/ui/HomeWebActivity$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zqhy/sdk/ui/HomeWebActivity$c;-><init>(Lcom/zqhy/sdk/ui/HomeWebActivity;Lcom/zqhy/sdk/ui/HomeWebActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 273
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 275
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 276
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 279
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 280
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 281
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 283
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 284
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 287
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 288
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 289
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 293
    const-string v0, "---web---"

    const-string v1, "do this"

    invoke-static {v0, v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 295
    const-string v0, "---web---"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do this load url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->checkNetWorkConnected()V

    .line 298
    new-instance v0, Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    .line 299
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-virtual {v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->getInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 387
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    return v0
.end method

.method public isChz(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 524
    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    invoke-virtual {p0, v0, p1}, Lcom/zqhy/sdk/ui/HomeWebActivity;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 535
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
    .line 250
    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loading(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public loading(I)V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loading(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public loading(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0, p1}, Lcom/zqhy/sdk/ui/c;->b(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->show()V

    goto :goto_0
.end method

.method public loadingComplete()V
    .locals 1

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->progressDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 540
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 542
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "iv_no_network"

    invoke-static {p0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "id"

    const-string v2, "ivFresh"

    invoke-static {p0, v1, v2}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->checkNetWorkConnected()V

    .line 393
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 397
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 201
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    add-int/lit8 v0, v0, 0xd

    iget-object v3, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 209
    const-string v0, "1"

    .line 211
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_4

    .line 213
    const-string v0, "0"

    .line 219
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

    .line 221
    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 224
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v4, :cond_0

    .line 227
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v5, :cond_0

    goto :goto_0

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    .line 216
    const-string v0, "1"

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/zqhy/sdk/ui/HomeWebActivity;->requestWindowFeature(I)Z

    .line 91
    const-string v0, "layout"

    const-string v1, "zq_sdk_cy_load_new_home_page_activity"

    invoke-static {p0, v0, v1}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->setContentView(I)V

    .line 92
    sput-object p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->activity:Landroid/app/Activity;

    .line 93
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    .line 95
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->initViews()V

    .line 97
    invoke-virtual {p0, v3}, Lcom/zqhy/sdk/ui/HomeWebActivity;->setRequestedOrientation(I)V

    .line 98
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeWebActivity url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->webViewSetting()V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->destroyWebView()V

    .line 353
    iget v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->type:I

    if-eqz v0, :cond_0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->loadingComplete()V

    .line 358
    const/4 v0, 0x0

    sput-object v0, Lcom/zqhy/sdk/ui/HomeWebActivity;->activity:Landroid/app/Activity;

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 360
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 340
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 344
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 365
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/zqhy/sdk/ui/HomeWebActivity;->ajsi:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->dismiss()V

    .line 368
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 334
    invoke-virtual {p0}, Lcom/zqhy/sdk/ui/HomeWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->hideFloat()V

    .line 335
    return-void
.end method
