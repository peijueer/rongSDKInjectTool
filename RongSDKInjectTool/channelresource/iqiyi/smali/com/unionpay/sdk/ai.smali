.class final Lcom/unionpay/sdk/ai;
.super Ljava/lang/ThreadLocal;


# instance fields
.field final synthetic a:Lcom/unionpay/sdk/ah;


# direct methods
.method constructor <init>(Lcom/unionpay/sdk/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/sdk/ai;->a:Lcom/unionpay/sdk/ah;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
