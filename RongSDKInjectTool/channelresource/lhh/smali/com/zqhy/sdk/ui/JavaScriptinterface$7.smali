.class Lcom/zqhy/sdk/ui/JavaScriptinterface$7;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;->payCallBack(Ljava/lang/String;)V
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
    .line 264
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    instance-of v0, v0, Lcom/zqhy/sdk/callback/PayCallBack;

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string v2, "state"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 273
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 274
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/PayCallBack;->onPaySuccess(Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/16 v2, 0x44b

    if-ne v0, v2, :cond_2

    .line 276
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayCancel()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 282
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    const-string v1, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayFailure(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
