.class Lcom/arcsoft/hpay100/web/HPayJavascript$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$6;)Lcom/arcsoft/hpay100/web/HPayJavascript;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->val$url:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/arcsoft/hpay100/net/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$5(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "0"

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$6(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->val$key:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/arcsoft/hpay100/web/HPayJavascript$6$1;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript$6;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$6;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    goto :goto_0
.end method
