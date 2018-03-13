.class public Lcom/zqhy/sdk/ui/JavaScriptinterface;
.super Ljava/lang/Object;
.source "JavaScriptinterface.java"


# instance fields
.field loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field screenshot:Lcom/zqhy/sdk/c/a;

.field private sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

.field private spName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, "zq_sdk_sp"

    iput-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->spName:Ljava/lang/String;

    .line 941
    new-instance v0, Lcom/zqhy/sdk/ui/JavaScriptinterface$5;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/ui/JavaScriptinterface$5;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    .line 78
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/zqhy/sdk/ui/c;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zqhy/sdk/ui/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->spName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->spName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Lcom/zqhy/sdk/callback/SDKCallBack;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zqhy/sdk/ui/JavaScriptinterface;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->exitH5Activity(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zqhy/sdk/ui/JavaScriptinterface;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->handlerAlipay(Landroid/os/Message;)V

    return-void
.end method

.method private call(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1075
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1076
    return-void
.end method

.method private doCallback(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1037
    invoke-direct {p0, p1, p2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->exitH5Activity(Ljava/lang/String;I)V

    .line 1038
    return-void
.end method

.method private exitH5Activity(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 670
    const-string v1, "callback_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 672
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 676
    return-void
.end method

.method private handlerAlipay(Landroid/os/Message;)V
    .locals 5

    .prologue
    const v4, 0x9003

    const/4 v3, 0x0

    .line 955
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 957
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 958
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 959
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 962
    :pswitch_0
    new-instance v2, Lcom/zqhy/sdk/pay/a/c;

    invoke-direct {v2, v0}, Lcom/zqhy/sdk/pay/a/c;-><init>(Ljava/lang/String;)V

    .line 963
    iget-object v2, v2, Lcom/zqhy/sdk/pay/a/c;->a:Ljava/lang/String;

    .line 965
    const-string v0, "9000"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 967
    const-string v2, "state"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string v2, "msg"

    const-string v3, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v2, "data"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    invoke-direct {p0, v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 972
    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v2, v2, Lcom/zqhy/sdk/callback/PayCallBack;

    if-eqz v2, :cond_1

    .line 973
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/PayCallBack;->onPaySuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 975
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 976
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 977
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->reload()V

    goto :goto_0

    .line 979
    :cond_2
    invoke-direct {p0, v0, v4}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->doCallback(Ljava/lang/String;I)V

    goto :goto_0

    .line 982
    :cond_3
    invoke-direct {p0, v0, v4}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->doCallback(Ljava/lang/String;I)V

    goto :goto_0

    .line 988
    :cond_4
    const-string v0, "8000"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 989
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 990
    :cond_5
    const-string v0, "6001"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 991
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 992
    const-string v1, "state"

    const-string v2, "1099"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string v1, "msg"

    const-string v2, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-direct {p0, v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    .line 997
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/PayCallBack;

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayCancel()V

    goto/16 :goto_0

    .line 1002
    :cond_6
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1003
    const-string v1, "state"

    const-string v3, "-1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const-string v1, "msg"

    const-string v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v1, "data"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    invoke-direct {p0, v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    .line 1007
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    instance-of v0, v0, Lcom/zqhy/sdk/callback/PayCallBack;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u652f\u4ed8\u5931\u8d25\nresultStatus="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1016
    :pswitch_1
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u68c0\u67e5\u7ed3\u679c\u4e3a\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private joinQQGroup(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1059
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_0
    return-void

    .line 1064
    :catch_0
    move-exception v0

    .line 1066
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1067
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "\u672a\u5b89\u88c5\u624bQ\u6216\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private map2Json(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1025
    const-string v0, ""

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1028
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1030
    goto :goto_0

    .line 1031
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1033
    return-object v0
.end method

.method private session(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1045
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1046
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1047
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1048
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "\u672a\u5b89\u88c5\u624bQ\u6216\u5b89\u88c5\u7684\u7248\u672c\u4e0d\u652f\u6301"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showDownloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 755
    new-instance v0, Lcom/zqhy/sdk/ui/b;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v4, "layout"

    const-string v5, "zq_sdk_dialog_no_app"

    invoke-static {v3, v4, v5}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v3, v4}, Lcom/zqhy/sdk/utils/e;->a(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    const/16 v5, 0x11

    invoke-direct/range {v0 .. v5}, Lcom/zqhy/sdk/ui/b;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 756
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v2, "id"

    const-string v3, "btnCancel"

    invoke-static {v1, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/zqhy/sdk/ui/JavaScriptinterface$3;

    invoke-direct {v2, p0, v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface$3;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Lcom/zqhy/sdk/ui/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v2, "id"

    const-string v3, "btnDownload"

    invoke-static {v1, v2, v3}, Lcom/zqhy/sdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/b;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/zqhy/sdk/ui/JavaScriptinterface$4;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Lcom/zqhy/sdk/ui/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    invoke-virtual {v0, v8}, Lcom/zqhy/sdk/ui/b;->setCanceledOnTouchOutside(Z)V

    .line 772
    invoke-virtual {v0, v8}, Lcom/zqhy/sdk/ui/b;->setCancelable(Z)V

    .line 773
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/b;->show()V

    .line 774
    return-void
.end method


# virtual methods
.method public aliPay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 295
    const-string v0, "aliPay"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$8;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public autoLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 496
    return-void
.end method

.method public buoyAlipay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 590
    const-string v0, "buoyAlipay"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$13;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$13;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 615
    return-void
.end method

.method public buoyWxPay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 622
    const-string v0, "buoyWxPay"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$2;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 650
    return-void
.end method

.method public closeFloatWindow()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->destroyFloat()V

    .line 532
    return-void
.end method

.method public copyTxt(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyTxt :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 486
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "\u590d\u5236\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 488
    return-void
.end method

.method public delSdkUser(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delSdkUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/zqhy/sdk/model/b;->a()Lcom/zqhy/sdk/model/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zqhy/sdk/model/b;->a(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method public dial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1085
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1086
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1090
    :try_start_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/c;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public doAliPay(Lorg/json/JSONObject;I)V
    .locals 3

    .prologue
    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->loadingAlertDialog:Lcom/zqhy/sdk/ui/c;

    const-string v1, "\u6b63\u5728\u8df3\u8f6c\u652f\u4ed8\u5b9d..."

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/zqhy/sdk/pay/a/a;->a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/pay/a/a;

    move-result-object v0

    .line 934
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zqhy/sdk/pay/a/b;->a(Landroid/app/Activity;)Lcom/zqhy/sdk/pay/a/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zqhy/sdk/pay/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, p2}, Lcom/zqhy/sdk/pay/a/b;->a(Ljava/lang/String;Landroid/os/Handler;I)V

    .line 935
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->getInstance()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->fileDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public exitCallback(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 363
    const-string v0, "exitCallback"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$10;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

.method public getCallBack()Lcom/zqhy/sdk/callback/SDKCallBack;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    return-object v0
.end method

.method public getDeviceIdA()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zqhy/sdk/utils/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    const-string v0, "sdkcall"

    return-object v0
.end method

.method public getSdkData()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/zqhy/sdk/utils/i;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->spName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/zqhy/sdk/utils/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    const-string v1, "auth"

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/c;->e()Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/zqhy/sdk/utils/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 107
    const-string v4, "mobile"

    invoke-virtual {v0, v4}, Lcom/zqhy/sdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zqhy/sdk/model/c;->q()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    const-string v0, ""

    .line 113
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    const-string v1, ""

    .line 117
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zqhy/sdk/model/d;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gameid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "&tgid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mobile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sign="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSdkData\nstr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zqhy/sdk/model/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zqhy/sdk/utils/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/c;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "desStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 133
    return-object v0
.end method

.method public getSdkUser()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Lcom/zqhy/sdk/model/b;->a()Lcom/zqhy/sdk/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/b;->b()Ljava/util/List;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 427
    :cond_0
    const-string v0, ""

    .line 450
    :goto_0
    return-object v0

    .line 429
    :cond_1
    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$11;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/ui/JavaScriptinterface$11;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/db/UserBean;

    .line 442
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"username\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zqhy/sdk/db/UserBean;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"password\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zqhy/sdk/db/UserBean;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 447
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 448
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSdkUser:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public goBackGame()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 541
    :cond_0
    return-void
.end method

.method public initFloatView(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 893
    const-string v0, "initFloatView start"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v5

    .line 898
    if-eqz v5, :cond_0

    .line 902
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat()Z

    move-result v1

    if-nez v1, :cond_2

    .line 904
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->createFloat()V

    .line 906
    :cond_2
    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->l()I

    move-result v1

    if-eq v1, v2, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/ui/FloatWindowManager;->setFloatLocal(Z)V

    .line 907
    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->l()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 909
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 910
    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 911
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 913
    :cond_3
    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 914
    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 916
    :cond_4
    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->m()Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/zqhy/sdk/model/c;->p()Ljava/lang/String;

    move-result-object v5

    .line 916
    invoke-virtual/range {v0 .. v5}, Lcom/zqhy/sdk/ui/FloatWindowManager;->setNetworkIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_5
    const-string v0, "initFloatView end"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 906
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isAppInstall()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 727
    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/zqhy/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const/4 v0, 0x1

    .line 731
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatShow()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const/4 v0, 0x1

    .line 794
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public isQQAvilible(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 876
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 877
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 878
    if-eqz v3, :cond_0

    move v1, v2

    .line 879
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 880
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 881
    const-string v4, "com.tencent.mobileqq"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    const/4 v2, 0x1

    .line 886
    :cond_0
    return v2

    .line 879
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public isWeixinAvilible(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 859
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 860
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 861
    if-eqz v3, :cond_0

    move v1, v2

    .line 862
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 863
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 864
    const-string v4, "com.tencent.mm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    const/4 v2, 0x1

    .line 869
    :cond_0
    return v2

    .line 862
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public jumpOtherApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 521
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 523
    return-void
.end method

.method public loadLocalUrl(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 712
    const-string v0, "---JSInterFace---"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/zqhy/sdk/ui/HomeWebActivity;->goToWebActivity(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 715
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 702
    const-string v0, "---JSInterFace---"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 705
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 706
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 708
    return-void
.end method

.method public loginCallBack(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 141
    const-string v0, "loginCallback"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getType()I

    .line 145
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$1;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$1;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public loginTestCallBack(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 201
    const-string v0, "loginCallback"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->getType()I

    .line 205
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$6;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public logout()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 688
    const-string v0, "LOGOUT"

    const-string v1, "xxxxLogOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->getInstance(Landroid/content/Context;)Lcom/zqhy/sdk/ui/FloatWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/FloatWindowManager;->destroyFloat()V

    .line 692
    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->exitH5Activity(Ljava/lang/String;I)V

    .line 694
    invoke-static {}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->getInstance()Lcom/zqhy/sdk/platform/LehihiGameSDKApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/platform/LehihiGameSDKApi;->getReLoginCallBack()Lcom/zqhy/sdk/callback/ReLoginCallBack;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_0

    .line 696
    invoke-interface {v0}, Lcom/zqhy/sdk/callback/ReLoginCallBack;->onReLogin()V

    .line 698
    :cond_0
    return-void
.end method

.method public openApp(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 743
    const-string v1, "---JSInterFace---"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openApp-JSON : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "---JSInterFace---"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openApp-JSON : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/zqhy/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lcom/zqhy/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :goto_0
    return-void

    .line 751
    :cond_1
    const-string v0, "\u4e50\u55e8\u55e8\u6e38\u620f"

    const-string v1, "http://p1.btgame01.com/2017/09/21/59c313301c5aa.png"

    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/d;->b()Lcom/zqhy/sdk/model/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zqhy/sdk/model/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->showDownloadApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 658
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 661
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 663
    return-void
.end method

.method public payCallBack(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 262
    const-string v0, "payCallback"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$7;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public qqOnline(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qqOnline  qq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->isQQAvilible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->session(Ljava/lang/String;)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u5148\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public qqZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qqZone  zone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->isQQAvilible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0, p2}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->joinQQGroup(Ljava/lang/String;)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "\u8bf7\u5148\u5b89\u88c5QQ\u5ba2\u6237\u7aef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public saveSdkUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 393
    const-string v0, "saveSdkUser"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "username\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "password\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/zqhy/sdk/model/b;->a()Lcom/zqhy/sdk/model/b;

    move-result-object v0

    new-instance v1, Lcom/zqhy/sdk/db/UserBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/zqhy/sdk/db/UserBean;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/b;->a(Lcom/zqhy/sdk/db/UserBean;)V

    .line 413
    return-void
.end method

.method public screenShot()V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 503
    const-string v0, "screenShot"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->screenshot:Lcom/zqhy/sdk/c/a;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/zqhy/sdk/c/a;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zqhy/sdk/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->screenshot:Lcom/zqhy/sdk/c/a;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->screenshot:Lcom/zqhy/sdk/c/a;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/zqhy/sdk/ui/JavaScriptinterface$12;

    invoke-direct {v3, p0}, Lcom/zqhy/sdk/ui/JavaScriptinterface$12;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;)V

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/zqhy/sdk/c/a;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;ZZ)V

    .line 513
    return-void
.end method

.method public setCallBack(Lcom/zqhy/sdk/callback/SDKCallBack;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    .line 86
    return-void
.end method

.method public setSdkData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSdkData\nmobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nauth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 473
    new-instance v0, Lcom/zqhy/sdk/utils/i;

    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->spName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/zqhy/sdk/utils/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 475
    const-string v1, "mobile"

    invoke-virtual {v0, v1, p1}, Lcom/zqhy/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "auth"

    invoke-virtual {v0, v1, p2}, Lcom/zqhy/sdk/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public telCall(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telCall  phone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->dial(Landroid/content/Context;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 680
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 684
    :goto_0
    return-void

    .line 683
    :cond_0
    const-string v0, "Toast failed , because mActivity is null!"

    invoke-static {v0}, Lcom/alipay/sdk/util/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public wechatZqhyPay(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 842
    invoke-static {p1}, Lcom/zqhy/sdk/pay/wechat/b;->a(Lorg/json/JSONObject;)Lcom/zqhy/sdk/pay/wechat/b;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/zqhy/sdk/ui/JavaScriptinterface;->isWeixinAvilible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 845
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    const-string v1, "\u60a8\u8fd8\u672a\u5b89\u88c5\u5fae\u4fe1\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    if-eqz v0, :cond_0

    .line 851
    invoke-static {}, Lcom/zqhy/sdk/pay/wechat/a;->a()Lcom/zqhy/sdk/pay/wechat/a;

    move-result-object v1

    iget-object v2, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/pay/wechat/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/zqhy/sdk/pay/wechat/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/zqhy/sdk/pay/wechat/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public wxPay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 331
    const-string v0, "wxPay"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/zqhy/sdk/ui/JavaScriptinterface;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/zqhy/sdk/ui/JavaScriptinterface$9;

    invoke-direct {v1, p0, p1}, Lcom/zqhy/sdk/ui/JavaScriptinterface$9;-><init>(Lcom/zqhy/sdk/ui/JavaScriptinterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method
