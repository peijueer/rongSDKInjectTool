.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

.field private final synthetic av:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    iput-object p2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->av:Ljava/util/ArrayList;

    .line 170
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 174
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->j(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/c;

    iget-object v2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->av:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/c;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 181
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->av:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 182
    if-ge v0, v3, :cond_0

    .line 183
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    new-instance v2, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/d;

    invoke-direct {v2, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/d;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;)V

    invoke-virtual {v1, v2}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->k(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->k(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 196
    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->k(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 199
    :cond_0
    if-ne v0, v3, :cond_1

    .line 200
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->k(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->k(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 202
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/b;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->k(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 205
    :cond_1
    return-void
.end method
