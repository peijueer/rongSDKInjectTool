.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ay:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/f;->ay:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/f;->ay:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v0

    sget-object v1, Lcom/ipaynow/wechatpay/plugin/conf/b;->j:Lcom/ipaynow/wechatpay/plugin/conf/b;

    invoke-virtual {v1}, Lcom/ipaynow/wechatpay/plugin/conf/b;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5fae\u4fe1\u652f\u4ed8\u94fe\u63a5\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 235
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/f;->ay:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/e;->au:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/a;)Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 236
    return-void
.end method
