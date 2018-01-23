.class Lcom/arcsoft/hpay100/config/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/arcsoft/hpay100/config/z;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/config/z;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/aa;->a:Lcom/arcsoft/hpay100/config/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->d()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->e()Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "dalongTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onChange mYzm---:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->e()Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;

    move-result-object v0

    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;->onChange(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/w;->a(Lcom/arcsoft/hpay100/HPaySMSCodeCallBack;)V

    :cond_0
    invoke-static {}, Lcom/arcsoft/hpay100/config/w;->f()V

    return-void
.end method
