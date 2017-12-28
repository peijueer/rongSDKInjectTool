.class Lcom/arcsoft/hpay100/config/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/arcsoft/hpay100/config/k;

.field private final synthetic b:Lcom/arcsoft/hpay100/config/b;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/k;Lcom/arcsoft/hpay100/config/b;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/l;->a:Lcom/arcsoft/hpay100/config/k;

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/l;->b:Lcom/arcsoft/hpay100/config/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/l;->b:Lcom/arcsoft/hpay100/config/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/l;->b:Lcom/arcsoft/hpay100/config/b;

    sget-object v1, Lcom/arcsoft/hpay100/config/c;->B:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/config/b;->onFinsh(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
