.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;
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
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->c(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;I)V

    .line 319
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    iget-object v1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    iget-object v1, v1, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->d(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->a(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;Ljava/lang/String;)Z

    .line 320
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/m;->aB:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/l;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-static {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->e(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;)V

    .line 321
    return-void
.end method
