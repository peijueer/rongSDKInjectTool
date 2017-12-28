.class final Lcom/unionpay/sdk/l;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/unionpay/sdk/ba;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/sdk/ba;

    invoke-static {v0}, Lcom/unionpay/sdk/g;->a(Lcom/unionpay/sdk/ba;)Lcom/unionpay/sdk/ba;

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v0

    iget v7, v0, Lcom/unionpay/sdk/ba;->i:I

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/sdk/ba;->f:[B

    if-nez v0, :cond_1

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    invoke-static {}, Lcom/unionpay/sdk/g;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/sdk/w;->b:Z

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/sdk/ba;->a:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/sdk/ba;->b:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v3

    iget-object v3, v3, Lcom/unionpay/sdk/ba;->c:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v4

    iget-object v4, v4, Lcom/unionpay/sdk/ba;->e:Ljava/lang/String;

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v5

    iget-object v5, v5, Lcom/unionpay/sdk/ba;->f:[B

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v6

    iget-object v6, v6, Lcom/unionpay/sdk/ba;->g:Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/sdk/g;->b()Lcom/unionpay/sdk/ba;

    move-result-object v8

    iget-boolean v8, v8, Lcom/unionpay/sdk/ba;->h:Z

    invoke-static/range {v0 .. v8}, Lcom/unionpay/sdk/g;->a(Lcom/unionpay/sdk/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
