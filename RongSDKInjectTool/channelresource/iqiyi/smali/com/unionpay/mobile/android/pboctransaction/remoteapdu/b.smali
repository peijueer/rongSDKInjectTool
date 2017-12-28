.class final Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/b;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/b;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/b;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_0
    .end packed-switch
.end method
