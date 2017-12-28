.class Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript$6;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v0

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$5(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v1

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$5(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\r\n|\r|\n|\n\r)"

    const-string v3, "<br>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$7(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v0

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHashMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$8(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v0

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHashMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$8(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v2}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v2

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$5(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mGetResult2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v2}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v2

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;
    invoke-static {v2}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$5(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v0

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$9(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->this$1:Lcom/arcsoft/hpay100/web/HPayJavascript$6;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;

    move-result-object v0

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$9(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:IYUE.req_callback(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
