.class final Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;
.super Lcom/zhy/http/okhttp/callback/StringCallback;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getSecretKey(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$getSecretKeyCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

.field final synthetic val$isResend:Z


# direct methods
.method constructor <init>(ZLcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;->val$isResend:Z

    iput-object p2, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;->val$getSecretKeyCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "id"    # I

    .prologue
    .line 230
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 226
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;->onResponse(Ljava/lang/String;I)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/rongmzw/frame/sdk/utils/HttpUtils;->secretkey:Ljava/lang/String;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-boolean v0, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;->val$isResend:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->reSendHttp()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;->val$getSecretKeyCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$4;->val$getSecretKeyCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    const-string v1, "getsecret"

    # getter for: Lcom/rongmzw/frame/sdk/utils/HttpUtils;->secretkey:Ljava/lang/String;
    invoke-static {}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_1
    return-void
.end method
