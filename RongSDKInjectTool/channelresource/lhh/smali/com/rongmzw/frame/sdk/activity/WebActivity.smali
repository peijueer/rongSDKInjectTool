.class public Lcom/rongmzw/frame/sdk/activity/WebActivity;
.super Landroid/app/Activity;
.source "WebActivity.java"


# instance fields
.field private mzwId:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private webViewForBind:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->token:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/activity/WebActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/activity/WebActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/rongmzw/frame/sdk/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/activity/WebActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/activity/WebActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/activity/WebActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->token:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mzwid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    .line 42
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->setContentView(Landroid/view/View;)V

    .line 44
    new-instance v0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;-><init>(Lcom/rongmzw/frame/sdk/activity/WebActivity;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getSecretKey(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;Z)V

    .line 64
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    new-instance v1, Lcom/rongmzw/frame/sdk/activity/WebActivity$2;

    invoke-direct {v1, p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity$2;-><init>(Lcom/rongmzw/frame/sdk/activity/WebActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    return-void
.end method
