.class final Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;
.super Lcom/zhy/http/okhttp/callback/StringCallback;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/utils/HttpUtils;->initRequest(Landroid/app/Activity;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$initHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;->val$initHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "id"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;->val$initHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;->onResponse(Ljava/lang/String;I)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 33
    # getter for: Lcom/rongmzw/frame/sdk/utils/HttpUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$1;->val$initHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    const-string v1, "init"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
