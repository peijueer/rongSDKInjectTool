.class Lcom/arcsoft/hpay100/config/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/arcsoft/hpay100/config/e;

.field private final synthetic b:Lcom/arcsoft/hpay100/config/b;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/e;Lcom/arcsoft/hpay100/config/b;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/f;->a:Lcom/arcsoft/hpay100/config/e;

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/f;->b:Lcom/arcsoft/hpay100/config/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/f;->b:Lcom/arcsoft/hpay100/config/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/f;->b:Lcom/arcsoft/hpay100/config/b;

    sget-object v1, Lcom/arcsoft/hpay100/config/c;->y:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/config/b;->onFinsh(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
