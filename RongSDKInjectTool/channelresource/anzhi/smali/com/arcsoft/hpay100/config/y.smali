.class Lcom/arcsoft/hpay100/config/y;
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
.method public run()V
    .locals 1

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->e()Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->e()Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;->onTimeout()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/w;->a(Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;)V

    :cond_0
    return-void
.end method
