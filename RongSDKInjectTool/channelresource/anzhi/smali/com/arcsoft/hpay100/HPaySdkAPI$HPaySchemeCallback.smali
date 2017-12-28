.class Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/b;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppOrderID:Ljava/lang/String;

.field private mCodeType:I

.field private mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private mPayID:Ljava/lang/String;

.field private mPayName:Ljava/lang/String;

.field private mPrice:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/arcsoft/hpay100/HPaySdkCallback;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    iput p5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    iput p6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    iput-object p7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    return-void
.end method


# virtual methods
.method public onFinsh(Ljava/lang/String;)V
    .locals 19

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const/4 v5, -0x1

    const-string v6, "2"

    const-string v7, "2006"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    const/16 v6, 0x17da

    const-string v7, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v1 .. v7}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v2, v1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const/4 v5, -0x1

    const-string v6, "2"

    const-string v7, "2007"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    const/16 v6, 0x17da

    const-string v7, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v1 .. v7}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v2, v1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "msg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const/4 v5, -0x1

    const-string v6, "2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v7, "\u7cfb\u7edf\u7e41\u5fd9"

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move v6, v10

    invoke-static/range {v1 .. v7}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v2, v1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "res"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const/4 v5, -0x1

    const-string v6, "2"

    const-string v7, "2008"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    const/16 v6, 0x17da

    const-string v7, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v1 .. v7}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v2, v1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, ""

    :try_start_1
    const-string v2, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_3
    const-string v2, "dalongTest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resdes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const/4 v5, -0x1

    const-string v6, "2"

    const-string v7, "2009"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    const/16 v6, 0x17da

    const-string v7, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v1 .. v7}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v2, v1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, ""

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/arcsoft/hpay100/config/s;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ah;

    move-result-object v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const/4 v5, -0x1

    const-string v6, "2"

    const-string v7, "2010"

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    const/16 v6, 0x17da

    const-string v7, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-static/range {v1 .. v7}, Lcom/arcsoft/hpay100/config/s;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v2, v1}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v16

    iget v5, v0, Lcom/arcsoft/hpay100/config/ah;->b:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const-string v6, "1"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scheme--:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-ne v5, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move/from16 v18, v0

    new-instance v6, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    move v13, v5

    invoke-direct/range {v6 .. v14}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/arcsoft/hpay100/HPaySdkCallback;)V

    move-object v7, v2

    move-object v8, v3

    move v9, v5

    move-object v10, v4

    move v11, v15

    move-object/from16 v12, v17

    move-object v13, v1

    move/from16 v14, v18

    move-object v15, v6

    invoke-static/range {v7 .. v15}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const-string v8, "1"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_7
    :goto_4
    move-object/from16 v0, v16

    iget v1, v0, Lcom/arcsoft/hpay100/config/ah;->c:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/utils/o;->b()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->i(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/utils/HPaySMSUtils;->a(Landroid/content/Context;Z)Z

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    if-ne v5, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v1}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-static/range {v2 .. v9}, Lcom/arcsoft/hpay100/HPaySdkActivity;->starPayActivity(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Lcom/arcsoft/hpay100/HPaySdkCallback;)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x2

    if-ne v5, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/config/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move/from16 v18, v0

    new-instance v6, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mCodeType:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    move v13, v5

    invoke-direct/range {v6 .. v14}, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayDDCreateOrder;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/arcsoft/hpay100/HPaySdkCallback;)V

    move-object v7, v2

    move-object v8, v3

    move v9, v5

    move-object v10, v4

    move v11, v15

    move-object/from16 v12, v17

    move-object v13, v1

    move/from16 v14, v18

    move-object v15, v6

    invoke-static/range {v7 .. v15}, Lcom/arcsoft/hpay100/config/c;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/b;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mAppOrderID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPayID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPaySchemeCallback;->mPrice:I

    const-string v8, "1"

    const-string v9, ""

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_a
    move-object v7, v9

    goto/16 :goto_2
.end method
