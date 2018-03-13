.class Lcom/zqhy/sdk/ui/JavaScriptinterface$8;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;->aliPay(Ljava/lang/String;)V
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
    .line 297
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x9003

    .line 300
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    instance-of v0, v0, Lcom/zqhy/sdk/callback/PayCallBack;

    if-eqz v0, :cond_0

    .line 303
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 304
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 305
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    const-string v3, "state"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 307
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-eqz v1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->doAliPay(Lorg/json/JSONObject;I)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const/16 v1, 0x44b

    if-ne v0, v1, :cond_2

    .line 310
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayCancel()V

    .line 311
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->a:Ljava/lang/String;

    const v2, 0x9003

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$200(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 318
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    const-string v1, "\u6570\u636e\u89e3\u6790\u9519\u8bef"

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayFailure(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->a:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$200(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0, v2}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayFailure(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;->a:Ljava/lang/String;

    const v2, 0x9003

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$200(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
