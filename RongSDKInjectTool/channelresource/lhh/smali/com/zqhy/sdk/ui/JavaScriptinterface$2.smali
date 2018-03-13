.class Lcom/zqhy/sdk/ui/JavaScriptinterface$2;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;->buoyWxPay(Ljava/lang/String;)V
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
    .line 624
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 628
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 629
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 630
    const-string v2, "state"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 631
    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    if-eqz v1, :cond_1

    .line 633
    const-string v0, "out_trade_no"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    const-string v2, "BuoyPay-Wx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out_trade_no : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 636
    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/zqhy/sdk/model/a;->a(Landroid/content/Context;)Lcom/zqhy/sdk/model/a;

    move-result-object v2

    const-string v3, "BUOY_WXPAY"

    invoke-virtual {v2, v3}, Lcom/zqhy/sdk/model/a;->d(Ljava/lang/String;)Z

    .line 638
    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/zqhy/sdk/model/a;->a(Landroid/content/Context;)Lcom/zqhy/sdk/model/a;

    move-result-object v2

    const-string v3, "BUOY_WXPAY"

    invoke-virtual {v2, v3, v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->wechatZqhyPay(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :cond_1
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
