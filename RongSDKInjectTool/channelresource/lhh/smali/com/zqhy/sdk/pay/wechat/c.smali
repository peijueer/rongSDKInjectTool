.class public Lcom/zqhy/sdk/pay/wechat/c;
.super Ljava/lang/Object;
.source "ZqhyWXpay.java"


# static fields
.field private static b:Lcom/zqhy/sdk/pay/wechat/c;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/zqhy/sdk/pay/wechat/c;->a:Landroid/app/Activity;

    .line 18
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/zqhy/sdk/pay/wechat/c;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/zqhy/sdk/pay/wechat/c;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/pay/wechat/c;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/zqhy/sdk/pay/wechat/c;->b:Lcom/zqhy/sdk/pay/wechat/c;

    .line 22
    sget-object v0, Lcom/zqhy/sdk/pay/wechat/c;->b:Lcom/zqhy/sdk/pay/wechat/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    const-string v1, "com.zqhy.safepay"

    const-string v2, "com.zqhy.safepay.wechatpay.PayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v1, "package"

    iget-object v2, p0, Lcom/zqhy/sdk/pay/wechat/c;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v1, "wx_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v1, "out_trade_no"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "orientation"

    iget-object v2, p0, Lcom/zqhy/sdk/pay/wechat/c;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    iget-object v1, p0, Lcom/zqhy/sdk/pay/wechat/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
