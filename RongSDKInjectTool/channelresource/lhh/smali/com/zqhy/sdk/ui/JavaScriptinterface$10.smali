.class Lcom/zqhy/sdk/ui/JavaScriptinterface$10;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;->exitCallback(Ljava/lang/String;)V
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
    .line 365
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iput-object p2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->a:Ljava/lang/String;

    const v2, 0x9005

    invoke-static {v0, v1, v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$200(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;I)V

    .line 370
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 371
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v1

    instance-of v1, v1, Lcom/zqhy/sdk/callback/ExitCallBack;

    if-eqz v1, :cond_0

    .line 373
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 374
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->h()V

    .line 375
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->destroyFloat()V

    .line 376
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/ExitCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/ExitCallBack;->onExit()V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;->b:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/callback/ExitCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/ExitCallBack;->onContinueGame()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
