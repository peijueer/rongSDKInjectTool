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
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->token:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/rongmzw/frame/sdk/activity/WebActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->token:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->token:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mzwid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    .line 40
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    .line 41
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->setContentView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    invoke-static {v1}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-static {p0}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 45
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "mzwid"

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "uid"

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    .line 49
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 51
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 52
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;

    new-instance v2, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;

    invoke-direct {v2, p0}, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;-><init>(Lcom/rongmzw/frame/sdk/activity/WebActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    return-void
.end method
