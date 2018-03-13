.class final Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;
.super Lcom/zhy/http/okhttp/callback/StringCallback;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/utils/HttpUtils;->loginRequest(Landroid/app/Activity;Ljava/util/Map;Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$loginHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;->val$loginHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    invoke-direct {p0}, Lcom/zhy/http/okhttp/callback/StringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "id"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;->val$loginHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    const-string v1, "login"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;->onResponse(Ljava/lang/String;I)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;I)V
    .locals 5
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-static {}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginResponse-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$100()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;

    .line 78
    .local v0, "loginResponse":Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getErr_no()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 80
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$302(I)I

    .line 81
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;->val$loginHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    const-string v2, "login"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->getErr_no()I

    move-result v1

    const v2, 0x186be

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$300()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 83
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->getSecretKey(Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;Z)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {v4}, Lcom/rongmzw/frame/sdk/utils/HttpUtils;->access$302(I)I

    .line 86
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;->val$loginHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    const-string v2, "login"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/HttpUtils$2;->val$loginHttpCallback:Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;

    const-string v2, "login"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/rongmzw/frame/sdk/callback/RongHttpCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
