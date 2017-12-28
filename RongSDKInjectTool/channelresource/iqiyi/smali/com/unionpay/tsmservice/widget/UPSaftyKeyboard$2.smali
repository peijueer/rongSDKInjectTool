.class final Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;


# direct methods
.method constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$2;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTsmConnected()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$2;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$2;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->g(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    invoke-static {v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->h(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V

    return-void
.end method

.method public final onTsmDisconnected()V
    .locals 0

    return-void
.end method
