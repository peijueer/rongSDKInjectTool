.class Lcom/rongmzw/frame/sdk/activity/WebActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/activity/WebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/activity/WebActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/activity/WebActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    const-string v6, "success.php?data="

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 77
    const-string v6, "data="

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "userInfoJson":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 79
    .end local v4    # "userInfoJson":Ljava/lang/String;
    .local v5, "userInfoJson":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 80
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v6, Lcom/rongmzw/frame/sdk/domain/http/User;

    invoke-virtual {v1, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rongmzw/frame/sdk/domain/http/User;

    .line 81
    .local v2, "user":Lcom/rongmzw/frame/sdk/domain/http/User;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/rongmzw/frame/sdk/domain/http/User;->setLogintime(J)V

    .line 82
    new-instance v0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;

    iget-object v6, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    invoke-direct {v0, v6}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "accountKeeper":Lcom/rongmzw/frame/sdk/utils/AccountKeeper;
    invoke-virtual {v0, v2}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->addUser(Lcom/rongmzw/frame/sdk/domain/http/User;)V

    .line 84
    new-instance v3, Lcom/rongmzw/frame/sdk/domain/http/UserData;

    invoke-direct {v3}, Lcom/rongmzw/frame/sdk/domain/http/UserData;-><init>()V

    .line 85
    .local v3, "userData":Lcom/rongmzw/frame/sdk/domain/http/UserData;
    invoke-virtual {v3, v2}, Lcom/rongmzw/frame/sdk/domain/http/UserData;->initWithUser(Lcom/rongmzw/frame/sdk/domain/http/User;)V

    .line 86
    invoke-virtual {v0, v3}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->addUserData(Lcom/rongmzw/frame/sdk/domain/http/UserData;)V

    .line 87
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    const-string v7, "mzw_spf"

    const-string v8, "logout_state"

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putBooleanShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    const-string v7, "mzw_spf"

    const-string v8, "mzwid_bind_state"

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/rongmzw/frame/sdk/utils/LocalSpfManagerUtils;->putIntShared(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    invoke-virtual {v6}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->finish()V

    .line 90
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->token:Ljava/lang/String;
    invoke-static {v6}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$000(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginSuccessCallBack(Ljava/lang/String;)V

    .line 92
    .end local v0    # "accountKeeper":Lcom/rongmzw/frame/sdk/utils/AccountKeeper;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "user":Lcom/rongmzw/frame/sdk/domain/http/User;
    .end local v3    # "userData":Lcom/rongmzw/frame/sdk/domain/http/UserData;
    .end local v5    # "userInfoJson":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 97
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 71
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 60
    .local v0, "hit":Landroid/webkit/WebView$HitTestResult;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 64
    :goto_0
    return v1

    .line 63
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x1

    goto :goto_0
.end method
