.class Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/b;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppOrderid:Ljava/lang/String;

.field private mPage:I

.field private mPayId:Ljava/lang/String;

.field private mPayName:Ljava/lang/String;

.field private mPrice:I

.field private mScheme:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayName:Ljava/lang/String;

    const/4 v0, 0x6

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    iput p6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    iput-object p5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayName:Ljava/lang/String;

    iput p7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

    return-void
.end method


# virtual methods
.method public onFinsh(Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4001"

    const/4 v10, 0x6

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

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4002"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

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

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    const-string v8, "2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

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

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4003"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

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

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4004"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->a(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$7(Lcom/arcsoft/hpay100/config/HPaySMS;)V

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    if-eqz v0, :cond_6

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget v0, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mSdkFeeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    const-string v2, ""

    iget v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    iget v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPrice:I

    const-string v8, "2"

    const-string v9, "4005"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mAppOrderid:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayName:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v1

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v2

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v3

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v4

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v5

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v6

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    # getter for: Lcom/arcsoft/hpay100/HPaySdkAPI;->mPaySMSYJDY:Lcom/arcsoft/hpay100/config/HPaySMS;
    invoke-static {}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$8()Lcom/arcsoft/hpay100/config/HPaySMS;

    move-result-object v7

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYCreateOrder;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
