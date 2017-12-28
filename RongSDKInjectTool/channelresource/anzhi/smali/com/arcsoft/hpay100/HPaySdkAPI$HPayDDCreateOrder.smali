.class Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/b;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppOrderId:Ljava/lang/String;

.field private mCodeType:I

.field private mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private mPayId:Ljava/lang/String;

.field private mPayName:Ljava/lang/String;

.field private mPrice:I

.field private mScheme:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iput-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    iput p5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    iput-object p6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iput p7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iput-object p8, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    return-void
.end method


# virtual methods
.method public onFinsh(Ljava/lang/String;)V
    .locals 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4001"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const/16 v5, 0x17da

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4002"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const/16 v5, 0x17da

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_3

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    const-string v8, "2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    :goto_2
    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    move v5, v12

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "res"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4003"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const/16 v5, 0x17da

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, ""

    :try_start_1
    const-string v1, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v11, v0

    :goto_3
    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resdes:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4004"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const/16 v5, 0x17da

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    move-object v11, v0

    goto :goto_3

    :cond_5
    invoke-static {v11}, Lcom/arcsoft/hpay100/config/s;->a(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v12

    if-nez v12, :cond_6

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4005"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPrice:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mCodeType:I

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    const/16 v5, 0x17da

    const-string v6, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mAppOrderId:Ljava/lang/String;

    iput-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayName:Ljava/lang/String;

    iput-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mPayId:Ljava/lang/String;

    iput-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget v3, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget v7, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOpenUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget v3, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget v7, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "4006"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x17da

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v12, v0, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_7
    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mIsFullScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-static {v0, v12, v11, v1}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->starHPayWebActivity(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-static {v0, v12, v11, v1}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->starHPayWebActivity(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mFeeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget v3, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget v7, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "4006"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x17da

    const-string v1, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static {v12, v0, v1}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_a
    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mIsFullScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-static {v0, v12, v11, v1}, Lcom/arcsoft/hpay100/web/HPayWebFullActivity;->starHPayWebActivity(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-static {v0, v12, v11, v1}, Lcom/arcsoft/hpay100/web/HPayWebActivity;->starHPayWebActivity(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_c
    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mScheme:I

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startYJDYZFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ILcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v12, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$1(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ILcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_d
    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    sget v0, Lcom/arcsoft/hpay100/config/c;->j:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v12, v1, v2, v3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v2, 0x0

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startSZLKFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v12, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$3(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto/16 :goto_0

    :cond_f
    iget v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_11

    sget v0, Lcom/arcsoft/hpay100/config/c;->j:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v12, v1, v2, v3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v2, 0x0

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startDDYZMPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v12, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$4(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_14

    iget-object v0, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_14

    const-string v0, "xtddo"

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSAddress:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "xtddo"

    iget-object v1, v12, Lcom/arcsoft/hpay100/config/HPaySMS;->mSMSContent:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v2, 0x0

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startXTDDOPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v12, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$5(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto/16 :goto_0

    :cond_12
    sget v0, Lcom/arcsoft/hpay100/config/c;->j:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v12, v1, v2, v3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v2, 0x0

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startYYFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v12, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$6(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto/16 :goto_0

    :cond_14
    sget v0, Lcom/arcsoft/hpay100/config/c;->j:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->showDDDialog(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V
    invoke-static {v0, v12, v1, v2, v3}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$2(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Ljava/lang/String;Lcom/arcsoft/hpay100/config/ac;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    const/4 v2, 0x0

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->startYYFPay(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    invoke-static {v0, v12, v1, v2}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$6(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V

    goto/16 :goto_0

    :cond_16
    move-object v6, v11

    goto/16 :goto_2
.end method
