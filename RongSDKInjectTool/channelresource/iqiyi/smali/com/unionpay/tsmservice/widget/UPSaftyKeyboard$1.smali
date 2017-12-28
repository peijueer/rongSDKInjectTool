.class final Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;


# direct methods
.method constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnShowListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnShowListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnShowListener;->onShow()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->b(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnHideListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->b(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnHideListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnHideListener;->onHide()V

    :cond_1
    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->c(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/OnSafetyKeyboardCallback$Stub;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->d(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnEditorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;I)I

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->d(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnEditorListener;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$1;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->e(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$OnEditorListener;->onEditorChanged(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
