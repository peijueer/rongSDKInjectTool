.class Lcom/rongmzw/frame/sdk/activity/WebActivity$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;


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
    .line 44
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$200(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$100(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "secret":Ljava/lang/String;
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$000(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/sdk/common/utils/StringManagerUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    invoke-static {v2}, Lcom/rongmzw/frame/sdk/utils/ParamUtils;->getGeneralParams(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 50
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "mzwid"

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$000(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v2, "uid"

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->mzwId:Ljava/lang/String;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$000(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v0, v1}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->addKey(Ljava/util/Map;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$100(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->convertParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$102(Lcom/rongmzw/frame/sdk/activity/WebActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->webViewForBind:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$200(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/activity/WebActivity$1;->this$0:Lcom/rongmzw/frame/sdk/activity/WebActivity;

    # getter for: Lcom/rongmzw/frame/sdk/activity/WebActivity;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/activity/WebActivity;->access$100(Lcom/rongmzw/frame/sdk/activity/WebActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    return-void
.end method
