.class Lcom/arcsoft/hpay100/web/HPayJavascript$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$mapjson:Ljava/lang/String;

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$mapjson:Ljava/lang/String;

    iput-object p3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/arcsoft/hpay100/web/HPayJavascript$7;)Lcom/arcsoft/hpay100/web/HPayJavascript;
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$mapjson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$mapjson:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move-object v0, v1

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$0(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$url:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/arcsoft/hpay100/net/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mGetResult:Ljava/lang/String;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$5(Lcom/arcsoft/hpay100/web/HPayJavascript;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    # getter for: Lcom/arcsoft/hpay100/web/HPayJavascript;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$6(Lcom/arcsoft/hpay100/web/HPayJavascript;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/arcsoft/hpay100/web/HPayJavascript$7$1;

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->val$key:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/arcsoft/hpay100/web/HPayJavascript$7$1;-><init>(Lcom/arcsoft/hpay100/web/HPayJavascript$7;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "js post key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "dalongTest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "js post value:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/HPayJavascript$7;->this$0:Lcom/arcsoft/hpay100/web/HPayJavascript;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayJavascript;->access$4(Lcom/arcsoft/hpay100/web/HPayJavascript;Ljava/lang/String;)V

    goto :goto_1
.end method
