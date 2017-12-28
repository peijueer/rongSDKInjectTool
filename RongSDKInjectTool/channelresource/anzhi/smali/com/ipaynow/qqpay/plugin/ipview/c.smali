.class final Lcom/ipaynow/qqpay/plugin/ipview/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic al:Ljava/util/ArrayList;

.field final synthetic am:Lcom/ipaynow/qqpay/plugin/ipview/b;


# direct methods
.method constructor <init>(Lcom/ipaynow/qqpay/plugin/ipview/b;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/ipaynow/qqpay/plugin/ipview/c;->am:Lcom/ipaynow/qqpay/plugin/ipview/b;

    iput-object p2, p0, Lcom/ipaynow/qqpay/plugin/ipview/c;->al:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ipaynow/qqpay/plugin/ipview/c;->al:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ipaynow/qqpay/plugin/ipview/c;->am:Lcom/ipaynow/qqpay/plugin/ipview/b;

    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/ipview/b;->a(Lcom/ipaynow/qqpay/plugin/ipview/b;)Lcom/ipaynow/qqpay/plugin/ipview/a;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/ipview/a;->a(Lcom/ipaynow/qqpay/plugin/ipview/a;)Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;->b(Lcom/ipaynow/qqpay/plugin/ipview/QQPayAndNotifyView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
