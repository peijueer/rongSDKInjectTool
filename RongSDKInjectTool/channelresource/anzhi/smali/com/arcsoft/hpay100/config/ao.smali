.class Lcom/arcsoft/hpay100/config/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/config/ar;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/ao;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/ao;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/ao;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/arcsoft/hpay100/config/ao;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/config/ao;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/arcsoft/hpay100/config/ao;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/arcsoft/hpay100/config/ao;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public chanage()V
    .locals 4

    const-string v0, "dalongTest"

    const-string v1, "submit chanage"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/config/ao;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/hpay100/config/ao;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/arcsoft/hpay100/config/ao;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/arcsoft/hpay100/config/ao;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/config/al;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/arcsoft/hpay100/config/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->a()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->b()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->c()Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/arcsoft/hpay100/config/al;->c()Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;->onChange(Lcom/arcsoft/hpay100/config/ac;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/al;->a(Lcom/arcsoft/hpay100/HPaySMSXTCodeCallBack;)V

    :cond_0
    return-void
.end method
