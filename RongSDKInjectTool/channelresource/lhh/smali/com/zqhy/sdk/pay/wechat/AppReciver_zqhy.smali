.class public Lcom/zqhy/sdk/pay/wechat/AppReciver_zqhy;
.super Landroid/content/BroadcastReceiver;
.source "AppReciver_zqhy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
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
    .line 98
    const-string v0, ""

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
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

    .line 101
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
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

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    const-string v1, "callback_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p1, p3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 95
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const v7, 0x9004

    .line 27
    const-string v0, "AppReciver_zqhy"

    invoke-static {v0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 29
    const-string v0, "out_trade_no"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v0, "return_code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v2, "return_msg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v3, ""

    .line 34
    sget-object v4, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    if-eqz v4, :cond_3

    .line 35
    const-string v3, "SUCCESS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 37
    const-string v2, "state"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "msg"

    const-string v3, "ok"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "data"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-direct {p0, v0}, Lcom/zqhy/sdk/pay/wechat/AppReciver_zqhy;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 42
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0, v1}, Lcom/zqhy/sdk/callback/PayCallBack;->onPaySuccess(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0, v0, v2, v7}, Lcom/zqhy/sdk/pay/wechat/AppReciver_zqhy;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v1, "FAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 49
    const-string v1, "state"

    const-string v3, "-1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "msg"

    const-string v3, "fail"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "data"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0, v0}, Lcom/zqhy/sdk/pay/wechat/AppReciver_zqhy;->a(Ljava/util/Map;)Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0, v2}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v1, "CANCEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 57
    const-string v1, "state"

    const-string v2, "1099"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "msg"

    const-string v2, "cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-direct {p0, v0}, Lcom/zqhy/sdk/pay/wechat/AppReciver_zqhy;->a(Ljava/util/Map;)Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->sdkCallBack:Lcom/zqhy/sdk/callback/SDKCallBack;

    check-cast v0, Lcom/zqhy/sdk/callback/PayCallBack;

    invoke-interface {v0}, Lcom/zqhy/sdk/callback/PayCallBack;->onPayCancel()V

    goto :goto_0

    .line 65
    :cond_3
    sget-object v2, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-static {v2}, Lcom/zqhy/sdk/model/a;->a(Landroid/content/Context;)Lcom/zqhy/sdk/model/a;

    move-result-object v2

    const-string v4, "BUOY_WXPAY"

    invoke-virtual {v2, v4}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v4, "BuoyPay-Wx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file : buoy_out_trade_no : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v4, "SUCCESS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "BuoyPay-Wx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "succeed : out_trade_no : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    const-string v0, "BuoyPay-Wx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "succeed : buoy_wx_out_trade_no : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-virtual {v0}, Lcom/zqhy/sdk/ui/H5WebActivity;->reload()V

    .line 73
    const-string v0, "BuoyPay-Wx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "succeed : buoy_wx_out_trade_no : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 75
    :cond_4
    sget-object v0, Lcom/zqhy/sdk/ui/H5WebActivity;->activity:Lcom/zqhy/sdk/ui/H5WebActivity;

    invoke-direct {p0, v0, v3, v7}, Lcom/zqhy/sdk/pay/wechat/AppReciver_zqhy;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
