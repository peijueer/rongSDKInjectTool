.class Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/b;


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field public mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field public mPage:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    return-void
.end method


# virtual methods
.method public onFinsh(Ljava/lang/String;)V
    .locals 11

    const/16 v4, 0x17da

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v4, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "11001"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/arcsoft/hpay100/config/s;->b(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ak;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v4, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "11002"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/arcsoft/hpay100/config/ak;->a:I

    if-eqz v1, :cond_5

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v4, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "11003"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lcom/arcsoft/hpay100/config/ak;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v4, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_6
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "11004"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string v1, ""

    :try_start_0
    iget-object v0, v0, Lcom/arcsoft/hpay100/config/ak;->c:Ljava/lang/String;

    const-string v1, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
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

    if-eqz v1, :cond_9

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v4, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_8
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "11005"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_1

    :cond_9
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_2
    if-nez v0, :cond_b

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v4, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_a
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "11006"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2

    :cond_b
    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_d

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->b(Lcom/arcsoft/hpay100/config/HPaySMS;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_c
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v4, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_e
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayServerResult;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
