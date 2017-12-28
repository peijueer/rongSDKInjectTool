.class final Lcom/unionpay/sdk/m$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/sdk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field a:I

.field b:Lcom/unionpay/sdk/m$j;

.field c:Lcom/unionpay/sdk/m$g;

.field d:Lcom/unionpay/sdk/m$c;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/sdk/m$i;->a:I

    return-void
.end method


# virtual methods
.method public final messagePack(Lcom/unionpay/sdk/p;)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->b(I)Lcom/unionpay/sdk/p;

    iget v0, p0, Lcom/unionpay/sdk/m$i;->a:I

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    iget v0, p0, Lcom/unionpay/sdk/m$i;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown TMessageType"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/sdk/m$i;->c:Lcom/unionpay/sdk/m$g;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Lcom/unionpay/sdk/o;)Lcom/unionpay/sdk/p;

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/unionpay/sdk/m$i;->b:Lcom/unionpay/sdk/m$j;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Lcom/unionpay/sdk/o;)Lcom/unionpay/sdk/p;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/unionpay/sdk/m$i;->d:Lcom/unionpay/sdk/m$c;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Lcom/unionpay/sdk/o;)Lcom/unionpay/sdk/p;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
