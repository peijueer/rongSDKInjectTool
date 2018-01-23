.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

.field private final synthetic ax:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    iput-object p2, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->ax:Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u68c0\u6d4b\u662f\u5426\u8df3\u8f6c url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n currentUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->d(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \nloadFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->m(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n output = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->n(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->ax:Ljava/lang/String;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->d(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "\u672a\u8df3\u8f6c\u5230weixin://"

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/d/b;->b(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v0

    new-instance v1, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/f;

    invoke-direct {v1, p0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/f;-><init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;)V

    invoke-virtual {v0, v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    :cond_0
    return-void
.end method
