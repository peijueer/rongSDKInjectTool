.class final Lcom/unionpay/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/unionpay/sdk/u;->a()Lcom/unionpay/sdk/u;

    invoke-static {}, Lcom/unionpay/sdk/s;->a()Lcom/unionpay/sdk/s;

    invoke-static {}, Lcom/unionpay/sdk/ah;->a()Lcom/unionpay/sdk/ah;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/ah;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/unionpay/sdk/w;->b()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sput-object v0, Lcom/unionpay/sdk/ab;->d:Ljava/nio/channels/FileChannel;

    invoke-static {}, Lcom/unionpay/sdk/w;->c()V

    invoke-static {}, Lcom/unionpay/sdk/w;->d()V

    return-void
.end method
