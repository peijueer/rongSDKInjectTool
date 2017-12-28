.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/n;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/n;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 326
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->I()Lcom/ipaynow/wechatpay/plugin/manager/route/a;

    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/n;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/manager/route/a;->c(Landroid/app/Activity;)V

    .line 327
    invoke-static {}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->r()Lcom/ipaynow/wechatpay/plugin/manager/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/manager/a/a;->clearAll()V

    .line 328
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/n;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->b(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 329
    return-void
.end method
