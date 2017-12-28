.class final Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic az:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/g;


# direct methods
.method constructor <init>(Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/h;->az:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/g;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/h;->az:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/g;

    iget-object v0, v0, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/g;->at:Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;

    invoke-virtual {v0}, Lcom/ipaynow/wechatpay/plugin/inner_plugin/wechat_plugin/activity/WeChatNotifyActivity;->o()V

    .line 429
    return-void
.end method
