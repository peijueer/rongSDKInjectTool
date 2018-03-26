.class Lcom/zqhy/sdk/ui/JavaScriptinterface$5;
.super Landroid/os/Handler;
.source "JavaScriptinterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/JavaScriptinterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/ui/JavaScriptinterface;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$5;->a:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$5;->a:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v0, v0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$5;->a:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v0, v0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$5;->a:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    iget-object v0, v0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->dismiss()V

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface$5;->a:Lcom/zqhy/sdk/ui/JavaScriptinterface;

    # invokes: Lcom/zqhy/sdk/ui/JavaScriptinterface;->handlerAlipay(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->access$300(Lcom/zqhy/sdk/ui/JavaScriptinterface;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
