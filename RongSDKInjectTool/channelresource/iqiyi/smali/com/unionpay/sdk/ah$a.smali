.class final Lcom/unionpay/sdk/ah$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/unionpay/sdk/al;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/unionpay/sdk/al;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unionpay/sdk/ah$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/unionpay/sdk/ah$a;->b:Lcom/unionpay/sdk/al;

    return-void
.end method
