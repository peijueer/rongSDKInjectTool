.class Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/b;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

.field private mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

.field private mIsShowYJDY:Z

.field private mPage:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;ZLcom/arcsoft/hpay100/HPaySdkCallback;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    iput-boolean v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    iput v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    iput-object p1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iput-boolean p3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    iput-object p4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    iput p5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    return-void
.end method


# virtual methods
.method public onFinsh(Ljava/lang/String;)V
    .locals 11

    const/16 v5, 0x17da

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideProgressDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$0(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideDDDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$9(Landroid/app/Activity;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    if-eqz v0, :cond_1

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v5, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5001"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "\u9a8c\u8bc1\u7801\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/arcsoft/hpay100/config/s;->b(Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ak;

    move-result-object v1

    if-nez v1, :cond_5

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    if-eqz v0, :cond_4

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v5, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5002"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string v0, "\u9a8c\u8bc1\u7801\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    iget v0, v1, Lcom/arcsoft/hpay100/config/ak;->a:I

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    if-eqz v0, :cond_8

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v2, v1, Lcom/arcsoft/hpay100/config/ak;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v0, v1, Lcom/arcsoft/hpay100/config/ak;->b:Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v1, v1, Lcom/arcsoft/hpay100/config/ak;->a:I

    invoke-static {v2, v1, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5003"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, v1, Lcom/arcsoft/hpay100/config/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_9
    const-string v0, "\u9a8c\u8bc1\u7801\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_a
    iget-object v0, v1, Lcom/arcsoft/hpay100/config/ak;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    if-eqz v0, :cond_c

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v5, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5004"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_c
    const-string v0, "\u9a8c\u8bc1\u7801\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_d
    const-string v0, ""

    :try_start_0
    iget-object v0, v1, Lcom/arcsoft/hpay100/config/ak;->c:Ljava/lang/String;

    const-string v1, "dbbsRYnaQPKia/sCWJGRNAsQH7PLIw3a"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_5
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

    if-eqz v1, :cond_10

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    if-eqz v0, :cond_f

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v5, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5005"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_5

    :cond_f
    const-string v0, "\u9a8c\u8bc1\u7801\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_10
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_7
    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    if-eqz v0, :cond_12

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v5, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_11
    :goto_8
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    const-string v9, "5006"

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    const-string v0, "\u9a8c\u8bc1\u7801\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :cond_13
    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_14

    const/16 v1, 0xc8

    if-ne v9, v1, :cond_16

    :cond_14
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    # invokes: Lcom/arcsoft/hpay100/HPaySdkAPI;->hideYJDYDialog(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkAPI;->access$10(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/s;->b(Lcom/arcsoft/hpay100/config/HPaySMS;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_15
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "1"

    const-string v9, ""

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_16
    iget-boolean v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mIsShowYJDY:Z

    if-eqz v1, :cond_18

    const-string v0, "\u7cfb\u7edf\u7e41\u5fd9"

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    invoke-static {v1, v5, v0}, Lcom/arcsoft/hpay100/config/s;->a(Lcom/arcsoft/hpay100/config/HPaySMS;ILjava/lang/String;)Lcom/arcsoft/hpay100/HPaySdkResult;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySdkCallback:Lcom/arcsoft/hpay100/HPaySdkCallback;

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySdkCallback;->payResult(Lcom/arcsoft/hpay100/HPaySdkResult;)V

    :cond_17
    :goto_9
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v1, v1, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidAPP:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v2, v2, Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR:Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v3, v3, Lcom/arcsoft/hpay100/config/HPaySMS;->mScheme:I

    iget-object v4, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v4, v4, Lcom/arcsoft/hpay100/config/HPaySMS;->mPayId:Ljava/lang/String;

    iget-object v5, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v5, v5, Lcom/arcsoft/hpay100/config/HPaySMS;->mChType:Ljava/lang/String;

    iget-object v6, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget-object v6, v6, Lcom/arcsoft/hpay100/config/HPaySMS;->mChID:Ljava/lang/String;

    iget-object v7, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mHPaySMS:Lcom/arcsoft/hpay100/config/HPaySMS;

    iget v7, v7, Lcom/arcsoft/hpay100/config/HPaySMS;->mAmount:I

    const-string v8, "2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mPage:I

    invoke-static/range {v0 .. v10}, Lcom/arcsoft/hpay100/config/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_19
    iget-object v0, p0, Lcom/arcsoft/hpay100/HPaySdkAPI$HPayYJDYSubmitYZM;->mActivity:Landroid/app/Activity;

    const-string v1, "\u9a8c\u8bc1\u7801\u63d0\u4ea4\u5931\u8d25,\u8bf7\u91cd\u65b0\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9
.end method
