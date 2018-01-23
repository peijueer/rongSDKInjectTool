.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aA:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/j;->aA:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/j;->aA:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/i;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->o()V

    .line 456
    return-void
.end method
