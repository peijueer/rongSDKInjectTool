.class Lcom/zqhy/sdk/ui/JavaScriptinterface$6;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;->loginTestCallBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zqhy/sdk/ui/JavaScriptinterface;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    instance-of v0, v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    if-eqz v0, :cond_0

    .line 211
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 213
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 214
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/zqhy/sdk/model/e;->a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/model/e;

    move-result-object v1

    .line 216
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/zqhy/sdk/callback/LoginCallBack;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/d;->b(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->initFloatView(Landroid/app/Activity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    const-string v1, "callback_data"

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x9002

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 251
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 252
    return-void

    .line 220
    :cond_1
    :try_start_1
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/LoginCallBack;->onLoginFailure(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 225
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # getter for: Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;
    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/LoginCallBack;

    const-string v1, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/LoginCallBack;->onLoginFailure(Ljava/lang/String;)V

    goto :goto_0
.end method
