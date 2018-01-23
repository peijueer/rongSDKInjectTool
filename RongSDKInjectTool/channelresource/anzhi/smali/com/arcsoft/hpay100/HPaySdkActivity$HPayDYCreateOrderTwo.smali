.class Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/b;


# instance fields
.field public mPage:I

.field final synthetic this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method public constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;I)V
    .locals 1

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    iput p2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    return-void
.end method


# virtual methods
.method public onFinsh(Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "2"

    const-string v9, "4001"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "2"

    const-string v9, "4002"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v9, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    const-string v1, "res"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "2"

    const-string v9, "4003"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const-string v1, ""

    :try_start_1
    const-string v1, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resdes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "2"

    const-string v9, "4004"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->a(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$9(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mScheme:I
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$3()I

    move-result v3

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, ""

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPrice:I
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$5(Lcom/arcsoft/hpay100/HPaySdkActivity;)I

    move-result v7

    const-string v8, "2"

    const-string v9, "4005"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mAppOrderid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$2(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayname:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$7(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPayid:Ljava/lang/String;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$4(Lcom/arcsoft/hpay100/HPaySdkActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    sget-object v5, Lcom/arcsoft/hpay100/HPaySdkActivity;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->startDMWAP2Pay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;IILcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$12(Lcom/arcsoft/hpay100/HPaySdkActivity;Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;IILcom/arcsoft/hpay100/HPaySdkCallback;)V

    :goto_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v3}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v4}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v5}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v6}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v7}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->hideProgressDialog()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$1(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    new-instance v0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkActivity;->mPaySMSDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {v2}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$10(Lcom/arcsoft/hpay100/HPaySdkActivity;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayChange;-><init>(Lcom/arcsoft/hpay100/HPaySdkActivity;Lcom/arcsoft/hpay100/config/HPaySMS;)V

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/ab;->a(Lcom/arcsoft/hpay100/config/ar;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$13(Lcom/arcsoft/hpay100/HPaySdkActivity;Z)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkActivity$HPayDYCreateOrderTwo;->this$0:Lcom/arcsoft/hpay100/HPaySdkActivity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkActivity;->showDYSubmitSms()V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->access$14(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    goto :goto_4
.end method
