.class public Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;
.super Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/a/a/a;


# instance fields
.field private aa:Z

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:I

.field private ai:Z

.field private aj:Landroid/webkit/WebView;

.field private ak:Ljava/util/Map;

.field private al:I

.field private am:Ljava/util/Timer;

.field private an:Ljava/util/TimerTask;

.field private final ao:I

.field private ap:Landroid/app/AlertDialog;

.field private appId:Ljava/lang/String;

.field private aq:Landroid/os/Bundle;

.field private ar:Ljava/lang/Thread;

.field private as:Lcom/ipaynow/wechatpay/plugin/e/b;

.field private loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

.field private mhtOrderNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aa:Z

    .line 47
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ab:Z

    .line 48
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ac:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ad:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ae:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->af:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ag:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ah:I

    .line 56
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    .line 57
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    .line 58
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ak:Ljava/util/Map;

    .line 59
    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->al:I

    .line 62
    const/16 v0, 0x2710

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ao:I

    .line 63
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 64
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    .line 65
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aq:Landroid/os/Bundle;

    .line 66
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ar:Ljava/lang/Thread;

    .line 67
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->as:Lcom/ipaynow/wechatpay/plugin/e/b;

    .line 44
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 254
    if-nez p3, :cond_0

    .line 255
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 259
    :goto_0
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->al:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->al:I

    .line 260
    return-void

    .line 257
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->m()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ah:I

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ak:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->am:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/util/TimerTask;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->an:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ab:Z

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    return-void
.end method

.method static synthetic b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ad:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ah:I

    return v0
.end method

.method static synthetic c(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 264
    invoke-static {p1}, Lcom/ipaynow/wechatpay/plugin/utils/g;->y(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "weixin"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v0, v1

    .line 282
    :cond_1
    :goto_0
    return v0

    .line 267
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 270
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    goto :goto_0

    .line 272
    :catch_0
    move-exception v2

    iput-boolean v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    .line 273
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->m()V

    .line 275
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    sget-object v2, Lcom/ipaynow/wechatpay/plugin/conf/b;->o:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u5fae\u4fe1 \u672a\u5b89\u88c5"

    invoke-static {p0, v2, v3}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 277
    iput-boolean v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->n()V

    return-void
.end method

.method static synthetic e(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ac:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->af:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    return-object v0
.end method

.method static synthetic g(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ag:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->af:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ak:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic k(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->am:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic l(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->an:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic m(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->al:I

    return v0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->n()V

    .line 532
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->o()V

    .line 533
    return-void
.end method

.method static synthetic n(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ac:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 538
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ab:Z

    return v0
.end method

.method static synthetic p(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aa:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V
    .locals 2

    .prologue
    .line 121
    invoke-static {p1}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 122
    iget v0, p1, Lcom/ipaynow/wechatpay/plugin/c/c/a/a;->W:I

    packed-switch v0, :pswitch_data_0

    .line 131
    :pswitch_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    sget-object v0, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 125
    :pswitch_1
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;

    invoke-direct {v0, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/k;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 134
    :goto_1
    invoke-interface {v0, p1}, Lcom/ipaynow/wechatpay/plugin/c/c/b/a/a;->b(Lcom/ipaynow/wechatpay/plugin/c/c/a/a;)V

    goto :goto_0

    .line 128
    :pswitch_2
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    invoke-direct {v0, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    goto :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ad:Ljava/lang/String;

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ag:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d\u5fae\u4fe1"

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    .line 141
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    .line 142
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 144
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->setContentView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ad:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ak:Ljava/util/Map;

    .line 148
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ak:Ljava/util/Map;

    const-string v1, "Referer"

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->af:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ad:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ak:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    new-instance v1, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-direct {v1, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 251
    :cond_0
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 541
    const-string v0, "closeLoading"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V

    .line 545
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 495
    const-string v0, "onBackPressed"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 497
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 71
    if-eqz p1, :cond_1

    .line 72
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aq:Landroid/os/Bundle;

    .line 76
    :goto_0
    const-string v0, "\u8fdb\u5165\u5fae\u4fe1\u901a\u77e5\u9875\u9762"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 77
    invoke-super {p0, p1}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    :try_start_0
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Landroid/app/Activity;)V

    .line 80
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->w()Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/ipaynow/wechatpay/plugin/view/f;

    invoke-direct {v0, p0}, Lcom/ipaynow/wechatpay/plugin/view/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    :goto_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    instance-of v0, v0, Lcom/ipaynow/wechatpay/plugin/view/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v1

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    check-cast v0, Lcom/ipaynow/wechatpay/plugin/view/f;

    invoke-virtual {v1, v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Lcom/ipaynow/wechatpay/plugin/view/f;)V

    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    const-string v1, "\u5b89\u5168\u73af\u5883\u626b\u63cf"

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aa:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aq:Landroid/os/Bundle;

    const-string v1, "requestParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ae:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->requestWindowFeature(I)Z

    .line 83
    const v0, 0x103007f

    invoke-virtual {p0, v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->setTheme(I)V

    .line 84
    new-instance v0, Lcom/ipaynow/wechatpay/plugin/e/b;

    invoke-direct {v0, p0}, Lcom/ipaynow/wechatpay/plugin/e/b;-><init>(Lcom/ipaynow/wechatpay/plugin/a/a/a;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->as:Lcom/ipaynow/wechatpay/plugin/e/b;

    .line 85
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->as:Lcom/ipaynow/wechatpay/plugin/e/b;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/e/b;->i(Ljava/lang/String;)V

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/g;

    invoke-direct {v1, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/g;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ar:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ar:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_2
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aq:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 80
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->w()Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/c/b/a;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 86
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;

    invoke-direct {v1, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ar:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ar:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->as:Lcom/ipaynow/wechatpay/plugin/e/b;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->as:Lcom/ipaynow/wechatpay/plugin/e/b;

    iput-object v1, v0, Lcom/ipaynow/wechatpay/plugin/e/b;->bA:Lcom/ipaynow/wechatpay/plugin/a/a/a;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->dismiss()V

    .line 522
    :cond_3
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aj:Landroid/webkit/WebView;

    .line 523
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    .line 524
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ap:Landroid/app/AlertDialog;

    .line 525
    iput-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->as:Lcom/ipaynow/wechatpay/plugin/e/b;

    .line 526
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->a(Z)V

    .line 527
    invoke-super {p0}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->onDestroy()V

    .line 528
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 485
    packed-switch p1, :pswitch_data_0

    .line 490
    invoke-super {p0, p1, p2}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 487
    :pswitch_0
    const-string v0, "\u70b9\u51fb\u4e86HOME"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 488
    const/4 v0, 0x1

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 508
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 509
    invoke-super {p0}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->onPause()V

    .line 510
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 469
    invoke-super {p0}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->onResume()V

    .line 470
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 471
    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aa:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ah:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ah:I

    .line 475
    iget v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ah:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    const-string v1, "\u4ea4\u6613\u67e5\u8be2\u4e2d"

    invoke-interface {v0, v1}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->setLoadingMsg(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->loading:Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;

    invoke-interface {v0}, Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;->show()Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->as:Lcom/ipaynow/wechatpay/plugin/e/b;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->mhtOrderNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/e/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ai:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    const-string v0, "requestParams"

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->ae:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 501
    invoke-super {p0}, Lcom/nearme/atlas/offlinepay/application/ui/activities/BaseActivity;->onStop()V

    .line 502
    const-string v0, "\u5fae\u4fe1\u901a\u77e5Activity\u7ed3\u675f"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->aa:Z

    .line 504
    return-void
.end method
